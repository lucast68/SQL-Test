SELECT
	country,
    COUNT(user_id) AS number_of_registered_users
FROM
	Users
WHERE
	country = 'Finland'
	AND registration_timestamp >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
GROUP BY
	country
ORDER BY
	number_of_registered_users DESC;