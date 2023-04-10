SELECT 
    (SELECT COUNT(*) FROM cancao) AS cancoes,
    (SELECT COUNT(*) FROM artista) AS artistas,
    (SELECT COUNT(*) FROM album) AS albuns;
