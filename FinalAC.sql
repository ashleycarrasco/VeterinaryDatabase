/* Final submission
Ashley Carrasco
*/

-- lowercase to save time
-- #1
select invoice_number, invoice_date, payment_total as results
from invoices
where payment_total < 100
order by (invoice_total - payment_total - credit_total) desc;

-- #2
select invoice_number, invoice_total, invoice_date as transaction_date, vendor_name
from invoices i join vendors v
	on i.vendor_id = v.vendor_id
where vendor_city = 'Memphis'
order by i.invoice_total asc;

-- #3
select account_description, count(vendor_id) as number_of_vendors
from general_ledger_accounts gl join vendors v
	on gl.account_number = v.default_account_number
group by gl.account_number, gl.account_description
having count(vendor_id) > 1
order by number_of_vendors desc;

-- #4
select line_item_amount, line_item_description, invoice_date as transaction_date
from invoice_line_items il join invoices i
	on il.invoice_id = i.invoice_id
where line_item_amount > (
	select avg(line_item_amount) from invoice_line_items il join invoices i
	on il.invoice_id = i.invoice_id
)
order by line_item_amount desc;

-- #5 
create view invoices_500
(invoice_id, invoice_date, invoice_total, invoice_due_date)
as select invoice_id, invoice_date, invoice_total, invoice_due_date
from invoices i join terms t
	on i.terms_id = t.terms_id
where invoice_total > 500;

select * from invoices_500
where invoice_date > '2014-07-10';

-- #6
drop procedure if exists invoiceInsert;
DELIMITER //
create procedure invoiceInsert 
(
in invoice_number_param 	varchar(50),
in invoice_total_param 	decimal(9,2)
)

begin 
	declare sql_error_msg 	varchar(50);
    
    if (select 1 from invoices where invoice_number = invoice_number_param) then
    set sql_error_msg = 'Invoice number has to be unique.';
    signal sqlstate '23000'
	set message_text = sql_error_msg;
    end if;
    
    if invoice_total_param >= 50000 then
    set sql_error_msg = 'Invoice total has to be less than $50000.';
    signal sqlstate '23000'
	set message_text = sql_error_msg;
    end if;
    
    inert into invoices values ()
-- #7
drop trigger if exists insert_line_item_trigger;
DELIMITER //
create trigger insert_line_item_trigger
	after insert on invoice_line_items
    for each row
begin 
	update invoices
    set invoice_total = invoice_total + new.line_item_amount
	where invoice_id = new.invoice_id;
    
end //
delimiter ;

insert into invoice_line_items values (78, 2, 403, 1198.00, 'Catalog design');

select invoice_total 
from invoices
where invoice_id = 78;



