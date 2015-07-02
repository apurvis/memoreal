--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: memories; Type: TABLE; Schema: public; Owner: stardestroyer; Tablespace: 
--

CREATE TABLE memories (
    id integer NOT NULL,
    visitor_id integer,
    previous_memory_id integer,
    created_at timestamp without time zone,
    description character varying(255)
);


ALTER TABLE public.memories OWNER TO stardestroyer;

--
-- Name: memories_id_seq; Type: SEQUENCE; Schema: public; Owner: stardestroyer
--

CREATE SEQUENCE memories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.memories_id_seq OWNER TO stardestroyer;

--
-- Name: memories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stardestroyer
--

ALTER SEQUENCE memories_id_seq OWNED BY memories.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: stardestroyer; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO stardestroyer;

--
-- Name: visitors; Type: TABLE; Schema: public; Owner: stardestroyer; Tablespace: 
--

CREATE TABLE visitors (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.visitors OWNER TO stardestroyer;

--
-- Name: visitors_id_seq; Type: SEQUENCE; Schema: public; Owner: stardestroyer
--

CREATE SEQUENCE visitors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visitors_id_seq OWNER TO stardestroyer;

--
-- Name: visitors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stardestroyer
--

ALTER SEQUENCE visitors_id_seq OWNED BY visitors.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: stardestroyer
--

ALTER TABLE ONLY memories ALTER COLUMN id SET DEFAULT nextval('memories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: stardestroyer
--

ALTER TABLE ONLY visitors ALTER COLUMN id SET DEFAULT nextval('visitors_id_seq'::regclass);


--
-- Data for Name: memories; Type: TABLE DATA; Schema: public; Owner: stardestroyer
--

COPY memories (id, visitor_id, previous_memory_id, created_at, description) FROM stdin;
1	\N	\N	2013-12-14 22:04:40.404438	The first memory
2	\N	1	2013-12-14 22:05:10.499555	going out to eat on a rainy sunday
3	\N	2	2013-12-14 22:07:15.680452	crying in my sleep
4	\N	3	2013-12-14 22:07:29.255105	that girl 
5	\N	4	2013-12-14 22:07:52.04113	why I want to go back to that city
6	\N	5	2013-12-14 22:07:57.459402	that girl
7	\N	6	2013-12-14 22:08:04.318565	why I want to go back to that city
8	\N	2	2013-12-14 22:09:42.482925	speaking in tongues to my mother
9	\N	5	2013-12-14 22:34:34.665612	the color of the night air
10	\N	2	2013-12-14 22:47:51.170461	fireworks in the street
11	\N	7	2013-12-15 00:47:03.840958	how to bake bread
12	\N	4	2013-12-15 00:47:30.302512	this girl
13	\N	12	2013-12-15 00:52:22.717906	your mom
14	\N	10	2013-12-15 03:19:32.726713	attack ships on fire
15	\N	13	2013-12-15 03:22:22.155519	the ants. So many ants
16	\N	3	2013-12-15 04:53:54.546315	eating custard on 8th street
17	\N	2	2013-12-15 04:57:54.820281	smoking cigs in a diner in JC
18	\N	10	2013-12-15 04:58:56.440266	writing my first rails app
19	\N	4	2013-12-15 05:04:51.455732	that the other girl was better
20	\N	17	2013-12-15 20:03:06.658866	eating a turkey sandwich
21	\N	16	2013-12-15 20:18:08.745247	a giant gaping vagina enfolding the world within its roast beef curtains, slack, crenelated, taut in some places, twisted in others
22	\N	13	2013-12-15 20:20:07.157113	a cossack cleaved from anus to chin, his guts spilling onto the frosted morning grass, a great plume of steam and life force evaporating heaven-ward.
23	\N	22	2013-12-15 20:20:08.813095	
24	\N	13	2013-12-17 14:22:40.522975	Gustav Havel
25	\N	22	2013-12-21 17:57:53.876981	another evaporation -- across from the last woman like a pastor in a dwindling parish, standing at the locus for optimal audible projection, my audience waiting, and i with less and less and finally nothing to say. 
26	\N	14	2013-12-21 19:36:52.997788	life before the internet
27	\N	20	2013-12-21 21:46:57.664686	the smell of rain
28	\N	27	2013-12-21 21:47:18.474271	snowfall
29	\N	13	2013-12-24 21:03:43.268081	the taste of icicles.
30	\N	18	2013-12-30 15:21:35.515023	space
31	\N	30	2013-12-30 15:21:42.430892	
32	\N	23	2013-12-30 18:02:43.932595	.
33	\N	31	2013-12-31 06:48:49.752844	
34	\N	33	2013-12-31 06:48:53.267205	you
35	\N	34	2013-12-31 06:48:59.246787	all shit
36	\N	35	2013-12-31 06:49:03.978271	as 
37	\N	1	2014-01-06 17:55:38.11725	
38	\N	37	2014-01-06 17:55:42.45947	...
39	\N	38	2014-01-06 18:20:21.836149	the dentist
40	\N	39	2014-01-06 18:20:27.582647	the recptionist
41	\N	40	2014-01-06 18:20:32.572868	paper magazine
42	\N	41	2014-01-06 18:20:36.18844	artforum
43	\N	42	2014-01-06 18:20:42.173909	ps1
44	\N	43	2014-01-06 18:20:45.452014	chris and cosey
45	\N	44	2014-01-06 18:20:51.413925	throbbing gristle
46	\N	45	2014-01-06 18:20:58.290029	armageddon shop
47	\N	46	2014-01-06 18:21:10.218007	Spike's Junkyard Dogs
48	\N	47	2014-01-06 18:21:14.265132	Thayer St
49	\N	48	2014-01-06 18:21:17.317397	buskers
50	\N	49	2014-01-06 18:21:21.05705	Crass
51	\N	50	2014-01-06 18:21:26.251648	England
52	\N	43	2014-01-18 01:32:02.154352	bridge on the balcony, bridge at the train station.
53	\N	28	2014-01-24 19:05:32.279558	primrose
54	\N	53	2014-01-24 19:05:45.475732	camp
55	\N	54	2014-01-24 19:05:52.577721	camp
56	\N	19	2014-01-28 06:28:21.526976	which way the wind was blowing that afternoon
57	\N	56	2014-01-28 06:29:36.513442	huge plumes of smoke
58	\N	57	2014-01-28 06:30:01.612463	watching towers fall
59	\N	42	2014-01-28 07:21:55.467571	.
60	\N	59	2014-01-28 07:22:07.727998	uhkj
61	\N	2	2014-01-28 08:15:45.982626	the hostess at the diner in jersey city
62	\N	22	2014-01-30 20:55:53.727707	chicken
63	\N	47	2014-01-30 22:18:18.390365	Bratwurst
64	\N	6	2014-03-24 15:46:15.461857	you
65	\N	64	2014-03-24 15:46:23.001115	them
66	\N	65	2014-03-24 15:46:28.999959	trc
67	\N	6	2014-03-24 15:46:45.041637	you
68	\N	25	2014-03-25 21:02:30.963421	the bowl of baked apples
69	\N	45	2014-03-31 17:50:56.246858	
70	\N	69	2014-03-31 17:51:09.058844	arthur
71	\N	70	2014-03-31 17:51:15.741211	arthur
72	\N	25	2014-04-01 21:28:52.595054	what to say
73	\N	72	2014-04-01 21:29:02.654058	why I wanted to say that
74	\N	73	2014-04-01 21:29:13.870857	what the purpose of it all was
75	\N	74	2014-04-01 21:29:44.595153	I wanted to say - screw you! :-)
76	\N	75	2014-04-01 21:30:10.190693	nothing, nothing more. This was the end of it all. You must be having a lot of fun reading this.
77	\N	44	2014-05-03 02:27:56.778328	
78	\N	77	2014-05-03 02:27:57.927417	
79	\N	78	2014-05-03 02:27:59.596525	
80	\N	1	2014-05-18 12:31:53.692039	dog
81	\N	80	2014-05-18 12:32:04.462037	cat
82	\N	62	2014-05-21 00:20:27.41187	breasts
83	\N	82	2014-05-21 00:20:36.071172	late nights
84	\N	83	2014-05-21 00:20:43.259274	whiskey
85	\N	84	2014-05-21 00:20:51.819643	late nights
86	\N	85	2014-05-21 00:20:56.325261	whiskey
87	\N	86	2014-05-21 00:21:00.495633	im stuck!
88	\N	68	2014-06-13 18:45:08.056948	the spice
89	\N	88	2014-06-13 18:45:15.555778	to call
90	\N	89	2014-06-13 18:45:21.542442	your face
91	\N	90	2014-06-13 18:45:47.442307	the time we broke into the water tower
92	\N	47	2014-06-13 22:08:04.307982	Martha
93	\N	92	2014-06-13 22:08:34.307046	this
94	\N	78	2014-07-04 18:50:15.99743	42
95	\N	94	2014-07-04 18:50:21.416751	989
96	\N	16	2014-07-07 00:39:11.089385	pooping
97	\N	16	2014-07-07 00:39:12.053165	pooping
98	\N	30	2014-08-06 00:08:21.496745	infinity
99	\N	98	2014-08-06 00:08:24.409379	time
100	\N	99	2014-08-06 00:08:26.309475	space
101	\N	71	2014-08-11 13:45:58.09223	this shit
102	\N	101	2014-08-11 13:46:05.214728	more shit
103	\N	5	2014-08-13 23:24:49.135914	schnitzel
104	\N	103	2014-08-13 23:24:56.437141	chicken fingers
105	\N	104	2014-08-13 23:25:04.523771	conehead sundae
106	\N	105	2014-08-13 23:25:07.910913	coneheads
107	\N	106	2014-08-13 23:25:12.523403	france
108	\N	89	2014-08-14 23:20:26.056133	to write
109	\N	74	2014-08-30 22:33:13.819677	to comfort those in need
110	\N	38	2014-09-01 20:17:00.069671	purpose
111	\N	98	2014-09-01 20:17:33.092528	jonas
112	\N	110	2014-09-01 20:17:40.526585	actuality 
113	\N	8	2014-11-28 22:54:32.96679	that things went craz
114	\N	59	2014-12-12 17:55:38.156286	barry hoffman
115	\N	114	2014-12-12 17:55:49.080617	79 lorimer
116	\N	115	2014-12-12 17:56:05.338168	this is weird lol
117	\N	87	2015-01-28 22:08:28.428486	the shadows at dusk, slipping softly across a cold floor
118	\N	28	2015-02-02 19:04:45.030106	setting up pingdom to keep my heroku app from going idle by pinging it every once in a while
\.


--
-- Name: memories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stardestroyer
--

SELECT pg_catalog.setval('memories_id_seq', 118, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: stardestroyer
--

COPY schema_migrations (version) FROM stdin;
20131214150323
20131214150332
\.


--
-- Data for Name: visitors; Type: TABLE DATA; Schema: public; Owner: stardestroyer
--

COPY visitors (id, created_at, updated_at) FROM stdin;
\.


--
-- Name: visitors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stardestroyer
--

SELECT pg_catalog.setval('visitors_id_seq', 1, false);


--
-- Name: memories_pkey; Type: CONSTRAINT; Schema: public; Owner: stardestroyer; Tablespace: 
--

ALTER TABLE ONLY memories
    ADD CONSTRAINT memories_pkey PRIMARY KEY (id);


--
-- Name: visitors_pkey; Type: CONSTRAINT; Schema: public; Owner: stardestroyer; Tablespace: 
--

ALTER TABLE ONLY visitors
    ADD CONSTRAINT visitors_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: stardestroyer; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: stardestroyer
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM stardestroyer;
GRANT ALL ON SCHEMA public TO stardestroyer;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

