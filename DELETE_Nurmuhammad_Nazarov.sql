SELECT film_id
FROM film
WHERE title = 'Forsage';

DELETE FROM rental
WHERE inventory_id IN (
    SELECT inventory_id
    FROM inventory
    WHERE film_id = X
);

DELETE FROM inventory
WHERE film_id = X;

SELECT customer_id
FROM customer
WHERE first_name = 'Jafar'
AND last_name = 'Djurayev';

DELETE FROM payment WHERE customer_id = X;
DELETE FROM rental WHERE customer_id = X;
DELETE FROM address WHERE address_id = (SELECT address_id FROM customer WHERE customer_id = X);
