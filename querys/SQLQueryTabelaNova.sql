CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR(100),
    cidade VARCHAR(30),
    estado VARCHAR(2),
    cep VARCHAR(10),
    telefone VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    tipo_usuario VARCHAR(20)
);

CREATE TABLE Editora (
    id_editora INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Assunto (
    id_assunto INT PRIMARY KEY IDENTITY(1,1),
    descricao VARCHAR(200) NOT NULL
);

CREATE TABLE Autor (
    id_autor INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50)
);

CREATE TABLE Livro (
    id_livro INT PRIMARY KEY IDENTITY(1,1),
    titulo VARCHAR(100) NOT NULL,
    isbn VARCHAR(50) UNIQUE,
    quantidade_disponivel INT,
    id_editora INT,
    CONSTRAINT fk_livro_editora FOREIGN KEY(id_editora) REFERENCES Editora(id_editora)
);

CREATE TABLE Emprestimo (
    id_emprestimo INT PRIMARY KEY IDENTITY(1,1),
    data_emprestimo DATE,
    data_devolucao_prevista DATE,
    data_devolucao_real DATE,
    id_usuario INT,
    id_livro INT,
    CONSTRAINT fk_emprestimo_usuario FOREIGN KEY(id_usuario) REFERENCES Usuario(id_usuario),
    CONSTRAINT fk_emprestimo_livro FOREIGN KEY(id_livro) REFERENCES Livro(id_livro)
);

CREATE TABLE Reserva (
    id_reserva INT PRIMARY KEY IDENTITY(1,1),
    data_reserva DATE,
    id_usuario INT,
    id_livro INT,
    CONSTRAINT fk_reserva_usuario FOREIGN KEY(id_usuario) REFERENCES Usuario(id_usuario),
    CONSTRAINT fk_reserva_livro FOREIGN KEY(id_livro) REFERENCES Livro(id_livro)
);

CREATE TABLE Livro_Autor (
    id_livro_autor INT PRIMARY KEY IDENTITY(1,1),
    id_livro INT,
    id_autor INT,
    CONSTRAINT fk_livro_autor_livro FOREIGN KEY(id_livro) REFERENCES Livro(id_livro),
    CONSTRAINT fk_livro_autor_autor FOREIGN KEY(id_autor) REFERENCES Autor(id_autor)
);

CREATE TABLE Livro_Assunto (
    id_livro_assunto INT PRIMARY KEY IDENTITY(1,1),
    id_livro INT,
    id_assunto INT,
    CONSTRAINT fk_livro_assunto_livro FOREIGN KEY(id_livro) REFERENCES Livro(id_livro),
    CONSTRAINT fk_livro_assunto_assunto FOREIGN KEY(id_assunto) REFERENCES Assunto(id_assunto)
);
GO
