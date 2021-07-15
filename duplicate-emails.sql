select Email
from Person
group by Email
having count(Email) > 1;


# SELECT DISTINCT p1.Email
# FROM Person p1, Person p2
# WHERE p1.Email = p2.Email and p1.id != p2.id
