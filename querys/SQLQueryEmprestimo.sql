SELECT 
    e.id_emprestimo,
    u.nome AS nome_usuario,
    u.sobrenome AS sobrenome_usuario,
    l.titulo AS titulo_livro,
    e.data_emprestimo,
    e.data_devolucao_prevista,
    e.data_devolucao_real
FROM 
    Emprestimo e
JOIN 
    Usuario u ON e.id_usuario = u.id_usuario
JOIN 
    Livro l ON e.id_livro = l.id_livro
ORDER BY 
    e.data_emprestimo DESC;
