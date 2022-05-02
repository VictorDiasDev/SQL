-- EXERCÍCIOS SQL BÁSICO

#1) Quero como resultado uma tabela que contenha o id, país e estado de todos os nossos clientes.

SELECT
    id,
    country,
    state
FROM e_commerce.customers;

#2)Selecione os preços distintos de nossos produtos, mas ordenados de forma decrescente, utilizando o DISTINCT e ORDER BY.

SELECT DISTINCT
    price
FROM e_commerce.products
ORDER BY 1 DESC;

#3) Retorne a data (naquele formato ANO-MÊS-DIA) de criação dos primeiros 5 registros da tabela customers.

SELECT
    DATE(created_at) AS dia
FROM e_commerce.customers
limit 5;

#4) O time de marketing deseja fazer uma campanha em um estado específico. Para isso, eles te pedem os e-mails de todos os clientes que moram no Piauí.

SELECT
    email,
    state
FROM e_commerce.customers
WHERE state = 'Piauí';

# 5) Vá até a tabela items e retorne o campo ‘total_price’ de forma distinta, mas utilizando o GROUP BY.

SELECT
    total_price
FROM e_commerce.items 
GROUP BY 1;

# 6) Selecione todos os pedidos em que o status é cancelado OU entrega_pendente. Retorne também o mesmo resultado, mas utilizando o operador IN.

SELECT
    *   
FROM e_commerce.orders
WHERE status IN ('cancelado', 'entrega_pendente');

# 7) Retorne todos os registros em que o campo ‘additionals’ é nulo na tabela customers.

SELECT 
    *
FROM e_commerce.customers
WHERE additionals IS NULL;

# 8) Utilize o join para trazer a informação de status do pedido juntamente das informações (colunas) da tabela de itens.

SELECT 
  items.*,
  pedidos.status
FROM 
  e_commerce.items AS items
INNER JOIN 
  e_commerce.orders AS pedidos
ON
  items.order_id = pedidos.id;

# 9) Na tabela de pedidos, além das colunas existentes, quero também informações de nome do cliente e seu telefone.

SELECT
    pedidos.*,
    CONCAT(clientes.first_name, " ", clientes.last_name) AS nome_completo,
    clientes.cell_phone,
FROM
     e_commerce.orders AS pedidos
JOIN
     e_commerce.customers AS clientes
ON
    clientes.id = pedidos.customer_id;

# 10) DESAFIO: Pesquise sobre o comando like e retorne os nomes dos produtos que tenham somente 4 caracteres.

SELECT
    name
FROM e_commerce.products
WHERE name LIKE "__";