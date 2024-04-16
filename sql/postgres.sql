CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    salario DECIMAL(10, 2),
    idade INT
);

CREATE TABLE areas (
    id_area SERIAL PRIMARY KEY,
    area_funcionario VARCHAR(100)
);

ALTER TABLE funcionarios
ADD COLUMN area_id INT,
ADD CONSTRAINT fk_area_id FOREIGN KEY (area_id) REFERENCES areas(id_area);

ALTER TABLE pedidos
ADD COLUMN status VARCHAR(20) DEFAULT 'pendente';

ALTER TABLE pedidos
ADD COLUMN id_funcionario INT,
ADD CONSTRAINT fk_id_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario);


drop table pizzas_cardapio;

ALTER TABLE pedidos
ADD COLUMN ingrediente VARCHAR(100);

ALTER TABLE pedidos
ADD COLUMN entrega VARCHAR(20) DEFAULT 'disponivel';

ALTER TABLE funcionarios
ADD COLUMN supervisores VARCHAR(100) DEFAULT 'Chefe do Departamento';

ALTER TABLE pedidos
ADD COLUMN tamanho VARCHAR(20) DEFAULT 'Grande';

ALTER TABLE pedidos
ADD COLUMN promocao VARCHAR(20) DEFAULT 'Sim';

CREATE TABLE horarios_funcionamento (
    hora_abertura TIME DEFAULT '07:30',
    hora_fechamento TIME DEFAULT '22:00'
);