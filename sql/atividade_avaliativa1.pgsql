select * from clientes;
select * from pedidos;
select * from funcionarios;
select * from areas;

INSERT INTO clientes (id_cliente, nome, cpf, email, senha)
VALUES 
  (5, 'Maria Silva', '123.456.789-10', 'maria@example.com', 'senha123'),
  (6, 'João Oliveira', '987.654.321-00', 'joao@example.com', 'senha456'),
  (7, 'Ana Souza', '111.222.333-44', 'ana@example.com', 'senha789'),
  (8, 'Carlos Santos', '555.666.777-88', 'carlos@example.com', 'senhaABC'),
  (9, 'Amanda Pereira', '999.888.777-66', 'amanda@example.com', 'senhaXYZ');

INSERT INTO pedidos (id_pedido, id_cliente, quantidade, data_pedido, valor_total, sabor_pizza)
VALUES
  (7, 7, 2, '2024-04-16', 45.50, 'Calabresa'),
  (8, 8, 1, '2024-04-15', 20.00, 'Margherita'),
  (9, 9, 3, '2024-04-14', 60.00, 'Quatro Queijos');

DELETE FROM pedidos;

INSERT INTO pedidos (id_pedido, id_cliente, quantidade, data_pedido, valor_total, sabor_pizza, status, id_funcionario)
VALUES
    (1, 1, 2, '2024-04-16', 45.50, 'Calabresa', 'pendente', 1),
    (2, 2, 1, '2024-04-15', 20.00, 'Margherita', 'pendente', 2),
    (3, 3, 3, '2024-04-14', 60.00, 'Quatro Queijos', 'pendente', 3),
    (4, 4, 1, '2024-04-13', 25.00, 'Pepperoni', 'pendente', 4),
    (5, 5, 2, '2024-04-12', 40.00, 'Frango com Catupiry', 'pendente', 5),
    (6, 6, 3, '2024-04-11', 55.00, 'Calabresa', 'pendente', 1),
    (7, 7, 1, '2024-04-10', 20.00, 'Margherita', 'pendente', 2),
    (8, 8, 2, '2024-04-09', 35.00, 'Portuguesa', 'pendente', 3),
    (9, 9, 3, '2024-04-08', 50.00, 'Quatro Queijos', 'pendente', 4),
    (10, 10, 1, '2024-04-07', 25.00, 'Pepperoni', 'pendente', 5);


DELETE FROM pedidos
WHERE id_pedido IN (SELECT id_pedido FROM pedidos ORDER BY id_pedido DESC LIMIT 5);

INSERT INTO funcionarios (id_funcionario, nome, cargo, salario, idade, area_id) VALUES
    (1, 'Maria Silva', 'Gerente de Vendas', 5000.00, 35, 1),
    (2, 'João Oliveira', 'Analista de Marketing', 4000.00, 28, 2),
    (3, 'Ana Souza', 'Desenvolvedor de Software', 6000.00, 32, 3),
    (4, 'Carlos Santos', 'Analista Financeiro', 4500.00, 40, 4),
    (5, 'Amanda Pereira', 'Assistente Administrativo', 3000.00, 25, 5);

INSERT INTO areas (area_funcionario) VALUES
    ('Vendas'),
    ('Marketing'),
    ('Desenvolvimento'),
    ('Financeiro'),
    ('Administrativo');


delete from pedidos;

INSERT INTO pedidos (id_pedido, id_cliente, quantidade, data_pedido, valor_total, sabor_pizza, status, id_funcionario, ingrediente)
VALUES
   (1, 1, 2, '2024-04-16', 45.50, 'Calabresa', 'pendente', 1, 'Molho de tomate, calabresa, cebola, queijo'),
   (2, 2, 1, '2024-04-15', 20.00, 'Margherita', 'pendente', 2, 'Molho de tomate, muçarela, tomate, manjericão'),
   (3, 3, 3, '2024-04-14', 60.00, 'Quatro Queijos', 'pendente', 3, 'Molho de tomate, muçarela, provolone, parmesão, gorgonzola'),
   (4, 4, 1, '2024-04-13', 25.00, 'Pepperoni', 'pendente', 4, 'Molho de tomate, pepperoni, muçarela'),
   (5, 5, 2, '2024-04-12', 40.00, 'Frango com Catupiry', 'pendente', 5, 'Molho de tomate, frango desfiado, catupiry'),
   (6, 1, 3, '2024-04-11', 55.00, 'Calabresa', 'pendente', 1, 'Molho de tomate, calabresa, cebola, queijo'),
   (7, 2, 1, '2024-04-10', 20.00, 'Margherita', 'pendente', 2, 'Molho de tomate, muçarela, tomate, manjericão'),
   (8, 3, 2, '2024-04-09', 35.00, 'Portuguesa', 'pendente', 3, 'Molho de tomate, presunto, muçarela, ovos, cebola, ervilha, azeitona, tomate'),
   (9, 4, 3, '2024-04-08', 50.00, 'Quatro Queijos', 'pendente', 4, 'Molho de tomate, muçarela, provolone, parmesão, gorgonzola'),
   (10, 5, 1, '2024-04-07', 25.00, 'Pepperoni', 'pendente', 5, 'Molho de tomate, pepperoni, muçarela');


-- primeira lista
-- exercício 1
select pedidos.sabor_pizza, clientes.nome, pedidos.valor_total, pedidos.data_pedido, clientes.cpf
from clientes inner join pedidos on clientes.id_cliente = pedidos.id_pedido;


-- exercicio 2 
select clientes.nome, pedidos.id_cliente, pedidos.sabor_pizza, pedidos.quantidade, pedidos.valor_total
from clientes inner join pedidos on clientes.id_cliente = pedidos.id_pedido;

-- exercicio 3
select funcionarios.nome, funcionarios.cargo, funcionarios.salario, areas.area_funcionario
from funcionarios inner join areas on id_funcionario = id_area;

-- exercicio 4
select funcionarios.nome, pedidos.status, pedidos.sabor_pizza
from pedidos inner join funcionarios on pedidos.id_pedido = funcionarios.id_funcionario;

-- exercicio 5
select clientes.nome, pedidos.sabor_pizza
from clientes inner join pedidos on clientes.id_cliente = pedidos.id_pedido;

-- exercicio 6
select pedidos.sabor_pizza, pedidos.ingrediente
from pedidos inner join clientes on clientes.id_cliente = pedidos.id_pedido;

-- exercicio 7
select pedidos.id_pedido, pedidos.entrega
from pedidos inner join clientes on clientes.id_cliente = pedidos.id_pedido;

-- exercicio 8
select funcionarios.nome, funcionarios.supervisores
from funcionarios inner join pedidos on funcionarios.id_funcionario = pedidos.id_pedido;

-- exercicio 9
select pedidos.sabor_pizza, pedidos.tamanho
from pedidos inner join clientes on pedidos.id_pedido = clientes.id_cliente;

-- exercicio 10
select pedidos.sabor_pizza, pedidos.promocao
from pedidos inner join clientes on pedidos.id_pedido = clientes.id_cliente;

-- segunda lista
-- exercicio 1
SELECT * from clientes;

-- exercicio 2
select data_pedido from pedidos
where data_pedido >= '2001-08-08';

-- exercicio 3
select sabor_pizza from pedidos
where pedidos.sabor_pizza = 'Calabresa';

-- exercicio 4
SELECT id_cliente, SUM(valor_total) AS total_gasto
FROM pedidos
WHERE id_cliente = '1'
GROUP BY id_cliente;

-- exercicio 5
SELECT sabor_pizza, COUNT(*) AS total_pedidos
FROM pedidos
GROUP BY sabor_pizza
ORDER BY total_pedidos DESC;

-- exercicio 6
SELECT COUNT(*) AS pizzas_disponiveis
FROM pedidos
WHERE entrega = 'disponivel';

-- exercicio 7
select * from funcionarios;

-- exercicio 8
SELECT hora_abertura, hora_fechamento
FROM horarios_funcionamento;

-- exercicio 9
SELECT status
FROM pedidos
WHERE status = 'pendente';

-- exercicio 10
SELECT AVG(EXTRACT(EPOCH FROM (NOW() - data_pedido))) / 60 AS tempo_medio_espera_minutos
FROM pedidos
WHERE status = 'pendente';
