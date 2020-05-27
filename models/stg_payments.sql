select id as payment_id
    , "orderID" as order_id
    , "paymentMethod" as payment_method
    , amount/100::decimal(16,5) as payment_amount
    , created
    , _batched_at
from raw.stripe.payment
