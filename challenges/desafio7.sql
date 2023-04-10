SELECT 
    artista.nome_artista AS artista, 
    album.nome_album AS album, 
    COUNT(seguindo_artistas.pessoa_usuaria_id) AS pessoas_seguidoras 
FROM 
    seguindo_artistas 
    JOIN artista ON seguindo_artistas.artista_id = artista.artista_id 
    JOIN album ON album.artista_id = artista.artista_id 
GROUP BY 
    artista.artista_id, album.album_id 
ORDER BY 
    pessoas_seguidoras DESC, 
    artista.nome_artista, 
    album.nome_album

