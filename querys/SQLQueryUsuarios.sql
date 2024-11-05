SELECT 
    id_usuario,
    nome,
    sobrenome,
    data_nascimento,
    endereco,
    cidade,
    estado,
    cep,
    telefone,
    email,
    tipo_usuario
FROM 
    Usuario
ORDER BY 
    nome ASC;
