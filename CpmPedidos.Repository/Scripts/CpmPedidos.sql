SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;


COPY public.tb_cidade (id, nome, uf, ativo, criado_em) FROM stdin;
1	São Paulo	SP	t	2021-01-11 10:00:00
2	Belo Horizonte	MG	t	2021-01-11 10:00:00
3	Jundiai	SP	t	2021-01-11 10:00:00
4	Bauru	SP	t	2021-01-11 10:00:00
5	Campinas	SP	t	2021-01-11 10:00:00
6	Uberlândia	MG	t	2021-01-11 10:00:00
7	Mariana	MG	t	2021-01-11 10:00:00
8	Rio de Janeiro	RJ	t	2021-01-11 10:00:00
9	Petropolis	RJ	t	2021-01-11 10:00:00
10	Resende	RJ	t	2021-01-11 10:00:00
11	Saquarema	RJ	t	2021-01-11 10:00:00
\.
SELECT pg_catalog.setval('public.tb_cidade_id_seq', 11, true);


COPY public.tb_categoria_produto (id, nome, ativo, criado_em) FROM stdin;
1	Hamburgeres	t	2021-01-11 10:00:00
2	Pizzas	t	2021-01-11 10:00:00
3	Refrigerantes	t	2021-01-11 10:00:00
4	Sucos	t	2021-01-11 10:00:00
5	Alimentação Saudável	t	2021-01-11 10:00:00
\.
SELECT pg_catalog.setval('public.tb_categoria_produto_id_seq', 5, true);


COPY public.tb_endereco (id, tipo, logradouro, bairro, numero, complemento, cep, id_cidade, criado_em) FROM stdin;
1	0	Rua Joanna Dark	Mascarenhas	777	\N	18023040	1	2021-01-11 10:00:00
2	0	Av Santos Dummont	Centro Histórico	218	\N	23048163	4	2021-01-11 10:00:00
3	0	Av Rio Branco	Centro	2708	\N	23048100	4	2021-01-11 10:00:00
4	0	Av Dr Arnaldo	Pacaembu	218	\N	21000120	3	2021-01-11 10:00:00
5	0	Rua Piauí	Pacaembu	108	\N	21000127	3	2021-01-11 10:00:00
6	0	Rua da Consolação	Alana	701	\N	78567102	2	2021-01-11 10:00:00
7	0	Rua Grajaú	Higienópolis	3400	\N	78567102	2	2021-01-11 10:00:00
\.
SELECT pg_catalog.setval('public.tb_endereco_id_seq', 7, true);


COPY public.tb_cliente (id, nome, id_endereco, criado_em, cpf, ativo) FROM stdin;
1	ClienteA	1	2021-01-11 10:00:00	74474437004	t
2	ClienteB	2	2021-01-11 10:00:00	96732682075	t
3	ClienteC	3	2021-01-11 10:00:00	87167123072	t
4	ClienteD	4	2021-01-11 10:00:00	99218074040	t
5	ClienteE	5	2021-01-11 10:00:00	23060218056	t
6	ClienteF	6	2021-01-11 10:00:00	18542584007	t
7	ClienteG	7	2021-01-11 10:00:00	61704530016	t
\.
SELECT pg_catalog.setval('public.tb_cliente_id_seq', 7, true);


COPY public.tb_imagem (id, nome, nome_arquivo, principal, criado_em) FROM stdin;
1	Produto1	foto1.jpg	t	2021-01-11 10:00:00
2	Produto2	foto2.jpg	t	2021-01-11 10:00:00
3	Produto3	foto3.jpg	t	2021-01-11 10:00:00
4	Produto4	foto4.jpg	t	2021-01-11 10:00:00
5	Produto5	foto5.jpg	t	2021-01-11 10:00:00
6	Produto6	foto6.jpg	t	2021-01-11 10:00:00
7	Produto7	foto7.jpg	t	2021-01-11 10:00:00
8	Produto8	foto8.jpg	t	2021-01-11 10:00:00
9	Produto9	foto9.jpg	t	2021-01-11 10:00:00
10	Produto10	foto10.jpg	t	2021-01-11 10:00:00
11	Produto11	foto11.jpg	t	2021-01-11 10:00:00
12	Produto12	foto12.jpg	t	2021-01-11 10:00:00
13	Produto13	foto13.jpg	t	2021-01-11 10:00:00
14	Produto14	foto14.jpg	t	2021-01-11 10:00:00
15	combo1	foto15.jpg	t	2021-01-11 10:00:00
16	combo2	foto16.jpg	t	2021-01-11 10:00:00
17	promocao1	foto17.jpg	t	2021-01-11 10:00:00
18	promocao2	foto18.jpg	t	2021-01-11 10:00:00
\.
SELECT pg_catalog.setval('public.tb_imagem_id_seq', 18, true);


COPY public.tb_produto (id, nome, codigo, descricao, preco, id_categoria, ativo, criado_em) FROM stdin;
1	Pizza Elefante I	PEI		70.00	2	t	2021-01-11 10:00:00
2	Pizza Elefante II	PEII		85.00	2	t	2021-01-11 10:00:00
3	Pizza Elefante III	PEIII		110.00	2	t	2021-01-11 10:00:00
4	Hamburger Jumbo	HBJ		18.00	1	t	2021-01-11 10:00:00
5	X Bacon	HBXB		15.50	1	t	2021-01-11 10:00:00
6	X Salada	HBXS		9.70	1	t	2021-01-11 10:00:00
7	Coca Cola	RFCC		8.50	3	t	2021-01-11 10:00:00
8	Fanta Laranja	RFFL		7.00	3	t	2021-01-11 10:00:00
9	Suco de Uva	SCUV		9.50	4	t	2021-01-11 10:00:00
10	Suco de Laranja	SCLJ		7.00	4	t	2021-01-11 10:00:00
11	Suco de Limão	SCLM		5.00	4	t	2021-01-11 10:00:00
12	Filé de Peixe	FLPX		17.50	5	t	2021-01-11 10:00:00
13	Filé de Frango ao molho de limão	FLFR		14.00	5	t	2021-01-11 10:00:00
14	Camarão ao Alho e Azeite	CMALAZ		27.00	5	t	2021-01-11 10:00:00
\.
SELECT pg_catalog.setval('public.tb_produto_id_seq', 14, true);


COPY public.tb_imagem_produto (id_imagem, id_produto) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
14	14
\.


COPY public.tb_combo (id, nome, preco, id_imagem, ativo, criado_em) FROM stdin;
1	Burg Fator X	20.00	15	t	2021-01-11 10:00:00
2	Elefantinho	70.00	16	t	2021-01-11 10:00:00
\.
SELECT pg_catalog.setval('public.tb_combo_id_seq', 2, false);


COPY public.tb_produto_combo (id_combo, id_produto) FROM stdin;
1	5
1	7
2	1
2	7
\.


COPY public.tb_promocao_produto (id, nome, preco, id_imagem, id_produto, ativo, criado_em) FROM stdin;
1	Burg da Segunda	8.00	17	6	t	2021-01-11 10:00:00
2	Burg da Terça	15.00	18	4	t	2021-01-11 10:00:00
\.
SELECT pg_catalog.setval('public.tb_promocao_produto_id_seq', 2, false);


COPY public.tb_pedido (id, numero, valor_total, entrega, id_cliente, criado_em) FROM stdin;
1	00001	26.50	00:30:03	1	2021-01-07 10:00:00
2	00002	26.50	00:27:00	1	2021-01-10 10:00:00
3	00003	117.50	00:45:00	1	2021-01-11 10:00:00
4	00004	72.50	00:45:00	2	2021-01-11 10:00:00
5	00005	33.40	00:45:00	2	2021-01-14 10:00:00
6	00006	159.50	00:45:00	2	2021-01-15 10:00:00
7	00007	47.00	00:45:00	2	2021-01-21 10:00:00
\.
SELECT pg_catalog.setval('public.tb_pedido_id_seq', 7, true);


COPY public.tb_produto_pedido (id, quantidade, preco, id_produto, id_pedido, criado_em) FROM stdin;
1	1	18.00	4	1	2021-01-07 10:00:00
2	1	8.50	7	1	2021-01-07 10:00:00
3	1	18.00	4	2	2021-01-10 10:00:00
4	1	8.50	7	2	2021-01-10 10:00:00
5	1	70.00	1	3	2021-01-11 10:00:00
6	5	9.50	9	3	2021-01-11 10:00:00
7	2	18.00	4	4	2021-01-11 10:00:00
8	1	15.50	5	4	2021-01-11 10:00:00
9	3	7.00	8	4	2021-01-11 10:00:00
10	2	7.00	10	5	2021-01-14 10:00:00
11	2	9.70	6	5	2021-01-14 10:00:00
12	1	85.00	2	6	2021-01-15 10:00:00
13	1	18.00	4	6	2021-01-15 10:00:00
14	5	8.50	7	6	2021-01-15 10:00:00
15	7	7.00	10	6	2021-01-15 10:00:00
16	2	17.50	12	7	2021-01-21 10:00:00
17	1	5.00	11	7	2021-01-21 10:00:00
18	1	7.00	10	7	2021-01-21 10:00:00
\.
SELECT pg_catalog.setval('public.tb_produto_pedido_id_seq', 18, false);

