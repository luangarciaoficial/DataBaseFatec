
CREATE TABLE cliente(
    CodCliente INT PRIMARY KEY, 
    Nome VARCHAR(45) not NULL,
    Cpf VARCHAR(45) NOT NULL UNIQUE,
    Sexo VARCHAR(20), 
    Estado VARCHAR(45),
    Cidade VARCHAR(45) DEFAULT 'Itapira',
    Numero VARCHAR(45),
    Rua VARCHAR(45),
    Telefonefixo VARCHAR(45), 
    telefoneCelular VARCHAR(45) Not NULL UNIQUE
)

CREATE TABLE Carro(
    CodCarro INT PRIMARY KEY,
    Placa VARCHAR(45),
    marca VARCHAR(45),
    modelo VARCHAR(45),
    Ano VARCHAR(45),
    Chassi VARCHAR(45),
    Cor VARCHAR(45)
)

CREATE TABLE Apolice(
    CodApolice INT PRIMARY KEY ,
    Valorcobertura DECIMAL NOT NULL,
    Valorfranquia DECIMAL NOT NULL,
    DatainicoVigencia DATE NOT NULL CHECK (DatainicoVigencia >= GETDATE()), 
    Datafimvigencia DATE NOT NULL, 
    cliente_codCliente INT NOT NULL,
    Carro_CodCarro INT NOT NULL,
    CONSTRAINT chk_DatainicoVigencia CHECK (DatainicoVigencia >= GETDATE()),
    FOREIGN KEY (cliente_codCliente) REFERENCES cliente(CodCliente),
    FOREIGN KEY (Carro_CodCarro) REFERENCES Carro(CodCarro)
)

CREATE TABLE Sinistro(
    CodSinistro INT ,
    HoraSinistro INT,
    Datasinistro DATE,
    LocalSinistro VARCHAR(45),
    Condutor VARCHAR(45),
    Carro_CodCarro INT,
    CONSTRAINT pj_sinistro PRIMARY KEY (CodSinistro, Carro_CodCarro),
    FOREIGN KEY (Carro_CodCarro) REFERENCES Carro(CodCarro)
)