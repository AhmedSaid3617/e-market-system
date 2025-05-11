--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account (password_hash, name, email, balance, account_id) FROM stdin;
$2b$12$cy2g9FOUBws2NPWvUA/ZlO8LXsrpabSevn1BtykJF/7lUcdTEJTy.	Shams Mohamed	user_2@example.com	19000.00	2
$2b$12$zq2jYNbBWZFu3mzx6Q2ycOs/67y1lJ4BvExrVSAju6lG/4MyTyVRe	Ahmed Said	hello@example.com	61000.00	1
\.


--
-- Data for Name: account_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_metadata (account_id, created_at, last_login) FROM stdin;
1	2025-05-11 16:07:52.349468	2025-05-11 16:09:15.524
2	2025-05-11 16:12:44.959773	2025-05-11 16:13:02.904
\.


--
-- Data for Name: account_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_preferences (account_id, language, theme, notifications_enabled) FROM stdin;
1	en	light	t
2	en	light	t
\.


--
-- Data for Name: money_transaction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.money_transaction (amount, "timestamp", account_id) FROM stdin;
6000.00	2025-05-11 16:16:48.620856	1
50000.00	2025-05-11 16:25:08.923727	1
-2000.00	2025-05-11 16:30:15.201231	1
-12000.00	2025-05-11 16:33:03.126176	1
19000.00	2025-05-11 16:33:14.677498	1
30000.00	2025-05-11 16:14:09.988208	2
-6000.00	2025-05-11 16:16:48.620856	2
2000.00	2025-05-11 16:30:15.201231	2
12000.00	2025-05-11 16:33:03.126176	2
-19000.00	2025-05-11 16:33:14.677498	2
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (product_id, picture_url, name, description, price, on_sale, creator_id) FROM stdin;
1	https://cairosales.com/96040-large_default/samsung-galaxy-a24-65-8gb-128gb-silver-sm-a245fslvbt.jpg	Samsung Phone	Samsung galaxy a24 with 6 GB of RAM.	6000.00	t	1
2	https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/A_Samsung_Refrigerator.jpg/500px-A_Samsung_Refrigerator.jpg	Fridge	A refrigerator, commonly shortened to fridge, is a commercial and home appliance consisting of a thermally insulated compartment and a heat pump (mechanical, electronic or chemical) that transfers heat from its inside to its external environment so that its inside is cooled to a temperature below the room temperature.	19000.00	t	1
3	https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Tektronix_Oscilloscope_475A.jpg/500px-Tektronix_Oscilloscope_475A.jpg	Oscilloscope	An oscilloscope (formerly known as an oscillograph, informally scope or O-scope) is a type of electronic test instrument that graphically displays varying voltages of one or more signals as a function of time.	10000.00	t	1
4	https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Hoodie_man.jpg/330px-Hoodie_man.jpg	Hoodie	A hoodie is a type of sweatshirt[1] with a hood that, when worn up, covers most of the head and neck, and sometimes the face.	500.00	t	1
5	https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/GuitareClassique5.png/330px-GuitareClassique5.png	Guitar	The guitar is a stringed musical instrument that is usually fretted (with some exceptions) and typically has six or twelve strings.	2000.00	t	2
6	https://image.oppo.com/content/dam/oppo/common/mkt/v2-2/reno13-series/list-page/reno13-pro-5g/purple.png	Oppo phone	Oppo smart phone	12000.00	t	2
7	https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Toyota_Mirai_%28JPD20%29_IMG_5303.jpg/500px-Toyota_Mirai_%28JPD20%29_IMG_5303.jpg	Toyota Car	Toyota Merai 2022	200000.00	t	2
\.


--
-- Data for Name: product_transfer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_transfer (date_time, buyer_id, product_id) FROM stdin;
2025-05-11 16:30:15.129	1	5
2025-05-11 16:33:03.074	1	6
2025-05-11 16:16:48.568	2	1
2025-05-11 16:33:14.622	2	2
\.


--
-- Name: account_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_account_id_seq', 2, true);


--
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_product_id_seq', 7, true);


--
-- PostgreSQL database dump complete
--

