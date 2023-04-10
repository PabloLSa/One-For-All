SELECT
       ROUND(MIN(p.valor_plano), 2) AS faturamento_minimo,
       ROUND(MAX(p.valor_plano), 2) AS faturamento_maximo,
       FORMAT(AVG(p.valor_plano), 2) AS faturamento_medio,
       ROUND(SUM(p.valor_plano), 2) AS faturamento_total

FROM `SpotifyClone`.plano AS p
INNER JOIN `SpotifyClone`.pessoa_usuaria AS pu ON  p.plano_id = pu.plano_id;






