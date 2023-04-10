SELECT c.nome_cancao AS cancao, COUNT(DISTINCT h.pessoa_usuaria_id) AS reproducoes
FROM cancao c
LEFT JOIN historico_de_reproducoes h ON c.cancao_id = h.cancao_id
GROUP BY c.cancao_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
