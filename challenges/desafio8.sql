SELECT
  artista.nome_artista AS artista,
  album.nome_album AS album
FROM
  artista
  JOIN album ON album.artista_id = artista.artista_id
WHERE
  artista.nome_artista = 'Elis Regina'
ORDER BY
  album.nome_album