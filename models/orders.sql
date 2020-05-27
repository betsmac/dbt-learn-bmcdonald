{{
  config(
    materialized='view'
  )
}}

select
    o.order_id,
    o.customer_id,
    sum( payment_amount ) as payment_amount
from {{ ref('stg_orders') }} as o
join {{ ref('stg_payments') }} as p
  on p.order_ID = o.order_ID
 group by  o.order_id, 
          o.customer_id
