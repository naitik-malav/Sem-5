.open assignment2.db
Select Count(Milliseconds),
case
when Milliseconds<60000 then 'short'
when Milliseconds>=60000 and Milliseconds<=300000 then 'medium'
when Milliseconds>300000 then 'long'
end as category
from tracks group by category;