INSERT INTO Usuario (nome, sobrenome, data_nascimento, endereco, cidade, estado, cep, telefone, email, tipo_usuario) VALUES
('Jo�o', 'Silva', '1990-05-15', 'Rua A, 123', 'Salvador', 'BA', '40000-000', '71999999999', 'joao.silva@email.com', 'leitor'),
('Maria', 'Oliveira', '1985-03-22', 'Rua B, 456', 'S�o Paulo', 'SP', '50000-000', '11988888888', 'maria.oliveira@email.com', 'autor'),
('Carlos', 'Souza', '1978-07-11', 'Rua C, 789', 'Rio de Janeiro', 'RJ', '60000-000', '21977777777', 'carlos.souza@email.com', 'editor'),
('Ana', 'Lima', '1992-01-01', 'Rua D, 321', 'Fortaleza', 'CE', '70000-000', '85999999999', 'ana.lima@email.com', 'leitor'),
('Pedro', 'Santos', '1980-10-05', 'Rua E, 654', 'Belo Horizonte', 'MG', '80000-000', '31988888888', 'pedro.santos@email.com', 'autor'),
('Lucas', 'Fernandes', '1988-08-08', 'Rua F, 987', 'Curitiba', 'PR', '90000-000', '41999999999', 'lucas.fernandes@email.com', 'editor'),
('Beatriz', 'Costa', '1995-12-12', 'Rua G, 111', 'Recife', 'PE', '10000-000', '81988888888', 'beatriz.costa@email.com', 'leitor'),
('Miguel', 'Mendes', '1983-05-15', 'Rua H, 222', 'Manaus', 'AM', '11000-000', '92977777777', 'miguel.mendes@email.com', 'autor'),
('Lara', 'Martins', '1977-03-03', 'Rua I, 333', 'Porto Alegre', 'RS', '12000-000', '51966666666', 'lara.martins@email.com', 'editor'),
('Rafael', 'Rocha', '1991-07-07', 'Rua J, 444', 'Bel�m', 'PA', '13000-000', '91955555555', 'rafael.rocha@email.com', 'leitor');

INSERT INTO Editora (nome) VALUES
('Editora Alpha'),
('Editora Beta'),
('Editora Gamma'),
('Editora Delta'),
('Editora Epsilon'),
('Editora Zeta'),
('Editora Eta'),
('Editora Theta'),
('Editora Iota'),
('Editora Kappa');

INSERT INTO Assunto (descricao) VALUES
('Literatura Brasileira'),
('Tecnologia'),
('Hist�ria'),
('Fic��o Cient�fica'),
('Romance'),
('Filosofia'),
('Psicologia'),
('Biografia'),
('Neg�cios'),
('Autoajuda');

INSERT INTO Assunto (descricao) VALUES
('Literatura Brasileira'),
('Tecnologia'),
('Hist�ria'),
('Fic��o Cient�fica'),
('Romance'),
('Filosofia'),
('Psicologia'),
('Biografia'),
('Neg�cios'),
('Autoajuda');

INSERT INTO Autor (nome, nacionalidade) VALUES
('Paulo Coelho', 'Brasileira'),
('Isabel Allende', 'Chilena'),
('Stephen King', 'Americana'),
('Machado de Assis', 'Brasileira'),
('J.K. Rowling', 'Brit�nica'),
('Agatha Christie', 'Brit�nica'),
('George Orwell', 'Brit�nica'),
('Gabriel Garc�a M�rquez', 'Colombiana'),
('J.R.R. Tolkien', 'Brit�nica'),
('Clarice Lispector', 'Brasileira');

INSERT INTO Livro (titulo, isbn, quantidade_disponivel, id_editora) VALUES
('O Alquimista', '978-85-325-0097-9', 5, 1),
('A Casa dos Esp�ritos', '978-85-7559-147-2', 3, 2),
('It - A Coisa', '978-85-7930-912-1', 7, 3),
('Dom Casmurro', '978-85-7790-541-2', 4, 4),
('Harry Potter e a Pedra Filosofal', '978-85-325-1001-2', 9, 5),
('Assassinato no Expresso do Oriente', '978-85-8132-187-3', 6, 6),
('1984', '978-85-9510-303-2', 8, 7),
('Cem Anos de Solid�o', '978-85-8290-812-4', 10, 8),
('O Senhor dos An�is', '978-85-325-0810-1', 5, 9),
('A Hora da Estrela', '978-85-2930-116-0', 4, 10);

INSERT INTO Emprestimo (data_emprestimo, data_devolucao_prevista, data_devolucao_real, id_usuario, id_livro) VALUES
('2024-11-01', '2024-11-15', NULL, 1, 1),
('2024-11-02', '2024-11-16', NULL, 2, 2),
('2024-11-03', '2024-11-17', NULL, 3, 3),
('2024-11-04', '2024-11-18', NULL, 4, 4),
('2024-11-05', '2024-11-19', NULL, 5, 5),
('2024-11-06', '2024-11-20', NULL, 6, 6),
('2024-11-07', '2024-11-21', NULL, 7, 7),
('2024-11-08', '2024-11-22', NULL, 8, 8),
('2024-11-09', '2024-11-23', NULL, 9, 9),
('2024-11-10', '2024-11-24', NULL, 10, 10);

INSERT INTO Reserva (data_reserva, id_usuario, id_livro) VALUES
('2024-11-05', 1, 2),
('2024-11-06', 2, 3),
('2024-11-07', 3, 1),
('2024-11-08', 4, 5),
('2024-11-09', 5, 4),
('2024-11-10', 6, 6),
('2024-11-11', 7, 8),
('2024-11-12', 8, 7),
('2024-11-13', 9, 9),
('2024-11-14', 10, 10);

INSERT INTO Livro_Autor (id_livro, id_autor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Livro_Assunto (id_livro, id_assunto) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

