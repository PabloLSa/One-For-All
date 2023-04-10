SELECT
  p.nome_pessoa_usuaria AS pessoa_usuaria,
  COUNT(h.cancao_id) AS musicas_ouvidas,
  ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM
  pessoa_usuaria p
  LEFT JOIN historico_de_reproducoes h ON p.pessoa_usuaria_id = h.pessoa_usuaria_id
  LEFT JOIN cancao c ON h.cancao_id = c.cancao_id
GROUP BY
  p.nome_pessoa_usuaria
ORDER BY
  p.nome_pessoa_usuaria ASC;