--https://www.beecrowd.com.br/judge/pt/problems/view/2996
SELECT
    p.year,
    u1.name AS sender,
    u2.name AS receiver
FROM
    packages p
    JOIN users u1 ON p.id_user_sender = u1.id
    JOIN users u2 ON p.id_user_receiver = u2.id
WHERE
    (
        p.color = 'blue'
        OR p.year = 2015
    )
    AND (
        u1.address != 'Taiwan'
        AND u2.address != 'Taiwan'
    )
ORDER BY
    p.year DESC;