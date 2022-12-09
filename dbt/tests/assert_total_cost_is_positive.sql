-- so the total cost should always be >= 0.
-- Therefore return records where this isn't true to make the test fail
select
    booking_reference,
    sum(cost) as total_cost
from {{ ref('combined_bookings' )}}
group by 1
having not(total_cost >= 0)