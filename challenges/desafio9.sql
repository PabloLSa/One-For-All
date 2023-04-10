SELECT COUNT(*) as musicas_no_historico
FROM historico_de_reproducoes hr
JOIN pessoa_usuaria pu ON hr.pessoa_usuaria_id = pu.pessoa_usuaria_id
WHERE pu.nome_pessoa_usuaria = 'Barbara Liskov';
