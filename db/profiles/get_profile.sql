SELECT uid, username, avatar, about 
FROM users
WHERE uid = ${id};

select u.uid, sum(likes)
from Questions q
join Users u on u.uid = q.owner_id
where u.uid = ${id}
group by u.uid