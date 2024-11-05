SELECT
	r.id_reserva,
	u.nome AS nome_usuario,
	u.sobrenome AS sobrenome_usuario,
	l.titulo AS titulo_livro,
	r.data_reserva 
FROM 
	Reserva r 
JOIN 
	Usuario u ON r.id_usuario = u.id_usuario 
JOIN 
	Livro l ON r.id_livro = l.id_livro 
ORDER BY
	r.data_reserva DESC;