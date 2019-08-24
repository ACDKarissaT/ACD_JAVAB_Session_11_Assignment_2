use session11;
-- a
select a.client_name, a.city
from client a;

-- b
select *
from product;

-- c
select client.client_name
from client
where client.client_name LIKE "_a%";

-- d
select *
from client
where client.city = 'TEZPUR';

-- e
select *
from product
where product.selling_price > 2000
and (product.selling_price < 5000
or product.selling_price = 5000);

-- f
alter table product add column new_price decimal(8,2);

-- g 
ALTER TABLE sales_order_details
RENAME COLUMN product_rate TO new_product_rate;

-- h
select *
from product
order by product.product_description asc;

-- i
select sales_order_number, sales_order_date
from transaction;

-- j
delete from transaction 
where delivery_date < '2008-08-25';

-- k
update transaction t
set t.delivery_date = '2016-08-08'
where t.sales_order_number = 'ON01008';

-- l
UPDATE client c
SET total_balance = 1200
where c.client_number = 'CN01003';

-- m
SELECT *
FROM product
WHERE product.product_description = "HDD1034"
OR product.product_description = "DVDRW";

-- n
SELECT client.client_name, client.city, client.state
FROM client
WHERE client.state <> 'ASSAM';

-- o
SELECT *
FROM `transaction` t
WHERE t.status = 'cancelled';