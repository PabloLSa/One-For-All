SELECT p.nome_pessoa_usuaria AS pessoa_usuaria, 
CASE 
  WHEN MAX(h.data_reproducao) >= '2021-01-01' THEN 'Ativa'
  ELSE 'Inativa'
END AS status_pessoa_usuaria
FROM pessoa_usuaria p
LEFT JOIN historico_de_reproducoes h ON p.pessoa_usuaria_id = h.pessoa_usuaria_id
GROUP BY p.pessoa_usuaria_id
ORDER BY p.nome_pessoa_usuaria ASC;
