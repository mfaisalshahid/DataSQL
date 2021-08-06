MySQL

SELECT name FROM customer WHERE referee_id <> 2 OR referee_id IS NULL;
or

SELECT name FROM customer WHERE referee_id != 2 OR referee_id IS NULL;
Tips

The following solution is also wrong for the same reason as mentioned above. The key is to always use IS NULL or IS NOT NULL operators to specifically check for NULL value.

SELECT name FROM customer WHERE referee_id = NULL OR referee_id <> 2;
