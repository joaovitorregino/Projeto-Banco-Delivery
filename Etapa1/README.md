# 1  DESCRIÇÃO DO PROJETO
	Este projeto visa criar uma plataforma de entrega de refeições, focada em administrar pedidos, consumidores, estabelecimentos, motoristas e transações financeiras.
	A ferramenta servirá para ordenar e otimizar as etapas de um serviço de delivery, permitindo o registro de usuários, locais de alimentação e itens disponíveis, além de supervisionar as encomendas feitas e as entregas concluídas.
	O aplicativo permitirá aos consumidores encomendar com facilidade, enquanto os estabelecimentos poderão organizar seus cardápios e monitorar os pedidos recebidos. Os entregadores serão associados às entregas para controle das atividades realizadas.
	A ferramenta também incluirá recursos para registrar pagamentos e verificar o andamento dos pedidos, promovendo mais organização, rapidez e segurança aos dados guardados.
	O objetivo deste trabalho é aplicar os princípios de criação de bancos de dados, conexões entre dados, organização e desenvolvimento de comandos SQL, usando um cenário real de negócios como base para o aprendizado prático na matéria de Projeto de Banco de Dados

# 2 DOCUMENTO DE REQUISITOS

**REQUISITOS FUNCIONAIS** 

RF01  – Cadastro de Clientes
```
O sistema deverá permitir o cadastro de clientes contendo informações como nome, telefone, endereço e e-mail.
```
RF02 – Cadastro de Restaurantes
```
O sistema deverá permitir o cadastro de restaurantes, armazenando informações como nome, categoria, endereço e telefone.
```
RF03 – Cadastro de Produtos
```
O sistema deverá permitir que os restaurantes cadastrem produtos disponíveis para venda, contendo nome, descrição, preço e categoria.
```
RF04 – Cadastro de Entregadores
```
O sistema deverá permitir o cadastro de entregadores, registrando informações como nome, telefone e tipo de veículo utilizado.
```
RF05 – Realização de Pedidos
```
O sistema deverá permitir que os clientes realizem pedidos contendo um ou mais produtos cadastrados.
```
RF06 – Associação de Pedidos aos Entregadores
```
O sistema deverá associar cada pedido a um entregador responsável pela entrega.
```
RF07 – Controle de Status do Pedido
```
O sistema deverá permitir o acompanhamento do status do pedido, podendo estar como:
```
-	Em preparo
-	Saiu para entrega
-	Entregue
-	Cancelado
  
RF08 – Registro de Pagamentos
```
O sistema deverá registrar os pagamentos realizados pelos clientes, informando valor, forma de pagamento e data da transação.
```
RF09 – Consulta de Pedidos
```
O sistema deverá permitir a consulta de pedidos realizados pelos clientes, exibindo informações detalhadas sobre produtos, valores e status da entrega.
```
RF10 – Controle de Produtos por Restaurante
```
O sistema deverá relacionar os produtos cadastrados aos respectivos restaurantes responsáveis pela venda.
```
**Requisitos Não Funcionais**

RNF01 – Segurança dos Dados
```
O sistema deverá armazenar os dados de forma segura, garantindo a integridade das informações cadastradas.
```
RNF02 – Facilidade de Uso
```
O sistema deverá possuir uma estrutura simples e organizada para facilitar sua utilização.
```
RNF03 – Desempenho
```
O sistema deverá executar consultas e operações de cadastro em tempo adequado, evitando lentidão no processamento.
```
RNF04 – Disponibilidade
```
O sistema deverá permitir acesso às informações sempre que necessário durante sua utilização.
```
RNF05 – Organização do Banco de Dados
```
O banco de dados deverá seguir regras de normalização para evitar redundância e inconsistência de dados.
```
**Regras de Negócio**

RN01
```
Um cliente poderá realizar vários pedidos.
```
RN02
```
Cada pedido deverá possuir pelo menos um produto.
```
RN03
```
Cada pedido deverá estar associado a apenas um cliente.
```
RN04
```
Cada pedido deverá possuir apenas um entregador responsável.
```
RN05
```
Os produtos deverão estar vinculados a um restaurante.
```
RN06
```
O pagamento somente poderá ser registrado após a criação do pedido.
```
RN07
```
O status do pedido deverá ser atualizado conforme o andamento da entrega.
```

# 3 MODELO CONCEITUAL (DER) 

**Modelo Conceitual (DER)**

O modelo conceitual representa a estrutura do banco de dados de forma visual, demonstrando as entidades do sistema, seus atributos e os relacionamentos existentes entre elas.

Para o sistema de delivery, foram definidas as seguintes entidades principais:

-	Cliente
-	Restaurante
-	Produto
-	Pedido
-	Item_Pedido
-	Entregador
-	Pagamento 

Entidades e Atributos

**CLIENTE**

Representa os usuários que realizam pedidos no sistema.

Atributos
-	id_cliente (PK)
-	nome
-	telefone
-	email
-	endereco

**RESTAURANTE**

Representa os estabelecimentos cadastrados na plataforma.

Atributos
-	id_restaurante (PK)
-	nome
-	categoria
-	telefone
-	endereco

**PRODUTO**

Representa os produtos vendidos pelos restaurantes.

Atributos
-	id_produto (PK)
-	nome
-	descricao
-	preco
-	disponibilidade
-	id_restaurante (FK) 

**PEDIDO**

Representa os pedidos realizados pelos clientes.

Atributos
-	id_pedido (PK)
-	data_pedido
-	status
-	valor_total
-	id_cliente (FK)
-	id_entregador (FK) 

**ITEM_PEDIDO**

Representa os produtos presentes em cada pedido.

Atributos
-	id_item (PK)
-	quantidade
-	subtotal
-	id_pedido (FK)
-	id_produto (FK) 

**ENTREGADOR**

Representa os responsáveis pelas entregas.

Atributos
-	id_entregador (PK)
-	nome
-	telefone
-	veiculo
-	placa_veiculo

**PAGAMENTO**

Representa os pagamentos realizados pelos clientes.

Atributos
-	id_pagamento (PK)
-	forma_pagamento
-	valor_pago
-	data_pagamento
-	status_pagamento
-	id_pedido (FK) 

