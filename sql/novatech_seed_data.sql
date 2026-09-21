--
-- PostgreSQL database dump
--

\restrict tfxyBRnPg5mvIeIb8psGUj9odpQfWg7swMnK9BWMd7BWIHVcrBtIYBDu2K8wQDg

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-09-18 21:49:19

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
-- TOC entry 5048 (class 0 OID 16390)
-- Dependencies: 220
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customer_id, customer_name, email, country, signup_date, customer_segment) FROM stdin;
1	Allison Hill	donaldgarcia@example.net	United States	2024-11-27	Individual
2	Angie Henderson	davisjesse@example.net	Germany	2024-10-21	Individual
3	Cristian Santos	lrobinson@example.com	Germany	2025-03-21	Mid-Market
4	Abigail Shaffer	jpeterson@example.org	Germany	2024-12-18	Small Business
5	Gabrielle Davis	howardmaurice@example.com	United States	2024-07-17	Mid-Market
6	Monica Herrera	smiller@example.net	Germany	2023-06-05	Small Business
7	Shannon Ray	williamsjeremy@example.com	United States	2026-01-26	Small Business
8	Dr. Sharon James	xreid@example.org	Germany	2023-10-31	Enterprise
9	Daniel Adams	lynchgeorge@example.net	Canada	2026-06-09	Enterprise
10	Joel Nelson	gabriellecameron@example.org	Canada	2025-10-11	Enterprise
11	Andrew Stewart	carl95@example.org	Germany	2024-10-07	Small Business
12	Jennifer Rocha	ithomas@example.org	Australia	2025-11-13	Mid-Market
13	Kimberly Burgess	zhurst@example.com	United Kingdom	2025-12-06	Individual
14	Zachary Hicks	camposmichelle@example.org	United States	2024-03-03	Mid-Market
15	Rebecca Henderson	cruzcaitlin@example.com	Canada	2025-07-22	Mid-Market
16	Tricia Valencia	frazierdanny@example.net	United Kingdom	2023-08-01	Enterprise
17	Patricia Peterson	ryan70@example.net	Canada	2024-03-04	Mid-Market
18	Deborah Mason	williamrodriguez@example.net	United States	2024-09-16	Small Business
19	Mark Lynch	nathanielmartin@example.net	Canada	2026-06-02	Small Business
20	Linda Burns	hickmannatasha@example.com	Germany	2023-12-20	Mid-Market
21	David Bradley	millertodd@example.org	Germany	2026-05-04	Enterprise
22	Kim Martinez	karroyo@example.com	Canada	2025-03-21	Enterprise
23	Lisa Brandt	jenniferross@example.net	Canada	2024-08-13	Enterprise
24	Jessica Holmes	wrightcaleb@example.org	United States	2024-09-14	Small Business
25	Crystal Robinson	zimmermanbrian@example.org	Australia	2023-11-04	Enterprise
26	Shannon Jones	joshuawashington@example.net	Canada	2023-09-12	Enterprise
27	Timothy Duncan	esanchez@example.com	Canada	2025-10-12	Mid-Market
28	Brent Jordan	ujenkins@example.org	Germany	2024-07-16	Enterprise
29	Victoria Garcia	zchandler@example.org	Australia	2023-07-09	Small Business
30	Connor West	dwhite@example.org	Canada	2025-08-26	Mid-Market
31	Angela Morton	williamsyvette@example.org	Germany	2025-06-07	Mid-Market
32	Tammy Allison	richardolson@example.com	United Kingdom	2024-03-08	Individual
33	Carmen Smith	ybaker@example.com	Germany	2025-10-08	Enterprise
34	Michael Cross	smoore@example.org	Canada	2024-11-25	Individual
35	Lauren Daniels	brian97@example.net	Canada	2026-03-16	Enterprise
36	Kim Brown	yorkcasey@example.org	United Kingdom	2024-03-21	Mid-Market
37	Cynthia Wilson	bethwilliams@example.org	United States	2025-07-08	Enterprise
38	Kevin Mills	james53@example.com	Australia	2025-02-05	Enterprise
39	Michael Evans	sarah10@example.com	Germany	2025-02-13	Individual
40	Kristine Garcia	williamanderson@example.com	United Kingdom	2026-04-06	Enterprise
41	Sherry Wood	samueldaniels@example.com	Germany	2025-08-29	Individual
42	Victoria Valdez	contrerasangela@example.net	United Kingdom	2025-10-19	Enterprise
43	Shawn Baker	newtoneric@example.com	Canada	2023-12-16	Enterprise
44	Michelle Harris	william40@example.org	United States	2025-01-31	Mid-Market
45	Sandra Williams	kellie42@example.net	United States	2024-02-02	Small Business
46	Michael Hoffman	jonesnicole@example.org	United Kingdom	2024-04-24	Mid-Market
47	Sandra Aguilar	russellwilliams@example.com	United Kingdom	2023-10-16	Small Business
48	Rebecca Valencia	jason31@example.com	United Kingdom	2024-11-20	Individual
49	Stacey Russell	sarayoung@example.org	United Kingdom	2026-02-26	Individual
50	Rita Keith	whitesandra@example.com	United States	2023-09-21	Mid-Market
51	Sharon Cochran	erik16@example.org	Australia	2024-06-02	Enterprise
52	Courtney Velasquez	ybailey@example.org	Canada	2025-11-15	Small Business
53	Matthew Ross	michelle45@example.net	United Kingdom	2026-01-07	Mid-Market
54	Meghan Anthony	sheila14@example.org	United Kingdom	2023-08-15	Individual
55	Victoria Johnson	yreed@example.com	Australia	2024-01-28	Individual
56	William Wilson	jonathanfletcher@example.org	Australia	2023-11-11	Enterprise
57	Renee Mcdaniel	michaeljones@example.net	Canada	2023-12-06	Mid-Market
58	Lisa Alvarado	cortezkevin@example.com	United States	2025-02-12	Mid-Market
59	Erika Terry	jamesortega@example.com	Australia	2024-04-05	Individual
60	Stephanie Gilbert	richard04@example.com	Germany	2025-06-05	Enterprise
61	Richard Lawson	steven73@example.net	Canada	2024-06-12	Mid-Market
62	Steven Flynn	donnacampbell@example.net	Australia	2025-07-07	Enterprise
63	Frances Cardenas	emilywalker@example.org	United States	2023-06-25	Small Business
64	Angel Riggs	gibsonolivia@example.net	Australia	2023-09-12	Mid-Market
65	Michael Snyder	dylanwatts@example.org	Germany	2025-09-30	Individual
66	Colleen Brock	pwilliams@example.org	United Kingdom	2023-08-19	Individual
67	Robert Contreras	stephanie79@example.net	Australia	2024-10-03	Mid-Market
68	Jessica Meadows	vmerritt@example.com	United Kingdom	2025-09-19	Enterprise
69	Paul Larsen	katie87@example.net	Canada	2024-09-11	Mid-Market
70	Jeremiah Reeves	josephflores@example.net	Germany	2023-06-10	Mid-Market
71	Chris Reyes	jasminebrown@example.com	Australia	2025-09-23	Individual
72	John Brown	xprice@example.net	Australia	2024-08-11	Small Business
73	Alicia Gilmore	wwoods@example.com	Australia	2024-12-17	Enterprise
74	Sarah Ashley	vmedina@example.net	Australia	2024-08-17	Small Business
75	Stephanie Freeman	ryan06@example.com	Australia	2024-12-04	Mid-Market
76	Rebecca Ramsey	ncalhoun@example.net	Australia	2024-03-02	Small Business
77	James Elliott	millerroy@example.com	United Kingdom	2023-11-26	Mid-Market
78	David Murphy	wmurphy@example.com	United Kingdom	2024-10-03	Mid-Market
79	Trevor Fisher	ruizkaitlyn@example.org	Canada	2025-08-04	Enterprise
80	Mrs. Marie Harrington DDS	herringjames@example.org	Canada	2023-07-14	Mid-Market
81	Cynthia Wells	elliottjeffery@example.net	United States	2026-01-15	Small Business
82	Jacob Obrien	stricklandfrank@example.com	Germany	2024-05-01	Enterprise
83	Alexander Collins	tsanders@example.org	United States	2023-12-12	Individual
84	Michael Burton	terrykevin@example.net	Australia	2024-08-26	Mid-Market
85	Barbara Riggs	reedross@example.com	Germany	2023-06-08	Small Business
86	Matthew Smith	gshort@example.com	United Kingdom	2023-12-05	Individual
87	Madison Poole	ryangross@example.net	Australia	2023-10-06	Small Business
88	Robert Medina	umarshall@example.net	Germany	2024-08-24	Small Business
89	Samuel Rivas	ramirezshannon@example.com	United States	2024-02-09	Mid-Market
90	Mary Rogers	lrosales@example.com	United States	2026-05-31	Individual
91	Robert Peterson	angela83@example.org	Australia	2026-05-20	Enterprise
92	Jason Peters	hannahbrewer@example.com	Germany	2024-05-10	Individual
93	Alan Phillips	tholt@example.net	Australia	2024-12-05	Enterprise
94	Kara Schmidt	jbarajas@example.com	Canada	2023-08-23	Individual
95	Jesse Parker	davidlee@example.org	United Kingdom	2024-01-11	Enterprise
96	Tiffany Vaughn	javierwashington@example.net	United States	2024-01-13	Small Business
97	Paige Carlson	wallkenneth@example.com	Australia	2023-07-12	Small Business
98	Adrian Ferguson	brandon08@example.com	Canada	2025-11-06	Enterprise
99	Beth Oneill	agarcia@example.net	Australia	2024-08-15	Small Business
100	John Peterson	kingmichelle@example.org	Canada	2024-05-02	Enterprise
101	Jennifer Jones	hernandezlisa@example.com	Germany	2024-01-14	Mid-Market
102	David Grant	yobrien@example.net	Germany	2023-12-29	Individual
103	Joseph Hayes	levans@example.com	Australia	2024-08-05	Small Business
104	Marc Lynch	mezajared@example.org	United Kingdom	2023-11-19	Small Business
105	Brad Allen	moorericky@example.net	United Kingdom	2023-08-02	Small Business
106	Doris Hall	jacqueline71@example.net	Germany	2024-02-27	Enterprise
107	Dennis Moody	ronaldstephens@example.net	Germany	2025-10-23	Individual
108	Derek Thomas	martinkyle@example.net	Canada	2025-04-16	Small Business
109	Tammy Gonzales	sbarker@example.com	Canada	2025-08-18	Small Business
110	Kathryn Snyder	georgepamela@example.net	United Kingdom	2023-06-15	Individual
111	David Davis	keyemily@example.com	United States	2025-04-25	Enterprise
112	Pamela Thompson	lmoon@example.net	United States	2024-09-10	Individual
113	Robert Costa	vbailey@example.com	United States	2024-11-07	Small Business
114	Shannon Rivera	zroberts@example.net	Australia	2024-05-26	Enterprise
115	Brandon King	cordovarichard@example.net	Canada	2024-04-04	Mid-Market
116	April Booth	mgutierrez@example.net	Canada	2024-07-03	Enterprise
117	Peter Garrett	harrisandrea@example.com	Australia	2023-09-01	Individual
118	Michael Martinez	jennifercollins@example.org	Germany	2024-08-23	Small Business
119	Anna Gay	murraydavid@example.org	United Kingdom	2024-08-12	Mid-Market
120	Dr. Jordan Hill PhD	jsanchez@example.org	United States	2023-05-31	Small Business
121	Thomas Romero	michellehill@example.com	United States	2025-02-24	Individual
122	Richard Adams	campbellkenneth@example.net	Germany	2024-08-31	Mid-Market
123	Mary Grimes	wryan@example.com	Canada	2024-09-20	Enterprise
124	Kimberly Gibson	molly39@example.com	Canada	2026-05-20	Individual
125	Reginald Williams	zthornton@example.com	Germany	2026-04-04	Small Business
126	Matthew Hoover	tylerjohnson@example.net	Germany	2023-08-20	Mid-Market
127	Evelyn Garcia	dgarcia@example.org	Canada	2025-02-14	Small Business
128	Jennifer Pena	charlesharrington@example.com	United States	2025-03-22	Small Business
129	Michael Santos	melissa86@example.com	United Kingdom	2024-08-22	Mid-Market
130	Stacy Freeman	williamsonjimmy@example.net	United States	2025-01-04	Mid-Market
131	Yolanda Francis	wgood@example.net	United States	2024-10-18	Individual
132	Ashlee Jackson	rebecca05@example.org	Germany	2024-01-06	Small Business
133	James Thomas	yknight@example.org	Germany	2026-02-22	Small Business
134	Bob Pitts	tyleraguilar@example.org	United Kingdom	2023-12-14	Small Business
135	David Scott	nolansteven@example.com	Germany	2025-07-06	Small Business
136	Brooke Alexander	vanessa46@example.net	Australia	2024-08-15	Enterprise
137	Ryan Gonzalez	gcastaneda@example.org	United States	2025-11-19	Individual
138	Ian Phillips	andrew64@example.org	United States	2024-12-10	Enterprise
139	Melissa Garner	lozanojulie@example.com	United States	2023-12-22	Small Business
140	Crystal Pham	danaoliver@example.net	Australia	2025-06-15	Enterprise
141	Patricia Becker	courtneyberger@example.net	Australia	2026-05-26	Individual
142	Richard Johnson	jessica14@example.com	Canada	2024-10-03	Enterprise
143	Casey Anderson	alyssa42@example.com	United Kingdom	2024-08-17	Mid-Market
144	Terry Coffey	julie51@example.com	Canada	2024-06-09	Enterprise
145	Brenda Levy	zcoffey@example.net	United Kingdom	2024-08-04	Enterprise
146	Richard Smith	gibsonemily@example.net	Germany	2024-02-18	Mid-Market
147	James Little	daniel37@example.org	United Kingdom	2025-07-03	Small Business
148	Terri Murphy	deborahreid@example.com	Australia	2025-07-06	Mid-Market
149	Elizabeth Ortiz	brandonjohnson@example.com	Canada	2026-04-30	Small Business
150	David Medina	qchavez@example.net	Canada	2026-05-25	Small Business
151	Kimberly Matthews	nicolepena@example.com	United Kingdom	2024-06-10	Small Business
152	Teresa Ramirez	jeff73@example.com	United States	2025-02-25	Mid-Market
153	Michael Stephens	bruce43@example.org	United States	2025-09-03	Individual
154	Samantha Davis	darleneharper@example.org	Canada	2025-09-15	Individual
155	Gavin Zhang	caseyhubbard@example.org	Germany	2026-02-22	Small Business
156	Robin Hall	kristinacarlson@example.com	United States	2023-08-07	Mid-Market
157	Brianna Anderson	lauren10@example.org	United Kingdom	2023-07-10	Mid-Market
158	Richard Young	alfred40@example.org	United States	2023-12-04	Individual
159	Kelly Reese	xwest@example.net	Australia	2023-08-16	Mid-Market
160	Jodi Walker	acostaregina@example.net	United Kingdom	2024-06-22	Individual
161	Judith Maynard	lutzmelanie@example.com	United States	2023-11-30	Mid-Market
162	Katherine Browning	lammarc@example.org	Canada	2023-12-07	Mid-Market
163	Donald Schultz	oscar98@example.com	Germany	2026-03-24	Small Business
164	Larry Garcia	farrelldebra@example.net	Australia	2026-03-24	Small Business
165	Cindy Hayes	robertwilcox@example.com	Germany	2026-03-28	Mid-Market
166	Brandon Simmons	nicholas27@example.org	Australia	2024-10-28	Individual
167	Bradley Reynolds	lisa80@example.net	United States	2025-04-09	Mid-Market
168	Kristina Santiago	qgomez@example.com	United Kingdom	2024-05-28	Small Business
169	Michelle Schmitt	michael98@example.org	United Kingdom	2023-09-20	Mid-Market
170	John Boone	megan51@example.com	United States	2023-06-04	Mid-Market
171	Renee Bruce	lynchdiane@example.net	Canada	2023-07-27	Small Business
172	Christopher Park	sandra50@example.org	United States	2025-11-14	Mid-Market
173	Kylie Morales	joycebonilla@example.org	United Kingdom	2023-09-30	Enterprise
174	Cindy Barnes	eric45@example.net	Germany	2025-04-08	Enterprise
175	Sophia Moore	craigjoseph@example.net	Australia	2026-05-06	Enterprise
176	Lawrence Perry	kariwilson@example.com	Canada	2025-07-05	Mid-Market
177	Michael Watkins	brandon69@example.org	Canada	2026-03-26	Enterprise
178	Eric Clark	kathrynroberts@example.org	Germany	2023-09-30	Small Business
179	Paul Thompson	opatel@example.net	Germany	2025-11-07	Mid-Market
180	Mary Gomez	chensley@example.com	Australia	2024-07-20	Enterprise
181	Thomas Atkins	tberry@example.net	United States	2025-12-18	Small Business
182	Brian Smith	george97@example.net	Canada	2024-03-08	Enterprise
183	Anita Richard	ryanmorales@example.org	Germany	2023-09-27	Enterprise
184	Eric Morgan	kimberly18@example.net	United States	2025-01-21	Mid-Market
185	Jordan Bullock	michael23@example.org	Australia	2023-09-12	Mid-Market
186	Craig Morrison	thompsonkendra@example.com	Canada	2025-10-10	Enterprise
187	Justin Riley	michelle52@example.com	Australia	2024-05-25	Mid-Market
188	Jeremy Turner	brittany58@example.org	Australia	2023-09-21	Mid-Market
189	Jesse Brown	chase19@example.net	Australia	2024-07-09	Mid-Market
190	Julie Spencer	colelisa@example.net	Germany	2025-07-06	Enterprise
191	Larry Mason	hayeslisa@example.com	Canada	2023-12-19	Mid-Market
192	Mrs. Maria Williams	hritter@example.net	Australia	2023-11-21	Small Business
193	Helen Hardin	vortiz@example.net	Germany	2024-10-08	Enterprise
194	Rachel Holland	riveraangela@example.com	Canada	2024-10-28	Small Business
195	Nathaniel Douglas	mathewaguilar@example.org	United Kingdom	2025-08-18	Individual
196	Emily Douglas	tanderson@example.org	United States	2023-10-19	Small Business
197	James Conner	elizabethcalderon@example.net	Australia	2024-05-14	Small Business
198	Susan Davis DDS	andrew42@example.org	Germany	2024-10-18	Enterprise
199	Ralph Lee	ericphillips@example.org	Australia	2025-02-09	Mid-Market
200	Kimberly Rodgers	stanleynancy@example.net	United States	2025-09-21	Individual
201	James Martin	jenniferwilliams@example.com	Australia	2026-05-18	Individual
202	Cynthia Wallace	karen73@example.net	Australia	2025-11-09	Enterprise
203	Vincent Mueller	michealvalentine@example.com	Germany	2024-06-06	Mid-Market
204	Douglas Reyes	mburch@example.net	United States	2023-08-01	Mid-Market
205	David Davidson	angela18@example.org	Germany	2023-09-18	Small Business
206	Phillip Nelson	mariahdavis@example.org	Germany	2025-10-10	Enterprise
207	Stacey Arias	gbrown@example.com	United Kingdom	2025-08-14	Enterprise
208	Zachary Brooks	florescory@example.net	Germany	2023-07-06	Small Business
209	Raven Taylor	samantha72@example.net	Germany	2023-12-24	Small Business
210	Luis Bullock	scottmary@example.net	United States	2023-12-05	Mid-Market
211	Lisa Henderson	john10@example.org	Australia	2025-01-06	Individual
212	Riley Bryant	copelandvincent@example.net	Germany	2025-05-28	Individual
213	Jose Allen	kellysmith@example.com	United Kingdom	2023-08-22	Small Business
214	Jason Beck	millsmichael@example.net	Australia	2024-01-15	Small Business
215	Rachel Romero	myerstheodore@example.net	United States	2025-02-26	Mid-Market
216	James Burgess	kristina53@example.net	Germany	2024-08-17	Enterprise
217	Ashley Perkins	dennis58@example.com	Germany	2026-03-19	Enterprise
218	Carrie Maxwell	epollard@example.net	Canada	2025-12-09	Individual
219	Chad Baldwin	mjohnson@example.org	Canada	2026-06-06	Small Business
220	Stacey Stewart	zachary87@example.com	Australia	2024-08-04	Mid-Market
221	Matthew Mitchell	glennmartin@example.org	United States	2024-10-09	Individual
222	Jessica Ross	ykline@example.com	Germany	2023-09-09	Enterprise
223	Kathleen Jimenez	laurie61@example.com	Canada	2025-07-30	Enterprise
224	Samantha Gardner	curtis54@example.com	United Kingdom	2025-12-18	Enterprise
225	Mitchell Jackson	cbell@example.net	United States	2026-04-28	Mid-Market
226	Heather Bolton	danielle01@example.net	Australia	2025-04-16	Individual
227	Heidi Owen	stephaniethomas@example.net	Germany	2023-11-23	Individual
228	Jessica Martinez	kimberlydiaz@example.com	Germany	2025-01-30	Small Business
229	Amanda Hernandez	xrush@example.com	Australia	2025-10-22	Enterprise
230	Laura Moreno	redwards@example.org	United Kingdom	2024-07-08	Enterprise
231	Allison Lopez	hmcintyre@example.com	Germany	2025-06-23	Small Business
232	Michele Lewis	heather73@example.org	Canada	2024-02-23	Mid-Market
233	Benjamin Thompson	zosborn@example.net	United Kingdom	2023-07-21	Enterprise
234	Victoria Contreras	piercekelly@example.com	United Kingdom	2025-07-05	Mid-Market
235	Michelle Ho	laurahicks@example.org	United Kingdom	2025-10-28	Individual
236	Dr. Cynthia Snyder	angela57@example.net	Canada	2025-07-06	Enterprise
237	Stephen Jones	ukey@example.com	Germany	2024-10-30	Individual
238	Patricia Morrow	martinezlogan@example.org	Germany	2025-03-21	Mid-Market
239	Michael Cooper	katrinaanderson@example.net	Germany	2023-11-28	Individual
240	Amy Martinez	kevinmartin@example.net	United States	2023-06-02	Small Business
241	Travis Stone	meghan43@example.net	United Kingdom	2024-10-01	Mid-Market
242	Denise Weber	shawgary@example.net	Australia	2023-08-25	Mid-Market
243	Matthew Le	megan90@example.org	Australia	2026-01-17	Small Business
244	Travis Wise	debra96@example.net	United States	2025-10-23	Individual
245	Kathleen Burton	dawn47@example.org	Australia	2024-07-26	Small Business
246	Melinda Evans	barkereric@example.com	Canada	2023-09-20	Individual
247	Mr. Lawrence Edwards	jessica56@example.org	United Kingdom	2024-02-07	Mid-Market
248	Kayla Rodriguez	stevenadams@example.org	Germany	2024-07-29	Mid-Market
249	Anthony Dougherty	kwright@example.com	Australia	2026-02-22	Enterprise
250	Michelle Lee	tyronerobertson@example.com	Germany	2024-02-08	Enterprise
251	Kathleen Davis	pwagner@example.org	Canada	2024-08-12	Small Business
252	Amber Campbell	amitchell@example.org	Germany	2025-09-03	Enterprise
253	Stephen Luna	zdiaz@example.org	Canada	2024-07-26	Individual
254	Chloe Tran	hughesshannon@example.net	Australia	2025-03-09	Small Business
255	William Becker	andersoncolin@example.com	United States	2023-11-19	Small Business
256	Gina Mcmillan	jameshicks@example.net	United Kingdom	2026-03-09	Mid-Market
257	Andrew Reeves	jstone@example.net	United Kingdom	2024-05-11	Small Business
258	Brenda Velazquez	francisco94@example.net	United States	2026-02-21	Mid-Market
259	Ronald Patel	thomas05@example.com	United Kingdom	2024-09-21	Mid-Market
260	Veronica Silva	carlsonjoseph@example.net	Canada	2025-05-29	Small Business
261	Paula Lane	silvageorge@example.net	Australia	2025-01-01	Enterprise
262	Patricia James	anthonyvaughan@example.org	United States	2024-08-22	Small Business
263	Jeremy Barnes	avaughn@example.net	United States	2023-11-13	Enterprise
264	Tami Salas	thorntonapril@example.net	Canada	2024-09-22	Small Business
265	Matthew Fox	sue78@example.com	Canada	2024-07-01	Mid-Market
266	Megan Dillon	chelsea33@example.com	Canada	2024-04-27	Mid-Market
267	Courtney Dudley	kellie37@example.com	Germany	2025-06-11	Mid-Market
268	Justin Michael	keith98@example.com	Germany	2025-02-22	Individual
269	Jennifer Reed	kellyroberts@example.net	Canada	2024-08-13	Enterprise
270	Thomas Douglas	ilewis@example.com	United Kingdom	2026-04-10	Individual
271	Melissa Taylor	johnsantiago@example.net	Australia	2024-06-21	Enterprise
272	David Garcia	jennifer12@example.org	United States	2024-09-27	Individual
273	Vanessa Moore	mwoods@example.com	United Kingdom	2024-04-05	Enterprise
274	Matthew Velez	pearsonjesse@example.net	United States	2024-07-24	Individual
275	Taylor Gentry	robertmonroe@example.org	United Kingdom	2025-06-09	Enterprise
276	Jennifer Simpson DVM	nancy04@example.net	Germany	2024-08-30	Enterprise
277	Tanya Rogers	ihays@example.net	Germany	2025-04-26	Individual
278	Todd Rosales MD	lisarivera@example.net	Canada	2024-09-10	Individual
279	David Lopez	krystal93@example.org	United States	2026-02-22	Individual
280	Margaret Sullivan	frobertson@example.com	Canada	2025-04-09	Mid-Market
281	Cathy Taylor	shari04@example.com	Germany	2024-09-26	Small Business
282	Paul Finley	brandi90@example.com	Canada	2024-05-02	Enterprise
283	Melissa Brown	marshallerik@example.net	Australia	2024-12-28	Enterprise
284	Stephanie Padilla	hannah45@example.net	United Kingdom	2023-09-05	Mid-Market
285	Tyler Mendoza	madkins@example.com	Australia	2024-10-02	Enterprise
286	Joshua Ruiz	kathleenbecker@example.net	Germany	2025-05-23	Individual
287	Angela Griffin	christian91@example.org	United States	2024-11-09	Small Business
288	Stephanie Harris	franklinbond@example.com	United Kingdom	2024-08-20	Individual
289	Daniel Aguilar	nolansean@example.org	Australia	2025-12-06	Enterprise
290	Jose Bryant	hansenemily@example.com	United States	2024-05-20	Enterprise
291	Jennifer Velasquez	bethwilliams@example.com	United Kingdom	2026-01-08	Individual
292	Kimberly Brown	andersenthomas@example.com	Germany	2024-09-09	Mid-Market
293	Randy Cannon	ybrooks@example.com	Germany	2024-03-06	Enterprise
294	Susan Bennett	desireebailey@example.org	United States	2023-10-02	Small Business
295	Jenna Anderson DVM	avilatiffany@example.com	United Kingdom	2026-03-01	Enterprise
296	Kimberly Patel	johnreed@example.com	United Kingdom	2023-10-26	Small Business
297	Shaun Cannon	pachecorobert@example.org	Canada	2026-02-03	Individual
298	Austin Wheeler	tharper@example.org	United States	2023-08-10	Individual
299	Andrew Gonzales	karenparsons@example.org	Germany	2023-11-17	Enterprise
300	Donna Cabrera	barbara53@example.com	Australia	2023-07-15	Individual
301	Victoria Boyd	dturner@example.net	United Kingdom	2025-09-28	Enterprise
302	Sheryl Buck	dpeters@example.com	United States	2024-10-11	Enterprise
303	Megan Floyd	heather62@example.com	Australia	2024-05-01	Small Business
304	Paul Wells	kevinzimmerman@example.com	Germany	2023-08-27	Mid-Market
305	Kristina Faulkner	paulscott@example.com	Australia	2025-10-13	Mid-Market
306	Tammy Boone	nicholsmaria@example.org	Australia	2026-01-26	Mid-Market
307	Michael Morrison	lopezkathleen@example.net	Germany	2024-03-26	Small Business
308	Claire Clark	kevin03@example.org	United States	2026-05-06	Small Business
309	Autumn Key	srocha@example.net	Australia	2025-06-07	Mid-Market
310	Jennifer Allen	kimberly67@example.net	United Kingdom	2024-08-31	Individual
311	Elizabeth Ward	zowens@example.net	Canada	2023-06-03	Mid-Market
312	Ryan Rocha	lawrence09@example.org	United Kingdom	2024-12-25	Mid-Market
313	Alexis Tran	mphillips@example.com	United States	2023-12-15	Individual
314	Kelly Sanchez	jonathan77@example.com	Canada	2023-09-06	Small Business
315	Robert Jackson	iwhite@example.net	Australia	2025-05-17	Mid-Market
316	Kelly Combs	landryelizabeth@example.org	United Kingdom	2024-04-02	Individual
317	Ryan Hall	albertwagner@example.com	United States	2026-02-07	Small Business
318	Mark Peck	bhopkins@example.org	United States	2023-07-20	Enterprise
319	Jennifer Smith	amanda40@example.net	United Kingdom	2023-06-01	Mid-Market
320	Megan Drake	danieldavis@example.org	Canada	2024-07-14	Individual
321	Manuel King	joseph61@example.com	Australia	2025-02-09	Small Business
322	Judy Sanchez	kevinclayton@example.org	United States	2025-05-04	Small Business
323	Shannon Malone	sullivannicholas@example.com	United Kingdom	2025-06-28	Mid-Market
324	Adam Jackson	pbruce@example.com	Australia	2023-06-13	Small Business
325	Shannon Davis	hallrachel@example.net	United Kingdom	2023-07-03	Mid-Market
326	Karen Williams	cohenjuan@example.net	United States	2023-12-16	Mid-Market
327	Amanda Mcfarland	alexis39@example.org	United States	2025-03-04	Mid-Market
328	Michelle Sanders	evansanne@example.net	Australia	2026-05-27	Mid-Market
329	Jasmine Mosley	patrick21@example.net	Australia	2023-11-12	Enterprise
330	Haley Davis	marypeterson@example.net	United Kingdom	2025-03-09	Mid-Market
331	Jennifer Ayala	walterskristen@example.com	United Kingdom	2025-06-27	Individual
332	Henry Pugh MD	nmiller@example.com	Canada	2025-04-18	Small Business
333	Michelle Miller	normanbowers@example.org	United States	2023-11-22	Mid-Market
334	Emily Rodriguez	hahnsean@example.com	United States	2024-02-25	Mid-Market
335	Brandon Jordan	fgarcia@example.com	Germany	2023-11-12	Enterprise
336	Linda Mueller	asmith@example.com	United Kingdom	2023-12-24	Small Business
337	Misty Hansen	ashleyjackson@example.com	United States	2024-07-23	Individual
338	Derrick Adams	bryanhamilton@example.com	United Kingdom	2026-03-16	Mid-Market
339	Richard Ward	jennifersimpson@example.net	Australia	2024-04-21	Enterprise
340	Brian Torres	ncook@example.com	United Kingdom	2023-07-13	Individual
341	Erin Cook	kevinmorrison@example.net	Germany	2025-06-03	Mid-Market
342	Ernest Oconnell	kelly79@example.org	United States	2023-10-31	Enterprise
343	Douglas Hartman	daniel93@example.net	United Kingdom	2024-05-01	Enterprise
344	Catherine Saunders MD	nhahn@example.com	Germany	2025-08-01	Small Business
345	Sandra Jones	ichambers@example.net	Germany	2025-01-24	Enterprise
346	David Moore	emccormick@example.com	United States	2024-01-29	Small Business
347	Karen Morales DDS	ystephens@example.com	Germany	2024-10-31	Enterprise
348	Robin Wheeler	rodriguezjohn@example.net	United States	2023-10-09	Small Business
349	Matthew Williams	vrasmussen@example.com	Australia	2024-07-24	Enterprise
350	Brett Walker	seanmyers@example.net	Canada	2024-03-16	Enterprise
351	Kathryn Cooper	webbkenneth@example.org	United Kingdom	2024-11-16	Enterprise
352	Todd Thomas	matthew38@example.com	United Kingdom	2025-10-28	Individual
353	Brent Bowen	tflores@example.org	United Kingdom	2024-10-14	Small Business
354	Ashley Sweeney	byrdfrank@example.net	Germany	2024-07-31	Individual
355	Christopher Moore	omullen@example.com	Canada	2023-12-22	Small Business
356	Charlotte Sandoval	njohnson@example.org	Germany	2025-06-25	Mid-Market
357	Jeffrey Smith	jamiegoodwin@example.org	United States	2023-06-11	Enterprise
358	Rebecca Herrera	mark71@example.com	United Kingdom	2023-07-16	Individual
359	Katherine Church	candice96@example.net	Canada	2026-01-12	Enterprise
360	Harold Ellis	lisamccarthy@example.com	Canada	2023-08-01	Mid-Market
361	Leslie Powers	david41@example.org	United Kingdom	2025-11-30	Enterprise
362	Charles Price	baileyhenderson@example.com	Germany	2026-02-25	Mid-Market
363	Melissa Brewer	angelaburns@example.org	Canada	2025-12-17	Mid-Market
364	Ryan Harvey	stephanie72@example.org	Australia	2024-03-05	Individual
365	Tracey Wagner	fortiz@example.com	United States	2024-10-09	Mid-Market
366	Jill Jackson	flynnjeffrey@example.org	United States	2024-01-13	Individual
367	Joshua Jackson	xcunningham@example.com	Germany	2023-06-11	Small Business
368	Ashley Wilson	amber07@example.net	Canada	2024-12-16	Enterprise
369	Jeffery Fitzgerald	kennethkidd@example.com	Canada	2023-08-01	Small Business
370	Scott Miller	rowejoel@example.net	United Kingdom	2024-11-16	Mid-Market
371	Heather Page	imartin@example.org	United States	2025-10-10	Small Business
372	Renee Hudson	candice25@example.net	United Kingdom	2024-05-25	Mid-Market
373	Kenneth Farley	taylorkaren@example.com	Canada	2023-09-04	Enterprise
374	Wendy Camacho	jacquelineanderson@example.org	Australia	2024-10-24	Small Business
375	Sandra Juarez	kburns@example.net	Canada	2024-10-18	Enterprise
376	Jason Hayes	powellkara@example.net	United Kingdom	2023-12-21	Small Business
377	Jackie Clements	brandi17@example.net	Germany	2023-07-01	Individual
378	Heather Brown	brobinson@example.org	United Kingdom	2025-04-25	Individual
379	Frank Campbell MD	ashleewashington@example.com	United States	2025-07-01	Enterprise
380	Pamela Williams	ksmith@example.com	United Kingdom	2024-06-30	Mid-Market
381	William Patterson	nicoleturner@example.com	Australia	2023-06-06	Enterprise
382	Isaac Miller	brettgarrett@example.net	United States	2024-06-28	Individual
383	Cynthia Rios	smiththomas@example.org	United States	2024-05-13	Enterprise
384	Kelly Wallace	dominguezlisa@example.com	Germany	2023-11-26	Enterprise
385	Karen Perez	crosscurtis@example.com	Canada	2024-05-14	Individual
386	Edwin Reyes	darlenebyrd@example.org	United Kingdom	2025-04-26	Small Business
387	Alejandra Santos	nbell@example.net	Canada	2023-08-21	Small Business
388	Tamara Jensen	fheath@example.org	United Kingdom	2026-01-19	Individual
389	Bryce Blair	sylvia52@example.org	Australia	2024-05-09	Mid-Market
390	Bradley Tran	kimberly04@example.org	Germany	2025-05-01	Enterprise
391	Katrina Adkins	debbie37@example.com	Canada	2024-01-29	Individual
392	Jonathan Wheeler	hatfieldsarah@example.org	United States	2024-07-13	Enterprise
393	Ryan Fisher	kathrynbest@example.org	Canada	2025-11-26	Enterprise
394	Austin Baker	livingstonstacy@example.com	Australia	2023-07-08	Enterprise
395	Lori Mason	zhenderson@example.org	United States	2025-11-13	Enterprise
396	Kimberly Hernandez	collinswilliam@example.org	United States	2023-10-26	Small Business
397	Brittney Murphy	collinssamuel@example.org	Germany	2024-03-30	Small Business
398	Brandon Hamilton	dsalazar@example.com	Germany	2025-08-04	Individual
399	Mary Thompson	zimmermanjacqueline@example.org	Australia	2024-04-30	Small Business
400	Gregory Holmes PhD	gary24@example.net	United States	2026-04-10	Small Business
401	Patricia Johnson	enelson@example.com	Canada	2024-11-30	Mid-Market
402	Laura Jones	ddixon@example.com	Germany	2024-08-30	Mid-Market
403	Carol Moore	shannonemily@example.org	Canada	2024-05-13	Mid-Market
404	Jordan Williams	sanchezthomas@example.com	Canada	2026-03-04	Small Business
405	Cassidy Horne	tranrobin@example.net	Germany	2023-06-17	Individual
406	Courtney Wright	joseph19@example.com	United Kingdom	2026-03-09	Enterprise
407	Michael Williams	lindajarvis@example.com	Australia	2026-02-26	Individual
408	John Campbell	mark87@example.org	Germany	2025-10-06	Enterprise
409	Eddie Mueller	stevenvargas@example.com	United States	2026-02-10	Enterprise
410	Dr. Morgan Payne PhD	adamortiz@example.org	United Kingdom	2023-11-30	Enterprise
411	Makayla Steele	tapiaaaron@example.net	Germany	2024-12-14	Small Business
412	Oscar Parker	alyssaallen@example.com	Germany	2024-10-19	Small Business
413	Valerie Thomas	christopher38@example.com	United States	2024-12-11	Small Business
414	Jacqueline Villegas	carpenterwilliam@example.net	Canada	2023-10-16	Individual
415	Angela Bradley	ibates@example.org	United Kingdom	2026-05-17	Enterprise
416	Samuel Howe	vhaynes@example.com	Germany	2024-11-30	Individual
417	Dillon Jones	derekcarrillo@example.org	United Kingdom	2024-01-08	Individual
418	Christopher Owens	wmartinez@example.org	Canada	2025-12-30	Enterprise
419	John Phelps	mooregina@example.net	Germany	2025-09-01	Mid-Market
420	Amanda Huff	eddie35@example.com	Germany	2026-04-18	Enterprise
421	Megan Green	anthonysullivan@example.com	Germany	2024-03-10	Small Business
422	Krista Davis	laradonald@example.org	United States	2025-04-20	Individual
423	Richard Walker	madisonwatson@example.net	Australia	2024-01-10	Individual
424	Angela Willis	johnsoncaleb@example.net	United Kingdom	2023-12-16	Individual
425	Carl Stein	david70@example.org	Germany	2023-08-10	Small Business
426	Jessica Ramsey	rjohnson@example.com	Canada	2025-11-10	Small Business
427	Daniel Lopez	sean20@example.net	Germany	2025-04-30	Small Business
428	Danielle Phillips	eandrade@example.org	Canada	2024-06-07	Individual
429	James Barnes	crystalpham@example.org	Germany	2026-01-04	Individual
430	Rachael Howard DDS	kcooper@example.net	Canada	2024-03-18	Mid-Market
431	Devin Johnson	anthonycochran@example.com	United States	2023-08-31	Individual
432	William Moreno	terrigarcia@example.net	Germany	2024-01-15	Small Business
433	Joseph Moody	gallagherstacie@example.net	Germany	2026-05-14	Individual
434	Rebecca Kelly	gregorywatkins@example.net	United States	2026-01-08	Individual
435	Suzanne Johnson	stacey92@example.net	Australia	2025-10-05	Small Business
436	Sara Cochran	lweaver@example.com	United States	2026-04-10	Mid-Market
437	Anthony Guzman	foxaaron@example.net	Australia	2025-07-16	Mid-Market
438	Carlos Love	brian29@example.net	United Kingdom	2024-12-10	Mid-Market
439	Patricia Mathis	susan56@example.net	United States	2024-11-24	Individual
440	Eric Taylor	jessicakim@example.net	Australia	2024-09-02	Enterprise
441	Marie Thompson	jeffrey92@example.com	Canada	2024-08-14	Individual
442	Michael Anderson	rushstacy@example.com	Germany	2023-06-29	Individual
443	Patricia Bradley	carriemccall@example.net	United States	2023-09-26	Mid-Market
444	Keith Zuniga	markmiller@example.com	Canada	2024-01-12	Individual
445	Mrs. Stacey Davis	sean43@example.org	Australia	2025-08-06	Individual
446	Hayley Buchanan	williamssamuel@example.com	United Kingdom	2025-08-24	Small Business
447	Stacey Snyder	ybell@example.org	Canada	2025-08-29	Mid-Market
448	Rachel Lane	franciscojones@example.org	Australia	2023-12-15	Enterprise
449	Fernando Lynn	petersonpamela@example.org	United States	2025-11-20	Enterprise
450	Kimberly Villanueva	morgantricia@example.com	Canada	2023-07-22	Individual
451	Jessica Valdez	gmoore@example.com	United Kingdom	2023-06-23	Enterprise
452	Colton Terry	donna43@example.org	United States	2024-12-12	Mid-Market
453	Kenneth Larsen	briansmith@example.org	Germany	2025-07-07	Small Business
454	Matthew Greene	collinclark@example.net	Germany	2024-10-27	Small Business
455	Bradley Anthony	kristen77@example.net	Germany	2025-09-18	Enterprise
456	Martin Hughes	nicole52@example.com	Germany	2025-11-21	Small Business
457	Jeremiah Baker	anne21@example.org	Australia	2024-03-22	Individual
458	Rhonda Gutierrez	angelarandall@example.net	Canada	2023-10-18	Enterprise
459	Joseph Camacho	parmstrong@example.com	Australia	2024-09-10	Enterprise
460	James Nash	shawrachel@example.net	United States	2024-01-27	Individual
461	Lisa Martinez	kthompson@example.org	Canada	2025-09-09	Mid-Market
462	Beth Henderson	oharris@example.org	United Kingdom	2024-07-07	Small Business
463	Deanna Bartlett	millerangela@example.net	Canada	2025-12-08	Small Business
464	Donald Ellis	buchanancindy@example.net	Germany	2024-06-16	Enterprise
465	Ashley Hernandez	buckleyanna@example.org	Australia	2026-06-02	Small Business
466	Sharon Beard	pbaker@example.com	Canada	2024-02-05	Individual
467	Kara Jackson	mthomas@example.net	United Kingdom	2025-06-25	Individual
468	Amanda Preston	hannah07@example.com	Australia	2025-07-02	Individual
469	Alicia Roth	larry71@example.org	Australia	2025-06-29	Enterprise
470	William Ramos	joseph69@example.net	Canada	2025-08-31	Enterprise
471	Jeremy Mcintyre	wfigueroa@example.net	Germany	2024-03-18	Enterprise
472	Samantha Robertson	cameronmckinney@example.com	Australia	2025-09-20	Small Business
473	Samuel Suarez	thompsonnancy@example.org	Germany	2025-04-04	Enterprise
474	Danielle Bryant	janet45@example.com	Australia	2024-03-20	Individual
475	Madison Martinez	allentracy@example.com	Germany	2024-12-26	Individual
476	Seth Matthews	max41@example.com	United States	2023-08-20	Enterprise
477	Anthony Nash	mercedesholland@example.net	United States	2024-06-12	Individual
478	Matthew Palmer	wellsdavid@example.org	Australia	2026-03-22	Enterprise
479	Alejandra King	jennifer46@example.com	Canada	2024-12-02	Mid-Market
480	Judy Robinson	erica96@example.net	United Kingdom	2023-10-13	Enterprise
481	Jorge Bates	anna99@example.com	United Kingdom	2025-04-14	Individual
482	Brian Brown	danielle44@example.net	United States	2025-06-13	Mid-Market
483	Stephanie Evans	zacharyallen@example.org	Germany	2023-12-06	Mid-Market
484	Rebekah Greene	erin07@example.com	United States	2025-01-18	Mid-Market
485	Jason Price	aguilarwanda@example.org	Germany	2024-04-15	Enterprise
486	Micheal Parks	qknox@example.com	United Kingdom	2025-07-02	Individual
487	Sarah Pittman	kellyruiz@example.net	United Kingdom	2024-10-17	Mid-Market
488	Robert Hines	staceylam@example.net	Canada	2025-08-17	Small Business
489	Henry Garner	robert55@example.com	Australia	2024-07-09	Small Business
490	Julie Wilson	delacruzbrandy@example.net	Canada	2025-10-12	Mid-Market
491	Steve Mason	amoreno@example.org	Australia	2024-11-22	Mid-Market
492	Brittany Gay	robert97@example.org	United States	2026-01-15	Mid-Market
493	Mike Maxwell	lcook@example.com	Germany	2023-11-22	Small Business
494	Abigail Hill	barbaramoore@example.org	Canada	2026-05-31	Enterprise
495	Jeffrey Jordan	ysanford@example.org	Canada	2025-02-24	Individual
496	Curtis Watson	mcclainkatherine@example.net	United Kingdom	2024-12-22	Small Business
497	Michael Sims	jeremywiley@example.com	Canada	2024-11-29	Enterprise
498	James Chapman	cameronwilliams@example.com	Germany	2024-11-17	Small Business
499	Joseph Warren	ibarron@example.com	Germany	2025-08-09	Small Business
500	Katherine Christensen MD	osmith@example.net	Germany	2023-11-13	Small Business
\.


--
-- TOC entry 5056 (class 0 OID 16451)
-- Dependencies: 228
-- Data for Name: product_usage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_usage (usage_id, customer_id, usage_date, login_count, feature_usage_count, session_minutes) FROM stdin;
1	1	2026-09-11	5	2	109.31
2	1	2026-08-12	3	3	123.58
3	1	2026-07-13	2	6	114.39
4	2	2026-09-11	18	12	120.60
5	2	2026-08-12	23	11	117.03
6	2	2026-07-13	20	12	104.64
7	3	2026-09-11	24	0	36.41
8	3	2026-08-12	26	2	36.46
9	3	2026-07-13	25	3	56.62
10	4	2026-09-11	25	19	95.18
11	4	2026-08-12	22	20	99.13
12	4	2026-07-13	27	16	110.15
13	5	2026-09-11	13	8	92.26
14	5	2026-08-12	15	4	95.52
15	5	2026-07-13	13	8	87.67
16	6	2026-09-11	22	8	141.76
17	6	2026-08-12	23	5	122.21
18	6	2026-07-13	20	7	115.40
19	7	2026-09-11	12	2	101.68
20	7	2026-08-12	12	5	94.16
21	7	2026-07-13	14	4	104.20
22	8	2026-09-11	0	3	6.36
23	8	2026-08-12	3	5	4.82
24	8	2026-07-13	0	4	14.49
25	9	2026-09-11	12	17	59.78
26	9	2026-08-12	9	14	45.62
27	9	2026-07-13	7	13	57.30
28	10	2026-09-11	21	10	108.27
29	10	2026-08-12	18	8	97.44
30	10	2026-07-13	21	8	98.47
31	11	2026-09-11	22	1	7.76
32	11	2026-08-12	26	3	1.00
33	11	2026-07-13	24	1	18.01
34	12	2026-09-11	4	9	28.34
35	12	2026-08-12	7	9	16.31
36	12	2026-07-13	7	9	25.36
37	13	2026-09-11	8	1	12.86
38	13	2026-08-12	10	3	7.45
39	13	2026-07-13	6	0	18.97
40	14	2026-09-11	27	4	178.45
41	14	2026-08-12	21	4	174.11
42	14	2026-07-13	23	6	176.08
43	15	2026-09-11	7	14	153.12
44	15	2026-08-12	7	12	149.32
45	15	2026-07-13	6	12	154.58
46	16	2026-09-11	22	9	55.19
47	16	2026-08-12	21	6	45.51
48	16	2026-07-13	16	7	53.27
49	17	2026-09-11	3	10	54.16
50	17	2026-08-12	1	9	55.55
51	17	2026-07-13	4	9	59.98
52	18	2026-09-11	10	3	7.93
53	18	2026-08-12	9	7	1.00
54	18	2026-07-13	9	6	9.10
55	19	2026-09-11	27	6	140.16
56	19	2026-08-12	26	3	153.74
57	19	2026-07-13	22	5	130.22
58	20	2026-09-11	22	18	78.18
59	20	2026-08-12	27	16	89.88
60	20	2026-07-13	23	19	79.22
61	21	2026-09-11	28	20	82.17
62	21	2026-08-12	28	20	72.72
63	21	2026-07-13	27	21	80.57
64	22	2026-09-11	18	0	83.27
65	22	2026-08-12	14	3	74.07
66	22	2026-07-13	16	3	74.98
67	23	2026-09-11	10	10	122.18
68	23	2026-08-12	14	7	151.60
69	23	2026-07-13	12	8	141.10
70	24	2026-09-11	3	9	93.04
71	24	2026-08-12	3	9	93.82
72	24	2026-07-13	4	10	116.27
73	25	2026-09-11	21	19	63.42
74	25	2026-08-12	22	20	54.07
75	25	2026-07-13	26	20	47.06
76	26	2026-09-11	3	5	52.56
77	26	2026-08-12	2	5	51.80
78	26	2026-07-13	3	5	51.41
79	27	2026-09-11	26	8	41.42
80	27	2026-08-12	22	5	32.41
81	27	2026-07-13	24	5	32.59
82	28	2026-09-11	2	10	156.91
83	28	2026-08-12	4	7	159.24
84	28	2026-07-13	5	11	183.16
85	29	2026-09-11	16	8	158.82
86	29	2026-08-12	17	8	168.96
87	29	2026-07-13	13	9	148.47
88	30	2026-09-11	6	8	108.19
89	30	2026-08-12	5	11	122.41
90	30	2026-07-13	7	12	108.94
91	31	2026-09-11	13	14	185.31
92	31	2026-08-12	13	17	180.39
93	31	2026-07-13	13	17	183.99
94	32	2026-09-11	2	19	89.61
95	32	2026-08-12	4	16	76.96
96	32	2026-07-13	2	17	98.68
97	33	2026-09-11	18	22	142.12
98	33	2026-08-12	19	18	143.72
99	33	2026-07-13	18	19	144.83
100	34	2026-09-11	13	11	178.61
101	34	2026-08-12	15	12	179.45
102	34	2026-07-13	14	13	168.02
103	35	2026-09-11	14	14	86.50
104	35	2026-08-12	14	15	86.52
105	35	2026-07-13	15	11	83.79
106	36	2026-09-11	14	19	82.67
107	36	2026-08-12	8	20	58.55
108	36	2026-07-13	13	18	86.42
109	37	2026-09-11	1	1	54.10
110	37	2026-08-12	1	4	67.22
111	37	2026-07-13	0	1	52.02
112	38	2026-09-11	21	3	57.60
113	38	2026-08-12	19	5	50.96
114	38	2026-07-13	17	3	43.88
115	39	2026-09-11	15	20	50.01
116	39	2026-08-12	13	17	69.10
117	39	2026-07-13	14	20	66.77
118	40	2026-09-11	22	4	9.73
119	40	2026-08-12	25	5	21.70
120	40	2026-07-13	23	4	13.48
121	41	2026-09-11	11	14	159.69
122	41	2026-08-12	9	11	172.91
123	41	2026-07-13	10	13	176.81
124	42	2026-09-11	20	7	70.58
125	42	2026-08-12	20	4	84.57
126	42	2026-07-13	20	3	83.02
127	43	2026-09-11	14	4	163.48
128	43	2026-08-12	11	3	190.71
129	43	2026-07-13	15	5	164.41
130	44	2026-09-11	17	6	11.87
131	44	2026-08-12	17	9	2.10
132	44	2026-07-13	22	6	31.64
133	45	2026-09-11	21	4	88.46
134	45	2026-08-12	25	1	95.16
135	45	2026-07-13	27	5	82.39
136	46	2026-09-11	19	8	94.98
137	46	2026-08-12	19	12	91.03
138	46	2026-07-13	15	11	82.95
139	47	2026-09-11	1	5	67.38
140	47	2026-08-12	4	5	75.47
141	47	2026-07-13	0	4	76.19
142	48	2026-09-11	16	20	161.34
143	48	2026-08-12	16	18	161.42
144	48	2026-07-13	13	18	188.20
145	49	2026-09-11	25	21	16.92
146	49	2026-08-12	25	20	5.18
147	49	2026-07-13	26	18	9.07
148	50	2026-09-11	8	2	56.95
149	50	2026-08-12	13	1	51.51
150	50	2026-07-13	9	2	32.19
151	51	2026-09-11	7	8	88.61
152	51	2026-08-12	2	8	89.61
153	51	2026-07-13	1	10	85.24
154	52	2026-09-11	5	7	109.34
155	52	2026-08-12	8	8	108.89
156	52	2026-07-13	8	8	105.12
157	53	2026-09-11	6	18	107.45
158	53	2026-08-12	6	22	113.52
159	53	2026-07-13	2	22	108.23
160	54	2026-09-11	3	7	124.75
161	54	2026-08-12	1	9	126.09
162	54	2026-07-13	1	10	115.40
163	55	2026-09-11	4	13	49.81
164	55	2026-08-12	0	11	46.36
165	55	2026-07-13	4	10	59.28
166	56	2026-09-11	23	15	82.16
167	56	2026-08-12	24	11	97.25
168	56	2026-07-13	28	13	94.65
169	57	2026-09-11	4	12	18.50
170	57	2026-08-12	5	16	17.27
171	57	2026-07-13	5	12	17.30
172	58	2026-09-11	0	9	81.37
173	58	2026-08-12	0	10	80.72
174	58	2026-07-13	4	7	72.21
175	59	2026-09-11	5	11	172.02
176	59	2026-08-12	4	11	184.83
177	59	2026-07-13	4	13	165.68
178	60	2026-09-11	0	15	24.47
179	60	2026-08-12	4	16	26.14
180	60	2026-07-13	4	16	4.07
181	61	2026-09-11	2	12	64.65
182	61	2026-08-12	2	11	67.02
183	61	2026-07-13	2	12	48.83
184	62	2026-09-11	12	15	16.59
185	62	2026-08-12	15	13	1.00
186	62	2026-07-13	14	16	8.31
187	63	2026-09-11	11	11	45.29
188	63	2026-08-12	12	7	41.53
189	63	2026-07-13	10	10	40.12
190	64	2026-09-11	2	3	89.15
191	64	2026-08-12	7	1	85.61
192	64	2026-07-13	4	3	94.65
193	65	2026-09-11	24	5	87.94
194	65	2026-08-12	19	2	81.73
195	65	2026-07-13	24	1	93.69
196	66	2026-09-11	20	19	42.26
197	66	2026-08-12	20	17	41.74
198	66	2026-07-13	16	17	18.34
199	67	2026-09-11	22	14	56.58
200	67	2026-08-12	20	13	60.25
201	67	2026-07-13	21	13	64.08
202	68	2026-09-11	17	17	12.81
203	68	2026-08-12	14	18	36.94
204	68	2026-07-13	20	20	21.12
205	69	2026-09-11	6	14	166.99
206	69	2026-08-12	6	18	178.01
207	69	2026-07-13	4	15	181.79
208	70	2026-09-11	4	14	14.80
209	70	2026-08-12	1	16	30.29
210	70	2026-07-13	3	16	22.10
211	71	2026-09-11	16	11	135.08
212	71	2026-08-12	14	13	144.11
213	71	2026-07-13	10	10	133.22
214	72	2026-09-11	12	6	73.99
215	72	2026-08-12	12	8	73.47
216	72	2026-07-13	12	6	73.02
217	73	2026-09-11	23	21	109.96
218	73	2026-08-12	26	20	95.52
219	73	2026-07-13	27	18	92.04
220	74	2026-09-11	17	17	72.33
221	74	2026-08-12	18	17	74.24
222	74	2026-07-13	14	16	64.31
223	75	2026-09-11	18	18	33.44
224	75	2026-08-12	20	19	53.39
225	75	2026-07-13	17	18	32.03
226	76	2026-09-11	15	14	131.08
227	76	2026-08-12	13	18	110.81
228	76	2026-07-13	18	14	131.24
229	77	2026-09-11	18	17	82.21
230	77	2026-08-12	15	17	81.30
231	77	2026-07-13	18	17	97.99
232	78	2026-09-11	21	0	49.73
233	78	2026-08-12	17	2	56.35
234	78	2026-07-13	21	1	56.48
235	79	2026-09-11	21	11	85.63
236	79	2026-08-12	22	14	88.96
237	79	2026-07-13	17	14	76.17
238	80	2026-09-11	22	5	129.06
239	80	2026-08-12	23	8	129.16
240	80	2026-07-13	19	9	129.33
241	81	2026-09-11	12	1	93.31
242	81	2026-08-12	10	2	107.67
243	81	2026-07-13	14	4	95.93
244	82	2026-09-11	23	19	29.14
245	82	2026-08-12	24	17	38.31
246	82	2026-07-13	25	16	42.62
247	83	2026-09-11	24	1	55.46
248	83	2026-08-12	26	0	37.03
249	83	2026-07-13	22	1	57.30
250	84	2026-09-11	6	16	47.46
251	84	2026-08-12	5	19	43.55
252	84	2026-07-13	4	18	52.25
253	85	2026-09-11	5	12	152.45
254	85	2026-08-12	8	12	155.97
255	85	2026-07-13	8	9	147.72
256	86	2026-09-11	5	20	134.89
257	86	2026-08-12	6	16	122.44
258	86	2026-07-13	6	20	138.53
259	87	2026-09-11	13	8	179.89
260	87	2026-08-12	14	11	184.91
261	87	2026-07-13	13	12	178.59
262	88	2026-09-11	14	16	97.37
263	88	2026-08-12	16	16	106.24
264	88	2026-07-13	12	14	94.51
265	89	2026-09-11	8	11	37.97
266	89	2026-08-12	10	12	59.25
267	89	2026-07-13	9	12	44.07
268	90	2026-09-11	21	8	3.70
269	90	2026-08-12	23	10	29.27
270	90	2026-07-13	23	9	2.36
271	91	2026-09-11	26	10	107.94
272	91	2026-08-12	22	7	111.29
273	91	2026-07-13	25	8	90.98
274	92	2026-09-11	18	17	52.17
275	92	2026-08-12	18	17	35.37
276	92	2026-07-13	15	20	49.14
277	93	2026-09-11	6	9	147.85
278	93	2026-08-12	1	11	151.71
279	93	2026-07-13	6	10	175.25
280	94	2026-09-11	13	4	35.75
281	94	2026-08-12	12	2	7.99
282	94	2026-07-13	11	3	21.82
283	95	2026-09-11	21	11	7.46
284	95	2026-08-12	17	14	26.35
285	95	2026-07-13	21	12	27.19
286	96	2026-09-11	15	19	79.35
287	96	2026-08-12	17	18	61.78
288	96	2026-07-13	18	18	84.79
289	97	2026-09-11	10	5	27.34
290	97	2026-08-12	13	6	28.83
291	97	2026-07-13	10	6	21.85
292	98	2026-09-11	0	14	58.18
293	98	2026-08-12	4	15	52.22
294	98	2026-07-13	0	15	76.56
295	99	2026-09-11	14	11	30.38
296	99	2026-08-12	14	10	38.52
297	99	2026-07-13	13	11	23.08
298	100	2026-09-11	23	17	108.20
299	100	2026-08-12	23	16	112.94
300	100	2026-07-13	23	18	109.70
301	101	2026-09-11	6	11	35.48
302	101	2026-08-12	3	10	42.74
303	101	2026-07-13	6	11	49.56
304	102	2026-09-11	12	11	21.20
305	102	2026-08-12	17	10	29.66
306	102	2026-07-13	17	10	17.24
307	103	2026-09-11	17	9	141.48
308	103	2026-08-12	17	10	156.10
309	103	2026-07-13	15	10	142.50
310	104	2026-09-11	23	17	99.96
311	104	2026-08-12	21	16	107.72
312	104	2026-07-13	23	15	106.76
313	105	2026-09-11	21	4	107.24
314	105	2026-08-12	20	5	94.80
315	105	2026-07-13	19	6	109.17
316	106	2026-09-11	17	14	84.28
317	106	2026-08-12	13	14	91.65
318	106	2026-07-13	12	16	92.49
319	107	2026-09-11	18	14	91.42
320	107	2026-08-12	18	10	106.94
321	107	2026-07-13	20	11	93.79
322	108	2026-09-11	1	19	60.07
323	108	2026-08-12	1	21	80.95
324	108	2026-07-13	4	17	55.46
325	109	2026-09-11	8	14	89.22
326	109	2026-08-12	10	11	87.75
327	109	2026-07-13	10	13	96.50
328	110	2026-09-11	15	9	80.50
329	110	2026-08-12	17	8	100.23
330	110	2026-07-13	16	5	77.96
331	111	2026-09-11	7	10	25.33
332	111	2026-08-12	4	9	19.37
333	111	2026-07-13	7	10	39.60
334	112	2026-09-11	12	4	59.03
335	112	2026-08-12	11	3	75.29
336	112	2026-07-13	8	6	67.52
337	113	2026-09-11	24	3	153.67
338	113	2026-08-12	25	2	147.25
339	113	2026-07-13	20	0	153.23
340	114	2026-09-11	3	14	164.90
341	114	2026-08-12	3	14	185.49
342	114	2026-07-13	6	18	165.62
343	115	2026-09-11	23	1	51.61
344	115	2026-08-12	25	1	57.88
345	115	2026-07-13	26	1	53.56
346	116	2026-09-11	23	7	42.36
347	116	2026-08-12	21	9	43.43
348	116	2026-07-13	23	11	21.14
349	117	2026-09-11	11	0	104.26
350	117	2026-08-12	14	0	84.28
351	117	2026-07-13	13	0	78.75
352	118	2026-09-11	25	9	42.85
353	118	2026-08-12	27	13	66.91
354	118	2026-07-13	24	9	63.78
355	119	2026-09-11	17	3	61.84
356	119	2026-08-12	14	3	83.72
357	119	2026-07-13	18	0	76.53
358	120	2026-09-11	26	1	159.54
359	120	2026-08-12	24	0	169.01
360	120	2026-07-13	20	0	177.77
361	121	2026-09-11	14	16	115.52
362	121	2026-08-12	15	15	114.89
363	121	2026-07-13	18	12	125.70
364	122	2026-09-11	5	2	158.29
365	122	2026-08-12	8	4	164.54
366	122	2026-07-13	5	5	165.87
367	123	2026-09-11	6	5	18.79
368	123	2026-08-12	7	3	22.03
369	123	2026-07-13	6	2	46.63
370	124	2026-09-11	27	6	30.35
371	124	2026-08-12	24	6	13.53
372	124	2026-07-13	22	7	39.95
373	125	2026-09-11	20	6	105.90
374	125	2026-08-12	20	7	115.85
375	125	2026-07-13	22	10	110.74
376	126	2026-09-11	12	6	1.00
377	126	2026-08-12	9	8	5.28
378	126	2026-07-13	10	5	23.78
379	127	2026-09-11	25	14	154.21
380	127	2026-08-12	22	13	166.21
381	127	2026-07-13	22	13	151.09
382	128	2026-09-11	15	0	75.61
383	128	2026-08-12	19	1	49.84
384	128	2026-07-13	14	3	69.19
385	129	2026-09-11	4	16	149.38
386	129	2026-08-12	7	14	135.27
387	129	2026-07-13	7	13	139.92
388	130	2026-09-11	22	2	13.22
389	130	2026-08-12	24	1	14.81
390	130	2026-07-13	21	2	22.09
391	131	2026-09-11	11	2	19.40
392	131	2026-08-12	6	4	20.81
393	131	2026-07-13	10	5	24.13
394	132	2026-09-11	6	13	33.93
395	132	2026-08-12	3	11	33.10
396	132	2026-07-13	1	12	43.12
397	133	2026-09-11	12	1	42.32
398	133	2026-08-12	12	3	70.86
399	133	2026-07-13	14	1	50.80
400	134	2026-09-11	13	13	38.67
401	134	2026-08-12	14	17	48.52
402	134	2026-07-13	18	17	42.93
403	135	2026-09-11	5	4	22.49
404	135	2026-08-12	6	5	24.79
405	135	2026-07-13	10	3	1.00
406	136	2026-09-11	18	17	173.95
407	136	2026-08-12	14	16	154.99
408	136	2026-07-13	18	17	167.98
409	137	2026-09-11	19	14	157.82
410	137	2026-08-12	16	12	155.72
411	137	2026-07-13	19	14	164.05
412	138	2026-09-11	1	9	162.21
413	138	2026-08-12	0	10	142.05
414	138	2026-07-13	3	12	156.26
415	139	2026-09-11	15	15	124.88
416	139	2026-08-12	16	18	135.01
417	139	2026-07-13	17	18	149.29
418	140	2026-09-11	15	17	95.03
419	140	2026-08-12	16	17	91.37
420	140	2026-07-13	17	18	112.19
421	141	2026-09-11	8	6	116.58
422	141	2026-08-12	7	6	107.91
423	141	2026-07-13	5	6	108.97
424	142	2026-09-11	23	13	109.13
425	142	2026-08-12	21	15	100.77
426	142	2026-07-13	22	11	106.74
427	143	2026-09-11	6	12	35.08
428	143	2026-08-12	8	9	44.60
429	143	2026-07-13	11	11	52.88
430	144	2026-09-11	5	20	44.59
431	144	2026-08-12	4	18	41.33
432	144	2026-07-13	4	18	28.40
433	145	2026-09-11	21	12	88.57
434	145	2026-08-12	20	8	85.33
435	145	2026-07-13	17	12	74.75
436	146	2026-09-11	5	4	173.15
437	146	2026-08-12	7	4	187.03
438	146	2026-07-13	5	5	182.59
439	147	2026-09-11	6	17	139.51
440	147	2026-08-12	6	17	127.55
441	147	2026-07-13	7	15	149.33
442	148	2026-09-11	3	10	168.99
443	148	2026-08-12	4	9	166.26
444	148	2026-07-13	2	10	178.48
445	149	2026-09-11	8	4	77.29
446	149	2026-08-12	7	2	71.97
447	149	2026-07-13	3	2	73.76
448	150	2026-09-11	20	5	130.85
449	150	2026-08-12	19	6	127.49
450	150	2026-07-13	19	4	109.35
451	151	2026-09-11	10	6	3.94
452	151	2026-08-12	7	4	24.11
453	151	2026-07-13	13	8	16.97
454	152	2026-09-11	7	9	82.06
455	152	2026-08-12	12	9	84.03
456	152	2026-07-13	7	7	96.79
457	153	2026-09-11	8	9	63.75
458	153	2026-08-12	5	10	55.98
459	153	2026-07-13	6	12	60.72
460	154	2026-09-11	3	7	13.59
461	154	2026-08-12	2	6	26.49
462	154	2026-07-13	5	5	22.64
463	155	2026-09-11	3	18	148.17
464	155	2026-08-12	5	17	140.06
465	155	2026-07-13	4	19	157.85
466	156	2026-09-11	19	16	166.27
467	156	2026-08-12	24	17	174.31
468	156	2026-07-13	23	15	177.79
469	157	2026-09-11	6	3	150.16
470	157	2026-08-12	5	1	152.58
471	157	2026-07-13	7	3	153.42
472	158	2026-09-11	16	19	41.62
473	158	2026-08-12	22	19	28.05
474	158	2026-07-13	20	16	34.31
475	159	2026-09-11	13	20	163.87
476	159	2026-08-12	12	19	162.66
477	159	2026-07-13	16	22	159.25
478	160	2026-09-11	22	21	163.55
479	160	2026-08-12	22	20	179.22
480	160	2026-07-13	20	17	155.73
481	161	2026-09-11	20	20	164.88
482	161	2026-08-12	25	18	162.14
483	161	2026-07-13	19	19	152.98
484	162	2026-09-11	22	1	35.58
485	162	2026-08-12	23	3	26.62
486	162	2026-07-13	23	3	22.89
487	163	2026-09-11	13	20	13.62
488	163	2026-08-12	12	22	9.64
489	163	2026-07-13	14	20	14.66
490	164	2026-09-11	12	13	151.03
491	164	2026-08-12	12	13	165.72
492	164	2026-07-13	12	14	164.89
493	165	2026-09-11	0	6	141.22
494	165	2026-08-12	2	7	141.98
495	165	2026-07-13	0	7	149.19
496	166	2026-09-11	10	18	19.36
497	166	2026-08-12	11	19	9.23
498	166	2026-07-13	10	22	13.99
499	167	2026-09-11	22	11	32.57
500	167	2026-08-12	25	12	32.88
501	167	2026-07-13	22	14	52.62
502	168	2026-09-11	16	7	1.00
503	168	2026-08-12	13	5	11.24
504	168	2026-07-13	13	7	4.74
505	169	2026-09-11	7	19	12.25
506	169	2026-08-12	8	18	26.17
507	169	2026-07-13	3	22	23.30
508	170	2026-09-11	27	5	58.04
509	170	2026-08-12	26	7	56.74
510	170	2026-07-13	24	7	54.34
511	171	2026-09-11	4	7	117.29
512	171	2026-08-12	3	5	111.95
513	171	2026-07-13	4	4	97.04
514	172	2026-09-11	15	10	155.71
515	172	2026-08-12	16	11	155.70
516	172	2026-07-13	20	7	151.60
517	173	2026-09-11	2	17	150.71
518	173	2026-08-12	0	16	155.23
519	173	2026-07-13	3	15	164.19
520	174	2026-09-11	19	13	12.82
521	174	2026-08-12	18	16	1.00
522	174	2026-07-13	19	14	21.60
523	175	2026-09-11	24	11	160.89
524	175	2026-08-12	27	11	173.80
525	175	2026-07-13	27	12	180.38
526	176	2026-09-11	9	13	94.89
527	176	2026-08-12	12	17	114.92
528	176	2026-07-13	14	14	112.56
529	177	2026-09-11	19	19	146.50
530	177	2026-08-12	21	18	137.33
531	177	2026-07-13	17	15	142.60
532	178	2026-09-11	15	14	96.01
533	178	2026-08-12	11	12	107.39
534	178	2026-07-13	11	10	101.58
535	179	2026-09-11	20	21	42.66
536	179	2026-08-12	23	20	57.04
537	179	2026-07-13	21	21	57.90
538	180	2026-09-11	17	1	32.28
539	180	2026-08-12	21	3	20.77
540	180	2026-07-13	19	1	29.26
541	181	2026-09-11	26	11	73.91
542	181	2026-08-12	22	11	68.29
543	181	2026-07-13	27	15	79.25
544	182	2026-09-11	8	6	89.66
545	182	2026-08-12	12	8	89.95
546	182	2026-07-13	10	8	68.75
547	183	2026-09-11	26	9	172.68
548	183	2026-08-12	24	9	169.70
549	183	2026-07-13	28	10	178.53
550	184	2026-09-11	12	10	30.14
551	184	2026-08-12	12	10	31.72
552	184	2026-07-13	15	10	18.28
553	185	2026-09-11	22	19	63.03
554	185	2026-08-12	25	19	40.03
555	185	2026-07-13	24	18	64.86
556	186	2026-09-11	16	9	120.37
557	186	2026-08-12	16	11	116.22
558	186	2026-07-13	14	10	118.69
559	187	2026-09-11	14	7	76.86
560	187	2026-08-12	15	6	92.72
561	187	2026-07-13	16	6	87.77
562	188	2026-09-11	16	19	12.65
563	188	2026-08-12	20	17	11.85
564	188	2026-07-13	17	19	9.18
565	189	2026-09-11	5	14	147.03
566	189	2026-08-12	7	12	152.44
567	189	2026-07-13	6	14	156.41
568	190	2026-09-11	3	3	123.68
569	190	2026-08-12	1	3	120.23
570	190	2026-07-13	1	7	118.97
571	191	2026-09-11	8	17	162.67
572	191	2026-08-12	5	19	164.79
573	191	2026-07-13	6	18	140.79
574	192	2026-09-11	20	20	82.31
575	192	2026-08-12	24	17	79.38
576	192	2026-07-13	20	20	73.91
577	193	2026-09-11	12	11	120.94
578	193	2026-08-12	14	11	101.98
579	193	2026-07-13	16	11	119.33
580	194	2026-09-11	14	18	73.79
581	194	2026-08-12	16	18	74.81
582	194	2026-07-13	12	20	77.31
583	195	2026-09-11	28	13	27.01
584	195	2026-08-12	28	11	6.15
585	195	2026-07-13	28	12	14.03
586	196	2026-09-11	11	13	21.42
587	196	2026-08-12	10	11	23.72
588	196	2026-07-13	7	10	46.96
589	197	2026-09-11	11	4	79.28
590	197	2026-08-12	10	5	98.53
591	197	2026-07-13	11	4	81.26
592	198	2026-09-11	16	7	115.20
593	198	2026-08-12	17	9	93.98
594	198	2026-07-13	17	6	102.65
595	199	2026-09-11	6	20	137.95
596	199	2026-08-12	2	18	145.62
597	199	2026-07-13	2	16	136.22
598	200	2026-09-11	4	8	28.47
599	200	2026-08-12	3	9	29.77
600	200	2026-07-13	1	5	19.72
601	201	2026-09-11	9	14	163.30
602	201	2026-08-12	9	17	177.13
603	201	2026-07-13	10	14	177.18
604	202	2026-09-11	16	11	131.81
605	202	2026-08-12	20	13	123.18
606	202	2026-07-13	21	11	124.06
607	203	2026-09-11	12	15	1.00
608	203	2026-08-12	14	11	1.00
609	203	2026-07-13	13	12	15.70
610	204	2026-09-11	18	5	33.19
611	204	2026-08-12	17	4	14.19
612	204	2026-07-13	18	3	23.61
613	205	2026-09-11	20	21	144.87
614	205	2026-08-12	26	17	161.08
615	205	2026-07-13	22	19	159.81
616	206	2026-09-11	5	20	168.24
617	206	2026-08-12	7	22	169.46
618	206	2026-07-13	7	22	173.44
619	207	2026-09-11	0	17	105.05
620	207	2026-08-12	6	15	112.86
621	207	2026-07-13	3	18	95.94
622	208	2026-09-11	0	7	146.09
623	208	2026-08-12	3	9	136.39
624	208	2026-07-13	2	9	143.76
625	209	2026-09-11	5	5	132.13
626	209	2026-08-12	6	9	137.74
627	209	2026-07-13	11	7	110.35
628	210	2026-09-11	14	7	135.96
629	210	2026-08-12	12	6	140.35
630	210	2026-07-13	13	5	130.80
631	211	2026-09-11	12	5	130.11
632	211	2026-08-12	12	7	148.00
633	211	2026-07-13	12	7	154.04
634	212	2026-09-11	16	18	162.12
635	212	2026-08-12	15	17	152.66
636	212	2026-07-13	17	18	162.77
637	213	2026-09-11	0	11	172.24
638	213	2026-08-12	0	8	154.02
639	213	2026-07-13	2	8	146.40
640	214	2026-09-11	22	7	120.83
641	214	2026-08-12	27	3	110.36
642	214	2026-07-13	28	4	126.65
643	215	2026-09-11	9	3	66.93
644	215	2026-08-12	10	1	58.39
645	215	2026-07-13	8	2	67.09
646	216	2026-09-11	8	14	72.67
647	216	2026-08-12	10	16	78.66
648	216	2026-07-13	9	12	76.47
649	217	2026-09-11	8	19	107.08
650	217	2026-08-12	5	16	92.87
651	217	2026-07-13	8	17	107.34
652	218	2026-09-11	16	14	33.42
653	218	2026-08-12	15	14	16.35
654	218	2026-07-13	18	11	32.30
655	219	2026-09-11	6	3	96.74
656	219	2026-08-12	7	0	87.93
657	219	2026-07-13	9	2	82.56
658	220	2026-09-11	3	6	80.14
659	220	2026-08-12	3	3	91.96
660	220	2026-07-13	4	6	73.78
661	221	2026-09-11	13	2	126.39
662	221	2026-08-12	16	3	132.61
663	221	2026-07-13	13	5	129.03
664	222	2026-09-11	17	9	132.76
665	222	2026-08-12	17	7	137.99
666	222	2026-07-13	20	9	115.36
667	223	2026-09-11	15	13	79.91
668	223	2026-08-12	20	11	87.59
669	223	2026-07-13	15	10	88.25
670	224	2026-09-11	7	11	72.45
671	224	2026-08-12	11	10	92.41
672	224	2026-07-13	5	13	84.26
673	225	2026-09-11	9	8	66.28
674	225	2026-08-12	9	6	50.87
675	225	2026-07-13	7	5	74.90
676	226	2026-09-11	19	10	42.57
677	226	2026-08-12	17	13	64.20
678	226	2026-07-13	19	12	38.95
679	227	2026-09-11	22	15	99.74
680	227	2026-08-12	21	14	93.34
681	227	2026-07-13	23	15	96.01
682	228	2026-09-11	16	14	18.58
683	228	2026-08-12	15	15	22.38
684	228	2026-07-13	14	11	23.74
685	229	2026-09-11	15	9	105.09
686	229	2026-08-12	17	13	110.28
687	229	2026-07-13	15	11	101.97
688	230	2026-09-11	22	1	98.88
689	230	2026-08-12	20	0	97.04
690	230	2026-07-13	20	1	100.30
691	231	2026-09-11	5	18	87.22
692	231	2026-08-12	9	17	61.33
693	231	2026-07-13	4	16	61.62
694	232	2026-09-11	18	10	13.27
695	232	2026-08-12	21	10	1.00
696	232	2026-07-13	21	14	25.37
697	233	2026-09-11	22	1	53.44
698	233	2026-08-12	21	5	42.29
699	233	2026-07-13	17	3	48.97
700	234	2026-09-11	20	12	122.29
701	234	2026-08-12	17	10	141.49
702	234	2026-07-13	21	8	125.82
703	235	2026-09-11	22	4	119.90
704	235	2026-08-12	22	7	131.21
705	235	2026-07-13	18	3	134.37
706	236	2026-09-11	21	11	13.43
707	236	2026-08-12	24	12	13.80
708	236	2026-07-13	27	14	6.52
709	237	2026-09-11	12	11	136.27
710	237	2026-08-12	17	13	137.43
711	237	2026-07-13	15	15	136.28
712	238	2026-09-11	10	6	24.47
713	238	2026-08-12	11	5	17.20
714	238	2026-07-13	6	5	21.65
715	239	2026-09-11	8	13	134.56
716	239	2026-08-12	8	12	122.62
717	239	2026-07-13	8	12	118.89
718	240	2026-09-11	4	18	104.77
719	240	2026-08-12	8	20	125.90
720	240	2026-07-13	4	21	107.05
721	241	2026-09-11	24	4	76.75
722	241	2026-08-12	20	2	59.24
723	241	2026-07-13	18	4	73.76
724	242	2026-09-11	12	2	1.00
725	242	2026-08-12	18	3	10.23
726	242	2026-07-13	17	3	1.00
727	243	2026-09-11	2	15	125.46
728	243	2026-08-12	3	14	109.59
729	243	2026-07-13	2	16	129.04
730	244	2026-09-11	23	9	10.77
731	244	2026-08-12	22	10	17.42
732	244	2026-07-13	19	7	23.97
733	245	2026-09-11	7	6	129.88
734	245	2026-08-12	10	3	126.57
735	245	2026-07-13	12	7	133.85
736	246	2026-09-11	0	7	172.88
737	246	2026-08-12	4	7	172.84
738	246	2026-07-13	0	5	171.26
739	247	2026-09-11	7	9	25.79
740	247	2026-08-12	8	6	18.85
741	247	2026-07-13	6	5	34.46
742	248	2026-09-11	23	14	21.14
743	248	2026-08-12	25	17	1.06
744	248	2026-07-13	23	16	15.36
745	249	2026-09-11	3	8	173.97
746	249	2026-08-12	7	7	181.65
747	249	2026-07-13	3	7	156.20
748	250	2026-09-11	13	10	172.29
749	250	2026-08-12	12	10	170.77
750	250	2026-07-13	8	9	170.83
751	251	2026-09-11	8	17	156.79
752	251	2026-08-12	8	21	156.60
753	251	2026-07-13	9	20	169.97
754	252	2026-09-11	15	4	154.04
755	252	2026-08-12	10	7	155.03
756	252	2026-07-13	12	8	129.21
757	253	2026-09-11	0	18	166.40
758	253	2026-08-12	3	15	166.40
759	253	2026-07-13	0	19	176.58
760	254	2026-09-11	8	18	123.63
761	254	2026-08-12	10	15	123.14
762	254	2026-07-13	10	19	136.02
763	255	2026-09-11	12	4	61.38
764	255	2026-08-12	13	5	66.72
765	255	2026-07-13	14	4	49.27
766	256	2026-09-11	11	15	162.81
767	256	2026-08-12	8	14	162.18
768	256	2026-07-13	7	13	187.15
769	257	2026-09-11	6	17	71.20
770	257	2026-08-12	5	17	42.90
771	257	2026-07-13	8	20	72.04
772	258	2026-09-11	5	17	84.64
773	258	2026-08-12	10	20	102.44
774	258	2026-07-13	4	21	93.96
775	259	2026-09-11	18	4	36.41
776	259	2026-08-12	21	4	49.61
777	259	2026-07-13	18	2	52.82
778	260	2026-09-11	11	18	90.67
779	260	2026-08-12	12	19	82.59
780	260	2026-07-13	13	16	80.47
781	261	2026-09-11	15	3	72.76
782	261	2026-08-12	14	4	69.14
783	261	2026-07-13	18	3	66.03
784	262	2026-09-11	23	12	48.06
785	262	2026-08-12	20	8	41.62
786	262	2026-07-13	21	10	60.87
787	263	2026-09-11	3	4	176.11
788	263	2026-08-12	5	7	174.51
789	263	2026-07-13	3	4	172.90
790	264	2026-09-11	2	4	87.06
791	264	2026-08-12	2	2	67.57
792	264	2026-07-13	8	5	82.14
793	265	2026-09-11	18	18	48.19
794	265	2026-08-12	19	19	61.25
795	265	2026-07-13	15	22	32.45
796	266	2026-09-11	17	6	76.92
797	266	2026-08-12	17	8	82.47
798	266	2026-07-13	18	6	63.80
799	267	2026-09-11	24	14	111.20
800	267	2026-08-12	22	17	128.47
801	267	2026-07-13	19	15	109.56
802	268	2026-09-11	23	17	49.42
803	268	2026-08-12	26	18	67.24
804	268	2026-07-13	24	18	47.11
805	269	2026-09-11	23	21	30.64
806	269	2026-08-12	18	20	26.72
807	269	2026-07-13	20	22	14.71
808	270	2026-09-11	1	11	74.08
809	270	2026-08-12	6	13	95.31
810	270	2026-07-13	2	14	81.69
811	271	2026-09-11	9	11	25.04
812	271	2026-08-12	11	9	23.71
813	271	2026-07-13	12	11	12.17
814	272	2026-09-11	6	3	99.66
815	272	2026-08-12	6	1	84.83
816	272	2026-07-13	6	3	84.89
817	273	2026-09-11	5	16	12.51
818	273	2026-08-12	3	16	36.59
819	273	2026-07-13	2	17	26.57
820	274	2026-09-11	21	17	88.31
821	274	2026-08-12	18	18	93.07
822	274	2026-07-13	18	16	85.60
823	275	2026-09-11	24	18	149.01
824	275	2026-08-12	23	19	165.24
825	275	2026-07-13	24	18	169.01
826	276	2026-09-11	1	7	158.65
827	276	2026-08-12	1	8	145.19
828	276	2026-07-13	1	6	138.87
829	277	2026-09-11	3	0	64.13
830	277	2026-08-12	5	0	36.88
831	277	2026-07-13	2	1	53.27
832	278	2026-09-11	17	12	134.22
833	278	2026-08-12	17	13	144.20
834	278	2026-07-13	18	15	132.70
835	279	2026-09-11	24	8	61.36
836	279	2026-08-12	24	6	50.32
837	279	2026-07-13	20	9	45.92
838	280	2026-09-11	6	13	108.71
839	280	2026-08-12	3	16	114.62
840	280	2026-07-13	6	15	122.01
841	281	2026-09-11	6	3	43.03
842	281	2026-08-12	5	5	41.40
843	281	2026-07-13	2	5	31.97
844	282	2026-09-11	20	7	20.84
845	282	2026-08-12	19	7	1.48
846	282	2026-07-13	22	7	1.00
847	283	2026-09-11	12	7	180.59
848	283	2026-08-12	12	4	162.50
849	283	2026-07-13	10	5	184.15
850	284	2026-09-11	16	6	107.56
851	284	2026-08-12	14	6	95.87
852	284	2026-07-13	13	6	113.54
853	285	2026-09-11	20	12	18.24
854	285	2026-08-12	22	12	39.48
855	285	2026-07-13	20	10	22.66
856	286	2026-09-11	8	4	26.14
857	286	2026-08-12	8	4	9.53
858	286	2026-07-13	10	8	10.84
859	287	2026-09-11	4	19	163.89
860	287	2026-08-12	3	19	156.96
861	287	2026-07-13	4	18	161.56
862	288	2026-09-11	2	17	155.11
863	288	2026-08-12	2	13	155.06
864	288	2026-07-13	3	15	163.79
865	289	2026-09-11	9	7	163.77
866	289	2026-08-12	9	9	167.43
867	289	2026-07-13	9	7	162.50
868	290	2026-09-11	16	13	25.70
869	290	2026-08-12	16	13	34.19
870	290	2026-07-13	15	16	8.79
871	291	2026-09-11	19	6	103.74
872	291	2026-08-12	16	4	96.93
873	291	2026-07-13	20	6	79.85
874	292	2026-09-11	18	14	105.50
875	292	2026-08-12	12	17	106.95
876	292	2026-07-13	17	13	112.18
877	293	2026-09-11	25	20	137.75
878	293	2026-08-12	26	21	141.17
879	293	2026-07-13	21	19	121.08
880	294	2026-09-11	19	6	75.29
881	294	2026-08-12	21	7	80.48
882	294	2026-07-13	18	6	71.24
883	295	2026-09-11	5	16	191.38
884	295	2026-08-12	1	15	173.40
885	295	2026-07-13	5	16	183.15
886	296	2026-09-11	9	18	32.38
887	296	2026-08-12	7	18	57.24
888	296	2026-07-13	11	17	52.33
889	297	2026-09-11	3	20	52.75
890	297	2026-08-12	7	22	37.69
891	297	2026-07-13	2	22	47.80
892	298	2026-09-11	20	5	165.26
893	298	2026-08-12	21	2	147.03
894	298	2026-07-13	20	4	166.97
895	299	2026-09-11	19	14	183.46
896	299	2026-08-12	14	12	164.59
897	299	2026-07-13	20	11	168.17
898	300	2026-09-11	16	13	172.29
899	300	2026-08-12	11	13	172.02
900	300	2026-07-13	15	12	166.02
901	301	2026-09-11	17	9	28.10
902	301	2026-08-12	21	12	45.18
903	301	2026-07-13	16	10	49.20
904	302	2026-09-11	2	17	70.76
905	302	2026-08-12	3	17	74.65
906	302	2026-07-13	0	15	58.30
907	303	2026-09-11	7	5	50.31
908	303	2026-08-12	10	5	72.22
909	303	2026-07-13	5	2	49.24
910	304	2026-09-11	16	15	132.59
911	304	2026-08-12	15	15	147.09
912	304	2026-07-13	16	18	121.59
913	305	2026-09-11	12	2	22.29
914	305	2026-08-12	13	4	19.97
915	305	2026-07-13	11	3	15.41
916	306	2026-09-11	17	17	104.55
917	306	2026-08-12	16	18	94.27
918	306	2026-07-13	12	18	109.38
919	307	2026-09-11	4	13	135.94
920	307	2026-08-12	5	15	135.61
921	307	2026-07-13	0	17	121.33
922	308	2026-09-11	4	10	153.41
923	308	2026-08-12	7	10	136.55
924	308	2026-07-13	10	6	145.40
925	309	2026-09-11	1	10	69.51
926	309	2026-08-12	5	8	59.80
927	309	2026-07-13	0	12	75.82
928	310	2026-09-11	11	3	91.35
929	310	2026-08-12	15	1	82.12
930	310	2026-07-13	15	2	83.87
931	311	2026-09-11	5	16	181.09
932	311	2026-08-12	11	20	165.39
933	311	2026-07-13	6	16	158.52
934	312	2026-09-11	21	16	66.55
935	312	2026-08-12	22	13	65.20
936	312	2026-07-13	21	13	56.04
937	313	2026-09-11	15	11	138.55
938	313	2026-08-12	11	12	148.15
939	313	2026-07-13	10	11	157.56
940	314	2026-09-11	0	8	105.78
941	314	2026-08-12	4	10	79.58
942	314	2026-07-13	1	11	91.26
943	315	2026-09-11	0	19	116.76
944	315	2026-08-12	3	16	123.15
945	315	2026-07-13	0	19	122.86
946	316	2026-09-11	5	20	160.07
947	316	2026-08-12	1	18	136.27
948	316	2026-07-13	2	17	150.12
949	317	2026-09-11	17	0	59.54
950	317	2026-08-12	14	3	54.81
951	317	2026-07-13	16	3	49.75
952	318	2026-09-11	10	3	35.10
953	318	2026-08-12	5	6	15.66
954	318	2026-07-13	7	5	29.71
955	319	2026-09-11	2	18	61.61
956	319	2026-08-12	7	15	45.74
957	319	2026-07-13	6	18	69.78
958	320	2026-09-11	15	17	103.95
959	320	2026-08-12	15	14	98.11
960	320	2026-07-13	19	13	109.84
961	321	2026-09-11	28	9	142.15
962	321	2026-08-12	22	11	132.17
963	321	2026-07-13	22	10	139.99
964	322	2026-09-11	6	8	116.44
965	322	2026-08-12	11	9	143.12
966	322	2026-07-13	5	8	127.17
967	323	2026-09-11	18	13	149.47
968	323	2026-08-12	20	14	153.26
969	323	2026-07-13	20	13	171.35
970	324	2026-09-11	3	13	62.31
971	324	2026-08-12	5	10	55.08
972	324	2026-07-13	8	12	56.99
973	325	2026-09-11	26	18	92.40
974	325	2026-08-12	21	15	99.76
975	325	2026-07-13	23	15	84.79
976	326	2026-09-11	8	20	10.18
977	326	2026-08-12	7	20	6.71
978	326	2026-07-13	8	17	2.59
979	327	2026-09-11	2	12	5.78
980	327	2026-08-12	6	12	2.42
981	327	2026-07-13	4	11	26.65
982	328	2026-09-11	11	10	141.21
983	328	2026-08-12	11	11	153.01
984	328	2026-07-13	8	11	148.75
985	329	2026-09-11	3	10	151.18
986	329	2026-08-12	6	13	138.92
987	329	2026-07-13	1	13	164.23
988	330	2026-09-11	23	11	140.53
989	330	2026-08-12	19	12	128.11
990	330	2026-07-13	21	15	142.40
991	331	2026-09-11	16	5	1.00
992	331	2026-08-12	18	6	1.79
993	331	2026-07-13	17	8	1.00
994	332	2026-09-11	21	18	39.29
995	332	2026-08-12	23	16	23.84
996	332	2026-07-13	21	17	19.71
997	333	2026-09-11	23	9	63.83
998	333	2026-08-12	24	11	72.17
999	333	2026-07-13	25	9	79.40
1000	334	2026-09-11	11	8	89.99
1001	334	2026-08-12	11	8	104.23
1002	334	2026-07-13	9	5	78.88
1003	335	2026-09-11	17	7	120.00
1004	335	2026-08-12	15	10	117.90
1005	335	2026-07-13	17	6	130.92
1006	336	2026-09-11	4	4	165.45
1007	336	2026-08-12	9	0	157.94
1008	336	2026-07-13	6	3	147.79
1009	337	2026-09-11	25	2	50.32
1010	337	2026-08-12	19	4	43.98
1011	337	2026-07-13	25	3	38.28
1012	338	2026-09-11	4	16	66.51
1013	338	2026-08-12	10	16	47.91
1014	338	2026-07-13	4	16	52.50
1015	339	2026-09-11	21	10	100.87
1016	339	2026-08-12	21	8	85.19
1017	339	2026-07-13	24	7	96.69
1018	340	2026-09-11	13	9	127.52
1019	340	2026-08-12	11	9	145.39
1020	340	2026-07-13	16	9	139.59
1021	341	2026-09-11	3	2	170.38
1022	341	2026-08-12	0	1	147.44
1023	341	2026-07-13	2	2	149.32
1024	342	2026-09-11	23	9	46.31
1025	342	2026-08-12	26	6	41.02
1026	342	2026-07-13	27	8	35.26
1027	343	2026-09-11	18	15	79.02
1028	343	2026-08-12	15	15	104.05
1029	343	2026-07-13	18	14	96.29
1030	344	2026-09-11	1	2	169.00
1031	344	2026-08-12	3	1	152.31
1032	344	2026-07-13	0	3	142.93
1033	345	2026-09-11	4	11	108.26
1034	345	2026-08-12	2	11	108.05
1035	345	2026-07-13	3	14	128.97
1036	346	2026-09-11	14	11	120.31
1037	346	2026-08-12	14	7	114.35
1038	346	2026-07-13	15	9	135.50
1039	347	2026-09-11	4	8	84.01
1040	347	2026-08-12	6	8	79.99
1041	347	2026-07-13	4	5	57.33
1042	348	2026-09-11	27	6	15.34
1043	348	2026-08-12	22	2	1.00
1044	348	2026-07-13	28	2	2.93
1045	349	2026-09-11	11	13	134.67
1046	349	2026-08-12	10	11	157.14
1047	349	2026-07-13	8	12	159.07
1048	350	2026-09-11	5	10	86.92
1049	350	2026-08-12	2	14	70.74
1050	350	2026-07-13	1	14	91.18
1051	351	2026-09-11	10	17	159.22
1052	351	2026-08-12	11	16	182.67
1053	351	2026-07-13	10	18	158.45
1054	352	2026-09-11	23	18	179.61
1055	352	2026-08-12	24	21	176.12
1056	352	2026-07-13	23	17	171.71
1057	353	2026-09-11	19	13	33.77
1058	353	2026-08-12	15	17	45.51
1059	353	2026-07-13	13	15	45.71
1060	354	2026-09-11	25	5	166.10
1061	354	2026-08-12	26	6	164.11
1062	354	2026-07-13	25	8	147.38
1063	355	2026-09-11	12	3	37.58
1064	355	2026-08-12	13	7	29.77
1065	355	2026-07-13	13	4	38.01
1066	356	2026-09-11	12	4	137.12
1067	356	2026-08-12	10	1	128.58
1068	356	2026-07-13	13	5	132.85
1069	357	2026-09-11	20	14	23.80
1070	357	2026-08-12	15	14	6.61
1071	357	2026-07-13	18	15	1.35
1072	358	2026-09-11	11	18	86.05
1073	358	2026-08-12	11	17	88.50
1074	358	2026-07-13	12	16	74.97
1075	359	2026-09-11	8	14	131.92
1076	359	2026-08-12	7	15	109.82
1077	359	2026-07-13	11	13	133.57
1078	360	2026-09-11	15	4	47.69
1079	360	2026-08-12	11	7	48.66
1080	360	2026-07-13	15	6	47.34
1081	361	2026-09-11	20	18	150.98
1082	361	2026-08-12	26	20	146.86
1083	361	2026-07-13	26	21	157.99
1084	362	2026-09-11	23	13	119.30
1085	362	2026-08-12	20	13	128.88
1086	362	2026-07-13	20	13	129.43
1087	363	2026-09-11	12	9	142.87
1088	363	2026-08-12	11	9	160.22
1089	363	2026-07-13	15	12	162.17
1090	364	2026-09-11	5	3	135.50
1091	364	2026-08-12	4	3	128.44
1092	364	2026-07-13	5	3	142.09
1093	365	2026-09-11	8	9	15.16
1094	365	2026-08-12	6	8	17.16
1095	365	2026-07-13	12	8	1.00
1096	366	2026-09-11	3	15	84.68
1097	366	2026-08-12	5	17	86.79
1098	366	2026-07-13	3	17	88.99
1099	367	2026-09-11	6	16	105.02
1100	367	2026-08-12	7	14	108.17
1101	367	2026-07-13	3	13	108.86
1102	368	2026-09-11	19	19	91.78
1103	368	2026-08-12	18	19	80.66
1104	368	2026-07-13	13	16	80.50
1105	369	2026-09-11	12	5	147.18
1106	369	2026-08-12	11	2	162.26
1107	369	2026-07-13	10	6	146.67
1108	370	2026-09-11	20	12	53.03
1109	370	2026-08-12	22	13	41.78
1110	370	2026-07-13	22	16	36.24
1111	371	2026-09-11	22	9	34.05
1112	371	2026-08-12	23	8	53.45
1113	371	2026-07-13	19	9	45.38
1114	372	2026-09-11	24	2	154.41
1115	372	2026-08-12	22	3	158.09
1116	372	2026-07-13	24	2	173.23
1117	373	2026-09-11	20	4	31.00
1118	373	2026-08-12	16	2	24.49
1119	373	2026-07-13	15	5	25.50
1120	374	2026-09-11	7	8	181.96
1121	374	2026-08-12	3	11	155.76
1122	374	2026-07-13	7	9	171.25
1123	375	2026-09-11	0	1	163.34
1124	375	2026-08-12	3	3	137.38
1125	375	2026-07-13	4	2	162.56
1126	376	2026-09-11	7	8	98.74
1127	376	2026-08-12	11	8	102.85
1128	376	2026-07-13	9	5	106.67
1129	377	2026-09-11	28	0	118.48
1130	377	2026-08-12	27	0	99.55
1131	377	2026-07-13	28	0	103.61
1132	378	2026-09-11	25	18	153.48
1133	378	2026-08-12	26	19	164.99
1134	378	2026-07-13	22	17	170.92
1135	379	2026-09-11	7	2	168.19
1136	379	2026-08-12	5	2	175.52
1137	379	2026-07-13	6	5	173.29
1138	380	2026-09-11	11	14	129.47
1139	380	2026-08-12	12	15	129.13
1140	380	2026-07-13	7	16	110.23
1141	381	2026-09-11	18	20	151.09
1142	381	2026-08-12	20	17	154.84
1143	381	2026-07-13	16	18	133.84
1144	382	2026-09-11	25	4	47.89
1145	382	2026-08-12	23	3	63.98
1146	382	2026-07-13	22	4	52.89
1147	383	2026-09-11	1	18	13.87
1148	383	2026-08-12	1	18	5.22
1149	383	2026-07-13	5	20	7.40
1150	384	2026-09-11	7	19	107.02
1151	384	2026-08-12	10	20	107.17
1152	384	2026-07-13	7	18	89.84
1153	385	2026-09-11	10	9	9.81
1154	385	2026-08-12	6	8	25.22
1155	385	2026-07-13	4	8	26.88
1156	386	2026-09-11	3	9	38.47
1157	386	2026-08-12	1	6	65.41
1158	386	2026-07-13	0	8	59.65
1159	387	2026-09-11	27	19	114.16
1160	387	2026-08-12	23	22	129.67
1161	387	2026-07-13	24	18	130.71
1162	388	2026-09-11	25	14	63.33
1163	388	2026-08-12	26	16	36.33
1164	388	2026-07-13	28	15	47.17
1165	389	2026-09-11	11	19	98.09
1166	389	2026-08-12	11	16	89.76
1167	389	2026-07-13	15	15	73.41
1168	390	2026-09-11	5	12	53.35
1169	390	2026-08-12	3	9	66.27
1170	390	2026-07-13	3	10	69.13
1171	391	2026-09-11	20	7	30.77
1172	391	2026-08-12	22	5	24.72
1173	391	2026-07-13	20	5	29.55
1174	392	2026-09-11	11	5	53.73
1175	392	2026-08-12	10	6	52.14
1176	392	2026-07-13	11	7	49.45
1177	393	2026-09-11	24	6	73.97
1178	393	2026-08-12	22	9	92.18
1179	393	2026-07-13	23	7	64.02
1180	394	2026-09-11	12	6	156.99
1181	394	2026-08-12	11	5	160.66
1182	394	2026-07-13	13	5	171.13
1183	395	2026-09-11	26	18	172.30
1184	395	2026-08-12	28	21	158.63
1185	395	2026-07-13	28	21	168.82
1186	396	2026-09-11	14	16	62.49
1187	396	2026-08-12	11	14	77.49
1188	396	2026-07-13	11	15	71.48
1189	397	2026-09-11	17	15	39.68
1190	397	2026-08-12	20	13	25.67
1191	397	2026-07-13	16	13	27.68
1192	398	2026-09-11	25	17	180.60
1193	398	2026-08-12	25	18	156.70
1194	398	2026-07-13	25	17	160.01
1195	399	2026-09-11	24	4	64.13
1196	399	2026-08-12	19	3	65.94
1197	399	2026-07-13	19	0	42.38
1198	400	2026-09-11	9	14	96.93
1199	400	2026-08-12	8	11	92.86
1200	400	2026-07-13	12	10	90.22
1201	401	2026-09-11	6	13	126.99
1202	401	2026-08-12	3	11	121.41
1203	401	2026-07-13	1	12	142.77
1204	402	2026-09-11	22	11	78.61
1205	402	2026-08-12	17	15	72.72
1206	402	2026-07-13	20	13	83.25
1207	403	2026-09-11	9	5	8.71
1208	403	2026-08-12	10	3	8.54
1209	403	2026-07-13	11	4	9.74
1210	404	2026-09-11	14	4	173.11
1211	404	2026-08-12	16	1	180.59
1212	404	2026-07-13	15	0	182.61
1213	405	2026-09-11	5	12	124.54
1214	405	2026-08-12	1	11	125.45
1215	405	2026-07-13	2	9	119.53
1216	406	2026-09-11	26	15	104.46
1217	406	2026-08-12	20	13	83.05
1218	406	2026-07-13	26	13	80.49
1219	407	2026-09-11	4	6	22.15
1220	407	2026-08-12	2	4	19.36
1221	407	2026-07-13	0	6	12.22
1222	408	2026-09-11	11	20	80.41
1223	408	2026-08-12	7	19	94.98
1224	408	2026-07-13	7	21	98.71
1225	409	2026-09-11	21	6	96.35
1226	409	2026-08-12	25	9	87.35
1227	409	2026-07-13	21	7	93.19
1228	410	2026-09-11	15	7	155.04
1229	410	2026-08-12	18	5	130.92
1230	410	2026-07-13	14	5	133.72
1231	411	2026-09-11	19	17	82.15
1232	411	2026-08-12	20	18	84.28
1233	411	2026-07-13	23	17	70.80
1234	412	2026-09-11	3	18	57.68
1235	412	2026-08-12	3	19	41.75
1236	412	2026-07-13	3	22	46.28
1237	413	2026-09-11	8	5	53.67
1238	413	2026-08-12	7	9	65.14
1239	413	2026-07-13	5	6	55.95
1240	414	2026-09-11	4	4	178.33
1241	414	2026-08-12	1	8	160.54
1242	414	2026-07-13	4	5	174.69
1243	415	2026-09-11	13	13	160.52
1244	415	2026-08-12	9	13	167.84
1245	415	2026-07-13	7	10	175.35
1246	416	2026-09-11	23	17	155.32
1247	416	2026-08-12	24	18	174.00
1248	416	2026-07-13	22	20	159.88
1249	417	2026-09-11	21	11	54.46
1250	417	2026-08-12	17	14	69.47
1251	417	2026-07-13	20	14	60.40
1252	418	2026-09-11	2	17	165.23
1253	418	2026-08-12	0	16	180.87
1254	418	2026-07-13	3	16	158.46
1255	419	2026-09-11	4	9	30.75
1256	419	2026-08-12	9	10	30.12
1257	419	2026-07-13	7	10	16.63
1258	420	2026-09-11	4	13	22.89
1259	420	2026-08-12	0	13	24.11
1260	420	2026-07-13	2	14	7.09
1261	421	2026-09-11	18	15	80.54
1262	421	2026-08-12	12	17	87.50
1263	421	2026-07-13	17	17	96.47
1264	422	2026-09-11	16	16	32.72
1265	422	2026-08-12	20	14	38.04
1266	422	2026-07-13	19	15	17.31
1267	423	2026-09-11	2	8	20.81
1268	423	2026-08-12	1	6	23.48
1269	423	2026-07-13	0	8	29.59
1270	424	2026-09-11	10	5	86.90
1271	424	2026-08-12	15	7	78.20
1272	424	2026-07-13	14	7	83.60
1273	425	2026-09-11	16	11	31.17
1274	425	2026-08-12	17	7	14.00
1275	425	2026-07-13	20	8	19.60
1276	426	2026-09-11	7	13	125.70
1277	426	2026-08-12	9	11	135.52
1278	426	2026-07-13	5	15	141.21
1279	427	2026-09-11	16	17	133.06
1280	427	2026-08-12	14	13	126.26
1281	427	2026-07-13	18	13	114.91
1282	428	2026-09-11	21	20	156.18
1283	428	2026-08-12	22	17	158.40
1284	428	2026-07-13	19	20	151.85
1285	429	2026-09-11	18	10	8.34
1286	429	2026-08-12	20	10	35.33
1287	429	2026-07-13	16	11	28.76
1288	430	2026-09-11	20	2	92.96
1289	430	2026-08-12	18	4	98.01
1290	430	2026-07-13	21	2	96.17
1291	431	2026-09-11	19	10	93.46
1292	431	2026-08-12	18	11	81.55
1293	431	2026-07-13	24	13	85.98
1294	432	2026-09-11	17	5	16.04
1295	432	2026-08-12	18	3	17.38
1296	432	2026-07-13	15	7	10.53
1297	433	2026-09-11	5	2	13.90
1298	433	2026-08-12	10	1	33.35
1299	433	2026-07-13	6	4	15.34
1300	434	2026-09-11	21	6	89.92
1301	434	2026-08-12	17	7	100.02
1302	434	2026-07-13	17	6	92.42
1303	435	2026-09-11	5	0	161.77
1304	435	2026-08-12	8	0	169.24
1305	435	2026-07-13	6	3	170.14
1306	436	2026-09-11	15	1	173.57
1307	436	2026-08-12	13	0	171.98
1308	436	2026-07-13	11	3	162.28
1309	437	2026-09-11	14	6	43.04
1310	437	2026-08-12	18	10	21.95
1311	437	2026-07-13	16	9	14.24
1312	438	2026-09-11	24	20	17.59
1313	438	2026-08-12	21	21	1.00
1314	438	2026-07-13	18	21	1.00
1315	439	2026-09-11	21	11	164.62
1316	439	2026-08-12	18	10	163.65
1317	439	2026-07-13	16	10	182.97
1318	440	2026-09-11	22	6	20.99
1319	440	2026-08-12	26	8	16.85
1320	440	2026-07-13	20	10	7.68
1321	441	2026-09-11	11	13	161.57
1322	441	2026-08-12	11	9	169.37
1323	441	2026-07-13	10	13	161.41
1324	442	2026-09-11	18	18	114.15
1325	442	2026-08-12	18	16	112.65
1326	442	2026-07-13	23	16	112.29
1327	443	2026-09-11	16	13	53.50
1328	443	2026-08-12	15	16	50.19
1329	443	2026-07-13	16	14	54.09
1330	444	2026-09-11	6	3	16.99
1331	444	2026-08-12	8	5	20.41
1332	444	2026-07-13	5	1	23.27
1333	445	2026-09-11	19	18	69.99
1334	445	2026-08-12	20	19	83.07
1335	445	2026-07-13	16	18	63.65
1336	446	2026-09-11	23	5	75.76
1337	446	2026-08-12	22	5	73.98
1338	446	2026-07-13	24	8	72.05
1339	447	2026-09-11	19	19	146.07
1340	447	2026-08-12	15	18	147.08
1341	447	2026-07-13	15	17	128.19
1342	448	2026-09-11	12	11	177.32
1343	448	2026-08-12	15	10	153.26
1344	448	2026-07-13	13	10	172.60
1345	449	2026-09-11	19	9	51.80
1346	449	2026-08-12	19	9	30.70
1347	449	2026-07-13	18	12	49.48
1348	450	2026-09-11	22	6	1.00
1349	450	2026-08-12	26	7	8.96
1350	450	2026-07-13	26	9	1.00
1351	451	2026-09-11	6	11	155.06
1352	451	2026-08-12	7	11	145.98
1353	451	2026-07-13	4	8	166.01
1354	452	2026-09-11	14	3	112.67
1355	452	2026-08-12	14	3	96.22
1356	452	2026-07-13	11	2	102.97
1357	453	2026-09-11	26	6	156.48
1358	453	2026-08-12	27	2	179.95
1359	453	2026-07-13	22	4	183.25
1360	454	2026-09-11	9	9	87.70
1361	454	2026-08-12	15	13	65.42
1362	454	2026-07-13	12	12	63.61
1363	455	2026-09-11	11	4	3.99
1364	455	2026-08-12	11	5	21.54
1365	455	2026-07-13	7	1	25.47
1366	456	2026-09-11	21	21	80.86
1367	456	2026-08-12	20	21	87.70
1368	456	2026-07-13	21	17	102.29
1369	457	2026-09-11	13	10	76.30
1370	457	2026-08-12	13	11	99.38
1371	457	2026-07-13	15	14	80.94
1372	458	2026-09-11	21	8	25.34
1373	458	2026-08-12	16	8	20.98
1374	458	2026-07-13	20	9	26.45
1375	459	2026-09-11	10	9	98.38
1376	459	2026-08-12	8	9	82.01
1377	459	2026-07-13	11	9	75.60
1378	460	2026-09-11	21	15	84.16
1379	460	2026-08-12	21	17	96.86
1380	460	2026-07-13	23	17	90.93
1381	461	2026-09-11	20	14	1.08
1382	461	2026-08-12	21	15	12.54
1383	461	2026-07-13	24	17	1.65
1384	462	2026-09-11	9	9	50.75
1385	462	2026-08-12	10	10	67.76
1386	462	2026-07-13	8	11	58.98
1387	463	2026-09-11	17	3	19.19
1388	463	2026-08-12	23	6	27.84
1389	463	2026-07-13	20	5	24.16
1390	464	2026-09-11	15	11	104.21
1391	464	2026-08-12	20	12	99.68
1392	464	2026-07-13	17	11	103.43
1393	465	2026-09-11	8	6	157.62
1394	465	2026-08-12	13	4	168.68
1395	465	2026-07-13	11	2	179.30
1396	466	2026-09-11	7	4	75.91
1397	466	2026-08-12	7	1	87.24
1398	466	2026-07-13	6	0	77.57
1399	467	2026-09-11	11	18	34.10
1400	467	2026-08-12	10	20	28.30
1401	467	2026-07-13	9	22	49.85
1402	468	2026-09-11	6	11	92.98
1403	468	2026-08-12	9	11	79.87
1404	468	2026-07-13	7	12	75.90
1405	469	2026-09-11	19	13	36.63
1406	469	2026-08-12	21	13	23.47
1407	469	2026-07-13	21	15	33.80
1408	470	2026-09-11	10	10	107.54
1409	470	2026-08-12	14	10	93.42
1410	470	2026-07-13	11	12	98.76
1411	471	2026-09-11	8	9	117.79
1412	471	2026-08-12	6	11	119.83
1413	471	2026-07-13	8	9	145.21
1414	472	2026-09-11	2	4	49.08
1415	472	2026-08-12	0	2	50.13
1416	472	2026-07-13	0	3	53.35
1417	473	2026-09-11	19	14	139.35
1418	473	2026-08-12	25	12	147.49
1419	473	2026-07-13	21	13	160.08
1420	474	2026-09-11	21	6	24.35
1421	474	2026-08-12	23	7	26.93
1422	474	2026-07-13	20	8	25.76
1423	475	2026-09-11	14	4	29.01
1424	475	2026-08-12	16	4	38.30
1425	475	2026-07-13	14	4	23.45
1426	476	2026-09-11	14	12	153.68
1427	476	2026-08-12	16	9	142.24
1428	476	2026-07-13	15	13	145.47
1429	477	2026-09-11	20	12	52.50
1430	477	2026-08-12	18	13	43.87
1431	477	2026-07-13	18	15	40.83
1432	478	2026-09-11	9	3	31.06
1433	478	2026-08-12	14	0	25.81
1434	478	2026-07-13	14	2	28.36
1435	479	2026-09-11	7	3	150.57
1436	479	2026-08-12	9	1	129.77
1437	479	2026-07-13	5	0	148.13
1438	480	2026-09-11	1	12	55.92
1439	480	2026-08-12	3	10	69.79
1440	480	2026-07-13	0	12	50.57
1441	481	2026-09-11	17	10	47.89
1442	481	2026-08-12	18	11	61.94
1443	481	2026-07-13	18	13	55.67
1444	482	2026-09-11	26	13	95.84
1445	482	2026-08-12	24	11	106.19
1446	482	2026-07-13	27	13	101.33
1447	483	2026-09-11	6	12	60.97
1448	483	2026-08-12	3	14	57.87
1449	483	2026-07-13	6	14	52.78
1450	484	2026-09-11	22	17	126.32
1451	484	2026-08-12	24	15	135.27
1452	484	2026-07-13	19	17	120.83
1453	485	2026-09-11	15	11	166.03
1454	485	2026-08-12	14	10	169.42
1455	485	2026-07-13	11	9	168.94
1456	486	2026-09-11	21	9	24.74
1457	486	2026-08-12	24	9	28.59
1458	486	2026-07-13	24	12	37.42
1459	487	2026-09-11	14	14	116.86
1460	487	2026-08-12	10	13	119.05
1461	487	2026-07-13	10	17	123.30
1462	488	2026-09-11	12	8	118.96
1463	488	2026-08-12	12	9	123.06
1464	488	2026-07-13	15	11	113.61
1465	489	2026-09-11	19	16	71.12
1466	489	2026-08-12	19	16	59.52
1467	489	2026-07-13	19	15	65.06
1468	490	2026-09-11	15	18	97.32
1469	490	2026-08-12	14	15	81.29
1470	490	2026-07-13	9	17	89.17
1471	491	2026-09-11	5	2	155.89
1472	491	2026-08-12	10	5	162.89
1473	491	2026-07-13	4	5	175.02
1474	492	2026-09-11	2	17	19.21
1475	492	2026-08-12	5	13	22.04
1476	492	2026-07-13	7	13	26.19
1477	493	2026-09-11	10	15	110.67
1478	493	2026-08-12	11	14	103.17
1479	493	2026-07-13	10	13	105.47
1480	494	2026-09-11	19	16	79.60
1481	494	2026-08-12	20	17	87.03
1482	494	2026-07-13	19	18	101.44
1483	495	2026-09-11	16	12	52.31
1484	495	2026-08-12	19	9	55.71
1485	495	2026-07-13	15	11	69.57
1486	496	2026-09-11	12	12	28.86
1487	496	2026-08-12	10	14	27.18
1488	496	2026-07-13	10	10	38.24
1489	497	2026-09-11	22	5	36.17
1490	497	2026-08-12	26	8	36.28
1491	497	2026-07-13	24	6	50.43
1492	498	2026-09-11	20	13	13.52
1493	498	2026-08-12	18	11	14.54
1494	498	2026-07-13	21	11	10.12
1495	499	2026-09-11	20	7	105.02
1496	499	2026-08-12	22	7	109.01
1497	499	2026-07-13	17	5	114.44
1498	500	2026-09-11	4	10	47.51
1499	500	2026-08-12	10	10	58.63
1500	500	2026-07-13	10	11	36.50
\.


--
-- TOC entry 5050 (class 0 OID 16403)
-- Dependencies: 222
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscriptions (subscription_id, customer_id, plan_name, monthly_price, start_date, status, churned) FROM stdin;
1	1	Basic	29.00	2024-11-27	Cancelled	t
2	2	Premium	99.00	2024-10-21	Active	f
3	3	Standard	59.00	2025-03-21	Active	f
4	4	Basic	29.00	2024-12-18	Active	f
5	5	Basic	29.00	2024-07-17	Active	f
6	6	Standard	59.00	2023-06-05	Active	f
7	7	Premium	99.00	2026-01-26	Active	f
8	8	Premium	99.00	2023-10-31	Active	f
9	9	Premium	99.00	2026-06-09	Active	f
10	10	Premium	99.00	2025-10-11	Active	f
11	11	Standard	59.00	2024-10-07	Active	f
12	12	Premium	99.00	2025-11-13	Active	f
13	13	Standard	59.00	2025-12-06	Active	f
14	14	Premium	99.00	2024-03-03	Active	f
15	15	Standard	59.00	2025-07-22	Cancelled	t
16	16	Basic	29.00	2023-08-01	Cancelled	t
17	17	Standard	59.00	2024-03-04	Active	f
18	18	Basic	29.00	2024-09-16	Active	f
19	19	Premium	99.00	2026-06-02	Active	f
20	20	Standard	59.00	2023-12-20	Active	f
21	21	Premium	99.00	2026-05-04	Active	f
22	22	Basic	29.00	2025-03-21	Active	f
23	23	Basic	29.00	2024-08-13	Cancelled	t
24	24	Basic	29.00	2024-09-14	Cancelled	t
25	25	Basic	29.00	2023-11-04	Active	f
26	26	Basic	29.00	2023-09-12	Cancelled	t
27	27	Standard	59.00	2025-10-12	Active	f
28	28	Basic	29.00	2024-07-16	Active	f
29	29	Basic	29.00	2023-07-09	Cancelled	t
30	30	Basic	29.00	2025-08-26	Active	f
31	31	Premium	99.00	2025-06-07	Active	f
32	32	Premium	99.00	2024-03-08	Active	f
33	33	Basic	29.00	2025-10-08	Active	f
34	34	Standard	59.00	2024-11-25	Active	f
35	35	Basic	29.00	2026-03-16	Active	f
36	36	Standard	59.00	2024-03-21	Active	f
37	37	Standard	59.00	2025-07-08	Cancelled	t
38	38	Standard	59.00	2025-02-05	Active	f
39	39	Basic	29.00	2025-02-13	Cancelled	t
40	40	Standard	59.00	2026-04-06	Active	f
41	41	Standard	59.00	2025-08-29	Active	f
42	42	Basic	29.00	2025-10-19	Active	f
43	43	Premium	99.00	2023-12-16	Active	f
44	44	Premium	99.00	2025-01-31	Active	f
45	45	Standard	59.00	2024-02-02	Active	f
46	46	Premium	99.00	2024-04-24	Active	f
47	47	Basic	29.00	2023-10-16	Cancelled	t
48	48	Standard	59.00	2024-11-20	Active	f
49	49	Basic	29.00	2026-02-26	Active	f
50	50	Standard	59.00	2023-09-21	Cancelled	t
51	51	Basic	29.00	2024-06-02	Cancelled	t
52	52	Basic	29.00	2025-11-15	Active	f
53	53	Standard	59.00	2026-01-07	Active	f
54	54	Standard	59.00	2023-08-15	Cancelled	t
55	55	Standard	59.00	2024-01-28	Cancelled	t
56	56	Standard	59.00	2023-11-11	Active	f
57	57	Premium	99.00	2023-12-06	Active	f
58	58	Basic	29.00	2025-02-12	Active	f
59	59	Premium	99.00	2024-04-05	Cancelled	t
60	60	Premium	99.00	2025-06-05	Active	f
61	61	Premium	99.00	2024-06-12	Active	f
62	62	Standard	59.00	2025-07-07	Active	f
63	63	Basic	29.00	2023-06-25	Active	f
64	64	Basic	29.00	2023-09-12	Cancelled	t
65	65	Premium	99.00	2025-09-30	Active	f
66	66	Standard	59.00	2023-08-19	Active	f
67	67	Standard	59.00	2024-10-03	Cancelled	t
68	68	Standard	59.00	2025-09-19	Active	f
69	69	Basic	29.00	2024-09-11	Active	f
70	70	Basic	29.00	2023-06-10	Cancelled	t
71	71	Premium	99.00	2025-09-23	Active	f
72	72	Premium	99.00	2024-08-11	Active	f
73	73	Premium	99.00	2024-12-17	Active	f
74	74	Premium	99.00	2024-08-17	Active	f
75	75	Basic	29.00	2024-12-04	Active	f
76	76	Standard	59.00	2024-03-02	Active	f
77	77	Premium	99.00	2023-11-26	Active	f
78	78	Standard	59.00	2024-10-03	Active	f
79	79	Standard	59.00	2025-08-04	Active	f
80	80	Basic	29.00	2023-07-14	Active	f
81	81	Basic	29.00	2026-01-15	Active	f
82	82	Basic	29.00	2024-05-01	Cancelled	t
83	83	Standard	59.00	2023-12-12	Active	f
84	84	Basic	29.00	2024-08-26	Cancelled	t
85	85	Standard	59.00	2023-06-08	Active	f
86	86	Premium	99.00	2023-12-05	Active	f
87	87	Basic	29.00	2023-10-06	Active	f
88	88	Standard	59.00	2024-08-24	Active	f
89	89	Basic	29.00	2024-02-09	Active	f
90	90	Basic	29.00	2026-05-31	Active	f
91	91	Basic	29.00	2026-05-20	Active	f
92	92	Premium	99.00	2024-05-10	Active	f
93	93	Basic	29.00	2024-12-05	Cancelled	t
94	94	Standard	59.00	2023-08-23	Cancelled	t
95	95	Basic	29.00	2024-01-11	Active	f
96	96	Basic	29.00	2024-01-13	Active	f
97	97	Basic	29.00	2023-07-12	Active	f
98	98	Basic	29.00	2025-11-06	Active	f
99	99	Basic	29.00	2024-08-15	Active	f
100	100	Basic	29.00	2024-05-02	Active	f
101	101	Basic	29.00	2024-01-14	Active	f
102	102	Standard	59.00	2023-12-29	Active	f
103	103	Standard	59.00	2024-08-05	Active	f
104	104	Basic	29.00	2023-11-19	Active	f
105	105	Basic	29.00	2023-08-02	Active	f
106	106	Standard	59.00	2024-02-27	Cancelled	t
107	107	Basic	29.00	2025-10-23	Active	f
108	108	Premium	99.00	2025-04-16	Active	f
109	109	Standard	59.00	2025-08-18	Active	f
110	110	Basic	29.00	2023-06-15	Active	f
111	111	Premium	99.00	2025-04-25	Cancelled	t
112	112	Basic	29.00	2024-09-10	Active	f
113	113	Standard	59.00	2024-11-07	Active	f
114	114	Standard	59.00	2024-05-26	Cancelled	t
115	115	Standard	59.00	2024-04-04	Active	f
116	116	Standard	59.00	2024-07-03	Active	f
117	117	Standard	59.00	2023-09-01	Active	f
118	118	Basic	29.00	2024-08-23	Active	f
119	119	Basic	29.00	2024-08-12	Active	f
120	120	Basic	29.00	2023-05-31	Active	f
121	121	Premium	99.00	2025-02-24	Active	f
122	122	Standard	59.00	2024-08-31	Active	f
123	123	Standard	59.00	2024-09-20	Active	f
124	124	Basic	29.00	2026-05-20	Cancelled	t
125	125	Standard	59.00	2026-04-04	Active	f
126	126	Basic	29.00	2023-08-20	Cancelled	t
127	127	Standard	59.00	2025-02-14	Active	f
128	128	Basic	29.00	2025-03-22	Active	f
129	129	Basic	29.00	2024-08-22	Active	f
130	130	Standard	59.00	2025-01-04	Active	f
131	131	Basic	29.00	2024-10-18	Active	f
132	132	Basic	29.00	2024-01-06	Active	f
133	133	Basic	29.00	2026-02-22	Active	f
134	134	Basic	29.00	2023-12-14	Active	f
135	135	Premium	99.00	2025-07-06	Active	f
136	136	Premium	99.00	2024-08-15	Active	f
137	137	Standard	59.00	2025-11-19	Active	f
138	138	Premium	99.00	2024-12-10	Active	f
139	139	Basic	29.00	2023-12-22	Active	f
140	140	Premium	99.00	2025-06-15	Active	f
141	141	Standard	59.00	2026-05-26	Active	f
142	142	Standard	59.00	2024-10-03	Active	f
143	143	Premium	99.00	2024-08-17	Active	f
144	144	Standard	59.00	2024-06-09	Active	f
145	145	Basic	29.00	2024-08-04	Cancelled	t
146	146	Basic	29.00	2024-02-18	Active	f
147	147	Standard	59.00	2025-07-03	Active	f
148	148	Basic	29.00	2025-07-06	Active	f
149	149	Standard	59.00	2026-04-30	Cancelled	t
150	150	Basic	29.00	2026-05-25	Active	f
151	151	Standard	59.00	2024-06-10	Active	f
152	152	Standard	59.00	2025-02-25	Active	f
153	153	Standard	59.00	2025-09-03	Active	f
154	154	Standard	59.00	2025-09-15	Cancelled	t
155	155	Basic	29.00	2026-02-22	Active	f
156	156	Standard	59.00	2023-08-07	Cancelled	t
157	157	Basic	29.00	2023-07-10	Active	f
158	158	Standard	59.00	2023-12-04	Active	f
159	159	Premium	99.00	2023-08-16	Active	f
160	160	Standard	59.00	2024-06-22	Active	f
161	161	Basic	29.00	2023-11-30	Active	f
162	162	Basic	29.00	2023-12-07	Active	f
163	163	Basic	29.00	2026-03-24	Active	f
164	164	Standard	59.00	2026-03-24	Active	f
165	165	Basic	29.00	2026-03-28	Active	f
166	166	Standard	59.00	2024-10-28	Active	f
167	167	Standard	59.00	2025-04-09	Active	f
168	168	Premium	99.00	2024-05-28	Active	f
169	169	Standard	59.00	2023-09-20	Active	f
170	170	Standard	59.00	2023-06-04	Active	f
171	171	Basic	29.00	2023-07-27	Active	f
172	172	Standard	59.00	2025-11-14	Active	f
173	173	Premium	99.00	2023-09-30	Cancelled	t
174	174	Standard	59.00	2025-04-08	Active	f
175	175	Premium	99.00	2026-05-06	Active	f
176	176	Standard	59.00	2025-07-05	Active	f
177	177	Premium	99.00	2026-03-26	Active	f
178	178	Standard	59.00	2023-09-30	Active	f
179	179	Basic	29.00	2025-11-07	Cancelled	t
180	180	Premium	99.00	2024-07-20	Cancelled	t
181	181	Premium	99.00	2025-12-18	Active	f
182	182	Standard	59.00	2024-03-08	Cancelled	t
183	183	Standard	59.00	2023-09-27	Active	f
184	184	Basic	29.00	2025-01-21	Active	f
185	185	Basic	29.00	2023-09-12	Active	f
186	186	Standard	59.00	2025-10-10	Active	f
187	187	Basic	29.00	2024-05-25	Active	f
188	188	Basic	29.00	2023-09-21	Cancelled	t
189	189	Basic	29.00	2024-07-09	Cancelled	t
190	190	Basic	29.00	2025-07-06	Active	f
191	191	Standard	59.00	2023-12-19	Active	f
192	192	Standard	59.00	2023-11-21	Active	f
193	193	Basic	29.00	2024-10-08	Active	f
194	194	Basic	29.00	2024-10-28	Active	f
195	195	Basic	29.00	2025-08-18	Active	f
196	196	Basic	29.00	2023-10-19	Active	f
197	197	Standard	59.00	2024-05-14	Active	f
198	198	Standard	59.00	2024-10-18	Active	f
199	199	Basic	29.00	2025-02-09	Active	f
200	200	Basic	29.00	2025-09-21	Cancelled	t
201	201	Premium	99.00	2026-05-18	Active	f
202	202	Standard	59.00	2025-11-09	Active	f
203	203	Premium	99.00	2024-06-06	Active	f
204	204	Standard	59.00	2023-08-01	Active	f
205	205	Premium	99.00	2023-09-18	Active	f
206	206	Premium	99.00	2025-10-10	Active	f
207	207	Basic	29.00	2025-08-14	Active	f
208	208	Basic	29.00	2023-07-06	Active	f
209	209	Basic	29.00	2023-12-24	Active	f
210	210	Standard	59.00	2023-12-05	Active	f
211	211	Basic	29.00	2025-01-06	Cancelled	t
212	212	Basic	29.00	2025-05-28	Active	f
213	213	Basic	29.00	2023-08-22	Active	f
214	214	Premium	99.00	2024-01-15	Active	f
215	215	Standard	59.00	2025-02-26	Active	f
216	216	Premium	99.00	2024-08-17	Active	f
217	217	Premium	99.00	2026-03-19	Cancelled	t
218	218	Basic	29.00	2025-12-09	Active	f
219	219	Standard	59.00	2026-06-06	Active	f
220	220	Premium	99.00	2024-08-04	Active	f
221	221	Basic	29.00	2024-10-09	Cancelled	t
222	222	Premium	99.00	2023-09-09	Cancelled	t
223	223	Standard	59.00	2025-07-30	Active	f
224	224	Standard	59.00	2025-12-18	Cancelled	t
225	225	Standard	59.00	2026-04-28	Active	f
226	226	Standard	59.00	2025-04-16	Active	f
227	227	Basic	29.00	2023-11-23	Cancelled	t
228	228	Standard	59.00	2025-01-30	Active	f
229	229	Standard	59.00	2025-10-22	Cancelled	t
230	230	Premium	99.00	2024-07-08	Active	f
231	231	Standard	59.00	2025-06-23	Active	f
232	232	Premium	99.00	2024-02-23	Active	f
233	233	Basic	29.00	2023-07-21	Active	f
234	234	Basic	29.00	2025-07-05	Cancelled	t
235	235	Standard	59.00	2025-10-28	Active	f
236	236	Basic	29.00	2025-07-06	Active	f
237	237	Premium	99.00	2024-10-30	Active	f
238	238	Standard	59.00	2025-03-21	Cancelled	t
239	239	Premium	99.00	2023-11-28	Active	f
240	240	Standard	59.00	2023-06-02	Active	f
241	241	Basic	29.00	2024-10-01	Cancelled	t
242	242	Standard	59.00	2023-08-25	Active	f
243	243	Basic	29.00	2026-01-17	Active	f
244	244	Standard	59.00	2025-10-23	Active	f
245	245	Basic	29.00	2024-07-26	Active	f
246	246	Basic	29.00	2023-09-20	Active	f
247	247	Basic	29.00	2024-02-07	Cancelled	t
248	248	Standard	59.00	2024-07-29	Active	f
249	249	Premium	99.00	2026-02-22	Active	f
250	250	Basic	29.00	2024-02-08	Active	f
251	251	Basic	29.00	2024-08-12	Active	f
252	252	Premium	99.00	2025-09-03	Active	f
253	253	Standard	59.00	2024-07-26	Active	f
254	254	Basic	29.00	2025-03-09	Cancelled	t
255	255	Basic	29.00	2023-11-19	Cancelled	t
256	256	Basic	29.00	2026-03-09	Cancelled	t
257	257	Basic	29.00	2024-05-11	Cancelled	t
258	258	Standard	59.00	2026-02-21	Active	f
259	259	Premium	99.00	2024-09-21	Active	f
260	260	Premium	99.00	2025-05-29	Active	f
261	261	Standard	59.00	2025-01-01	Cancelled	t
262	262	Premium	99.00	2024-08-22	Active	f
263	263	Premium	99.00	2023-11-13	Active	f
264	264	Basic	29.00	2024-09-22	Cancelled	t
265	265	Basic	29.00	2024-07-01	Cancelled	t
266	266	Basic	29.00	2024-04-27	Active	f
267	267	Basic	29.00	2025-06-11	Active	f
268	268	Premium	99.00	2025-02-22	Active	f
269	269	Basic	29.00	2024-08-13	Active	f
270	270	Premium	99.00	2026-04-10	Cancelled	t
271	271	Standard	59.00	2024-06-21	Active	f
272	272	Basic	29.00	2024-09-27	Active	f
273	273	Basic	29.00	2024-04-05	Cancelled	t
274	274	Basic	29.00	2024-07-24	Active	f
275	275	Premium	99.00	2025-06-09	Active	f
276	276	Premium	99.00	2024-08-30	Active	f
277	277	Basic	29.00	2025-04-26	Active	f
278	278	Basic	29.00	2024-09-10	Active	f
279	279	Standard	59.00	2026-02-22	Active	f
280	280	Premium	99.00	2025-04-09	Active	f
281	281	Basic	29.00	2024-09-26	Active	f
282	282	Premium	99.00	2024-05-02	Active	f
283	283	Basic	29.00	2024-12-28	Active	f
284	284	Basic	29.00	2023-09-05	Cancelled	t
285	285	Premium	99.00	2024-10-02	Cancelled	t
286	286	Basic	29.00	2025-05-23	Active	f
287	287	Basic	29.00	2024-11-09	Active	f
288	288	Basic	29.00	2024-08-20	Active	f
289	289	Basic	29.00	2025-12-06	Cancelled	t
290	290	Standard	59.00	2024-05-20	Active	f
291	291	Premium	99.00	2026-01-08	Active	f
292	292	Standard	59.00	2024-09-09	Active	f
293	293	Premium	99.00	2024-03-06	Active	f
294	294	Standard	59.00	2023-10-02	Active	f
295	295	Basic	29.00	2026-03-01	Active	f
296	296	Basic	29.00	2023-10-26	Cancelled	t
297	297	Basic	29.00	2026-02-03	Active	f
298	298	Basic	29.00	2023-08-10	Cancelled	t
299	299	Premium	99.00	2023-11-17	Active	f
300	300	Premium	99.00	2023-07-15	Active	f
301	301	Standard	59.00	2025-09-28	Active	f
302	302	Standard	59.00	2024-10-11	Active	f
303	303	Standard	59.00	2024-05-01	Active	f
304	304	Standard	59.00	2023-08-27	Active	f
305	305	Standard	59.00	2025-10-13	Cancelled	t
306	306	Premium	99.00	2026-01-26	Active	f
307	307	Basic	29.00	2024-03-26	Active	f
308	308	Basic	29.00	2026-05-06	Active	f
309	309	Basic	29.00	2025-06-07	Active	f
310	310	Standard	59.00	2024-08-31	Active	f
311	311	Premium	99.00	2023-06-03	Active	f
312	312	Premium	99.00	2024-12-25	Active	f
313	313	Standard	59.00	2023-12-15	Active	f
314	314	Premium	99.00	2023-09-06	Active	f
315	315	Premium	99.00	2025-05-17	Active	f
316	316	Basic	29.00	2024-04-02	Cancelled	t
317	317	Premium	99.00	2026-02-07	Cancelled	t
318	318	Basic	29.00	2023-07-20	Cancelled	t
319	319	Standard	59.00	2023-06-01	Active	f
320	320	Basic	29.00	2024-07-14	Active	f
321	321	Standard	59.00	2025-02-09	Active	f
322	322	Basic	29.00	2025-05-04	Active	f
323	323	Premium	99.00	2025-06-28	Active	f
324	324	Basic	29.00	2023-06-13	Active	f
325	325	Standard	59.00	2023-07-03	Active	f
326	326	Standard	59.00	2023-12-16	Active	f
327	327	Basic	29.00	2025-03-04	Cancelled	t
328	328	Standard	59.00	2026-05-27	Active	f
329	329	Basic	29.00	2023-11-12	Active	f
330	330	Basic	29.00	2025-03-09	Active	f
331	331	Basic	29.00	2025-06-27	Active	f
332	332	Basic	29.00	2025-04-18	Active	f
333	333	Basic	29.00	2023-11-22	Active	f
334	334	Standard	59.00	2024-02-25	Cancelled	t
335	335	Basic	29.00	2023-11-12	Active	f
336	336	Basic	29.00	2023-12-24	Active	f
337	337	Premium	99.00	2024-07-23	Active	f
338	338	Basic	29.00	2026-03-16	Active	f
339	339	Standard	59.00	2024-04-21	Cancelled	t
340	340	Standard	59.00	2023-07-13	Active	f
341	341	Basic	29.00	2025-06-03	Cancelled	t
342	342	Basic	29.00	2023-10-31	Active	f
343	343	Basic	29.00	2024-05-01	Active	f
344	344	Premium	99.00	2025-08-01	Cancelled	t
345	345	Basic	29.00	2025-01-24	Active	f
346	346	Basic	29.00	2024-01-29	Active	f
347	347	Standard	59.00	2024-10-31	Active	f
348	348	Standard	59.00	2023-10-09	Active	f
349	349	Basic	29.00	2024-07-24	Active	f
350	350	Standard	59.00	2024-03-16	Active	f
351	351	Basic	29.00	2024-11-16	Active	f
352	352	Basic	29.00	2025-10-28	Cancelled	t
353	353	Premium	99.00	2024-10-14	Active	f
354	354	Basic	29.00	2024-07-31	Cancelled	t
355	355	Standard	59.00	2023-12-22	Cancelled	t
356	356	Standard	59.00	2025-06-25	Active	f
357	357	Standard	59.00	2023-06-11	Active	f
358	358	Premium	99.00	2023-07-16	Active	f
359	359	Standard	59.00	2026-01-12	Active	f
360	360	Standard	59.00	2023-08-01	Active	f
361	361	Standard	59.00	2025-11-30	Active	f
362	362	Premium	99.00	2026-02-25	Active	f
363	363	Premium	99.00	2025-12-17	Active	f
364	364	Basic	29.00	2024-03-05	Active	f
365	365	Standard	59.00	2024-10-09	Active	f
366	366	Standard	59.00	2024-01-13	Cancelled	t
367	367	Premium	99.00	2023-06-11	Cancelled	t
368	368	Basic	29.00	2024-12-16	Cancelled	t
369	369	Basic	29.00	2023-08-01	Cancelled	t
370	370	Premium	99.00	2024-11-16	Cancelled	t
371	371	Basic	29.00	2025-10-10	Cancelled	t
372	372	Basic	29.00	2024-05-25	Active	f
373	373	Standard	59.00	2023-09-04	Active	f
374	374	Basic	29.00	2024-10-24	Active	f
375	375	Basic	29.00	2024-10-18	Active	f
376	376	Basic	29.00	2023-12-21	Active	f
377	377	Basic	29.00	2023-07-01	Cancelled	t
378	378	Basic	29.00	2025-04-25	Cancelled	t
379	379	Premium	99.00	2025-07-01	Cancelled	t
380	380	Premium	99.00	2024-06-30	Active	f
381	381	Standard	59.00	2023-06-06	Active	f
382	382	Basic	29.00	2024-06-28	Active	f
383	383	Basic	29.00	2024-05-13	Active	f
384	384	Standard	59.00	2023-11-26	Active	f
385	385	Standard	59.00	2024-05-14	Active	f
386	386	Standard	59.00	2025-04-26	Active	f
387	387	Standard	59.00	2023-08-21	Active	f
388	388	Basic	29.00	2026-01-19	Active	f
389	389	Basic	29.00	2024-05-09	Active	f
390	390	Basic	29.00	2025-05-01	Cancelled	t
391	391	Basic	29.00	2024-01-29	Active	f
392	392	Premium	99.00	2024-07-13	Active	f
393	393	Basic	29.00	2025-11-26	Cancelled	t
394	394	Premium	99.00	2023-07-08	Active	f
395	395	Standard	59.00	2025-11-13	Active	f
396	396	Premium	99.00	2023-10-26	Active	f
397	397	Premium	99.00	2024-03-30	Active	f
398	398	Basic	29.00	2025-08-04	Active	f
399	399	Standard	59.00	2024-04-30	Active	f
400	400	Basic	29.00	2026-04-10	Active	f
401	401	Standard	59.00	2024-11-30	Active	f
402	402	Standard	59.00	2024-08-30	Active	f
403	403	Basic	29.00	2024-05-13	Active	f
404	404	Premium	99.00	2026-03-04	Cancelled	t
405	405	Premium	99.00	2023-06-17	Cancelled	t
406	406	Basic	29.00	2026-03-09	Active	f
407	407	Basic	29.00	2026-02-26	Cancelled	t
408	408	Standard	59.00	2025-10-06	Active	f
409	409	Basic	29.00	2026-02-10	Active	f
410	410	Premium	99.00	2023-11-30	Active	f
411	411	Basic	29.00	2024-12-14	Active	f
412	412	Basic	29.00	2024-10-19	Active	f
413	413	Standard	59.00	2024-12-11	Active	f
414	414	Basic	29.00	2023-10-16	Cancelled	t
415	415	Premium	99.00	2026-05-17	Active	f
416	416	Premium	99.00	2024-11-30	Active	f
417	417	Standard	59.00	2024-01-08	Active	f
418	418	Basic	29.00	2025-12-30	Active	f
419	419	Standard	59.00	2025-09-01	Active	f
420	420	Premium	99.00	2026-04-18	Active	f
421	421	Standard	59.00	2024-03-10	Cancelled	t
422	422	Standard	59.00	2025-04-20	Active	f
423	423	Basic	29.00	2024-01-10	Cancelled	t
424	424	Basic	29.00	2023-12-16	Active	f
425	425	Standard	59.00	2023-08-10	Active	f
426	426	Premium	99.00	2025-11-10	Active	f
427	427	Basic	29.00	2025-04-30	Active	f
428	428	Standard	59.00	2024-06-07	Active	f
429	429	Basic	29.00	2026-01-04	Cancelled	t
430	430	Standard	59.00	2024-03-18	Active	f
431	431	Standard	59.00	2023-08-31	Active	f
432	432	Standard	59.00	2024-01-15	Active	f
433	433	Premium	99.00	2026-05-14	Active	f
434	434	Basic	29.00	2026-01-08	Active	f
435	435	Basic	29.00	2025-10-05	Active	f
436	436	Standard	59.00	2026-04-10	Active	f
437	437	Premium	99.00	2025-07-16	Active	f
438	438	Standard	59.00	2024-12-10	Active	f
439	439	Premium	99.00	2024-11-24	Active	f
440	440	Basic	29.00	2024-09-02	Active	f
441	441	Standard	59.00	2024-08-14	Active	f
442	442	Standard	59.00	2023-06-29	Active	f
443	443	Standard	59.00	2023-09-26	Active	f
444	444	Basic	29.00	2024-01-12	Active	f
445	445	Premium	99.00	2025-08-06	Active	f
446	446	Basic	29.00	2025-08-24	Active	f
447	447	Basic	29.00	2025-08-29	Active	f
448	448	Standard	59.00	2023-12-15	Active	f
449	449	Premium	99.00	2025-11-20	Active	f
450	450	Premium	99.00	2023-07-22	Active	f
451	451	Standard	59.00	2023-06-23	Active	f
452	452	Standard	59.00	2024-12-12	Active	f
453	453	Standard	59.00	2025-07-07	Active	f
454	454	Premium	99.00	2024-10-27	Active	f
455	455	Premium	99.00	2025-09-18	Active	f
456	456	Basic	29.00	2025-11-21	Cancelled	t
457	457	Standard	59.00	2024-03-22	Active	f
458	458	Standard	59.00	2023-10-18	Active	f
459	459	Premium	99.00	2024-09-10	Active	f
460	460	Standard	59.00	2024-01-27	Active	f
461	461	Basic	29.00	2025-09-09	Cancelled	t
462	462	Standard	59.00	2024-07-07	Active	f
463	463	Premium	99.00	2025-12-08	Cancelled	t
464	464	Basic	29.00	2024-06-16	Active	f
465	465	Standard	59.00	2026-06-02	Active	f
466	466	Premium	99.00	2024-02-05	Cancelled	t
467	467	Basic	29.00	2025-06-25	Cancelled	t
468	468	Standard	59.00	2025-07-02	Active	f
469	469	Basic	29.00	2025-06-29	Active	f
470	470	Standard	59.00	2025-08-31	Active	f
471	471	Standard	59.00	2024-03-18	Active	f
472	472	Standard	59.00	2025-09-20	Active	f
473	473	Premium	99.00	2025-04-04	Active	f
474	474	Premium	99.00	2024-03-20	Active	f
475	475	Premium	99.00	2024-12-26	Active	f
476	476	Basic	29.00	2023-08-20	Cancelled	t
477	477	Standard	59.00	2024-06-12	Active	f
478	478	Basic	29.00	2026-03-22	Active	f
479	479	Basic	29.00	2024-12-02	Cancelled	t
480	480	Premium	99.00	2023-10-13	Active	f
481	481	Standard	59.00	2025-04-14	Active	f
482	482	Premium	99.00	2025-06-13	Active	f
483	483	Basic	29.00	2023-12-06	Active	f
484	484	Basic	29.00	2025-01-18	Cancelled	t
485	485	Basic	29.00	2024-04-15	Active	f
486	486	Basic	29.00	2025-07-02	Active	f
487	487	Standard	59.00	2024-10-17	Active	f
488	488	Standard	59.00	2025-08-17	Active	f
489	489	Standard	59.00	2024-07-09	Active	f
490	490	Standard	59.00	2025-10-12	Active	f
491	491	Basic	29.00	2024-11-22	Cancelled	t
492	492	Basic	29.00	2026-01-15	Active	f
493	493	Premium	99.00	2023-11-22	Active	f
494	494	Basic	29.00	2026-05-31	Active	f
495	495	Basic	29.00	2025-02-24	Cancelled	t
496	496	Standard	59.00	2024-12-22	Active	f
497	497	Basic	29.00	2024-11-29	Active	f
498	498	Premium	99.00	2024-11-17	Active	f
499	499	Standard	59.00	2025-08-09	Active	f
500	500	Basic	29.00	2023-11-13	Cancelled	t
\.


--
-- TOC entry 5054 (class 0 OID 16436)
-- Dependencies: 226
-- Data for Name: support_tickets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.support_tickets (ticket_id, customer_id, issue_type, priority, status, created_date, resolution_hours) FROM stdin;
1	1	Feature Request	Medium	Resolved	2026-05-19	42.84
2	1	Billing	Low	Open	2026-05-25	25.16
3	1	Technical	Low	Closed	2026-08-15	7.58
4	1	Billing	Medium	Closed	2026-04-09	19.78
5	1	Billing	High	Closed	2026-04-26	9.86
6	2	Login	Low	Closed	2026-06-12	15.87
7	2	Login	High	Open	2026-03-29	6.07
8	2	Technical	High	Open	2026-07-10	12.60
9	4	Technical	High	Resolved	2026-03-20	30.97
10	4	Billing	Medium	Closed	2026-04-11	71.72
11	4	Feature Request	Medium	Open	2026-09-08	49.30
12	5	Technical	Medium	Resolved	2026-04-25	68.70
13	5	Feature Request	Low	Open	2026-06-20	35.69
14	5	Billing	Medium	Closed	2026-07-11	5.11
15	5	Feature Request	Low	Resolved	2026-05-09	58.94
16	5	Feature Request	Low	Resolved	2026-03-26	34.75
17	5	Feature Request	Low	Closed	2026-04-28	62.94
18	6	Feature Request	Low	Open	2026-07-16	1.51
19	7	Technical	Low	Resolved	2026-03-26	31.60
20	8	Billing	Medium	Open	2026-08-16	4.59
21	8	Feature Request	Low	Resolved	2026-07-12	12.81
22	8	Performance	Medium	Resolved	2026-05-31	65.07
23	9	Feature Request	Low	Open	2026-06-22	5.06
24	9	Feature Request	Medium	Open	2026-04-28	12.18
25	9	Feature Request	Low	Resolved	2026-08-24	43.25
26	11	Login	Medium	Resolved	2026-05-21	60.20
27	11	Login	High	Open	2026-04-28	1.56
28	13	Technical	High	Resolved	2026-06-08	42.36
29	13	Technical	Medium	Resolved	2026-08-31	22.89
30	13	Billing	Medium	Resolved	2026-03-20	18.72
31	15	Login	Low	Closed	2026-06-13	46.55
32	15	Performance	High	Open	2026-06-18	67.69
33	15	Billing	Medium	Resolved	2026-04-15	69.34
34	15	Login	Low	Resolved	2026-04-11	31.85
35	16	Billing	High	Closed	2026-05-04	22.96
36	16	Performance	Medium	Closed	2026-03-16	21.99
37	16	Technical	Low	Closed	2026-03-24	67.77
38	17	Login	High	Open	2026-04-01	44.97
39	20	Technical	Medium	Closed	2026-08-22	51.66
40	20	Technical	Medium	Closed	2026-06-21	64.40
41	20	Billing	Low	Resolved	2026-07-13	28.20
42	20	Technical	High	Resolved	2026-08-25	30.46
43	20	Login	High	Closed	2026-05-27	5.42
44	22	Billing	Low	Open	2026-05-24	10.63
45	22	Performance	Low	Resolved	2026-07-06	27.92
46	23	Billing	Low	Resolved	2026-07-21	60.59
47	23	Feature Request	Low	Resolved	2026-08-09	34.62
48	23	Billing	High	Resolved	2026-05-14	50.66
49	23	Login	Low	Open	2026-04-08	69.43
50	24	Feature Request	Low	Open	2026-08-31	25.65
51	24	Performance	High	Closed	2026-08-24	36.92
52	24	Login	Low	Closed	2026-05-08	8.49
53	24	Login	High	Closed	2026-08-02	31.92
54	24	Feature Request	High	Closed	2026-04-06	58.38
55	25	Performance	Medium	Resolved	2026-05-09	16.06
56	25	Login	Medium	Closed	2026-04-11	50.78
57	25	Login	High	Resolved	2026-05-01	68.31
58	25	Billing	Low	Open	2026-05-29	35.69
59	26	Performance	Medium	Closed	2026-07-08	17.37
60	27	Feature Request	Low	Closed	2026-08-30	70.17
61	27	Feature Request	Medium	Open	2026-08-09	46.29
62	27	Performance	Low	Resolved	2026-04-17	21.19
63	28	Billing	Low	Resolved	2026-04-21	55.28
64	29	Billing	Low	Resolved	2026-07-28	40.19
65	29	Technical	Low	Closed	2026-05-18	49.95
66	29	Performance	Medium	Resolved	2026-07-13	21.46
67	29	Login	High	Closed	2026-08-23	49.80
68	29	Login	High	Open	2026-03-25	58.08
69	29	Technical	Medium	Resolved	2026-04-24	16.96
70	30	Billing	High	Resolved	2026-05-23	53.15
71	30	Feature Request	Medium	Resolved	2026-08-18	17.25
72	30	Feature Request	High	Resolved	2026-03-22	59.32
73	30	Feature Request	Low	Resolved	2026-05-13	37.85
74	31	Feature Request	Low	Closed	2026-08-19	23.33
75	33	Login	High	Open	2026-07-03	30.50
76	33	Performance	Medium	Resolved	2026-05-17	40.14
77	33	Performance	Low	Open	2026-05-03	53.99
78	34	Login	High	Open	2026-06-06	33.33
79	34	Login	Low	Open	2026-07-11	41.60
80	35	Performance	Low	Open	2026-05-17	2.09
81	35	Technical	Medium	Open	2026-08-02	6.31
82	36	Billing	Medium	Resolved	2026-04-01	50.98
83	38	Login	High	Closed	2026-03-31	69.30
84	38	Login	Medium	Closed	2026-07-22	71.96
85	39	Login	Low	Open	2026-06-12	16.55
86	39	Technical	High	Closed	2026-03-21	54.65
87	39	Technical	High	Resolved	2026-04-03	46.89
88	40	Performance	Medium	Open	2026-06-16	58.10
89	41	Login	Low	Open	2026-07-13	34.47
90	41	Feature Request	High	Closed	2026-04-07	16.72
91	41	Billing	High	Closed	2026-03-15	22.46
92	41	Performance	Low	Resolved	2026-08-30	68.18
93	42	Feature Request	Medium	Closed	2026-09-02	50.01
94	43	Technical	High	Open	2026-04-11	69.95
95	44	Feature Request	Medium	Resolved	2026-08-13	47.94
96	44	Billing	Low	Resolved	2026-06-11	57.09
97	44	Technical	High	Closed	2026-09-06	13.37
98	45	Billing	Low	Closed	2026-05-31	31.27
99	45	Billing	Medium	Open	2026-05-20	6.22
100	45	Billing	Medium	Open	2026-08-04	5.66
101	46	Technical	Medium	Closed	2026-05-17	29.31
102	46	Billing	Medium	Closed	2026-06-22	48.22
103	47	Performance	High	Resolved	2026-06-29	43.63
104	47	Login	Low	Open	2026-05-04	16.10
105	47	Performance	Low	Resolved	2026-06-13	61.02
106	48	Login	Low	Resolved	2026-08-05	41.21
107	48	Performance	Low	Resolved	2026-04-01	70.00
108	48	Billing	High	Open	2026-07-17	27.71
109	48	Performance	Medium	Resolved	2026-06-08	23.13
110	50	Performance	High	Closed	2026-07-28	10.17
111	50	Feature Request	High	Resolved	2026-05-05	40.67
112	50	Login	Low	Closed	2026-08-31	31.97
113	50	Performance	Low	Closed	2026-04-16	31.48
114	50	Performance	High	Open	2026-05-27	21.56
115	50	Performance	Low	Closed	2026-07-29	57.89
116	51	Feature Request	High	Resolved	2026-06-13	25.93
117	52	Login	Low	Closed	2026-08-24	34.29
118	52	Login	Medium	Open	2026-08-27	25.99
119	52	Billing	Medium	Closed	2026-05-18	3.67
120	53	Technical	Low	Closed	2026-08-15	58.58
121	54	Login	Low	Closed	2026-08-17	40.62
122	54	Performance	Medium	Closed	2026-03-26	69.47
123	54	Feature Request	Low	Closed	2026-08-21	42.37
124	54	Technical	Medium	Closed	2026-03-27	50.59
125	54	Performance	Low	Open	2026-08-20	22.98
126	54	Performance	High	Closed	2026-08-09	48.58
127	55	Feature Request	High	Open	2026-09-01	48.00
128	55	Feature Request	Low	Open	2026-06-06	11.95
129	55	Technical	High	Open	2026-07-30	52.20
130	55	Billing	Medium	Closed	2026-03-21	52.09
131	55	Performance	High	Closed	2026-05-19	17.61
132	55	Technical	Medium	Closed	2026-07-23	27.12
133	56	Billing	High	Open	2026-08-10	21.24
134	57	Billing	Medium	Resolved	2026-03-28	24.81
135	57	Technical	Low	Resolved	2026-06-29	66.14
136	57	Performance	High	Resolved	2026-05-13	32.85
137	57	Billing	Low	Resolved	2026-07-07	16.31
138	57	Technical	High	Open	2026-04-08	38.47
139	58	Billing	High	Closed	2026-07-11	41.52
140	58	Technical	High	Open	2026-08-20	38.17
141	58	Login	Low	Open	2026-04-24	37.02
142	59	Login	High	Closed	2026-03-30	13.43
143	61	Feature Request	Medium	Resolved	2026-05-25	6.60
144	61	Feature Request	Low	Open	2026-06-27	23.81
145	61	Billing	Medium	Open	2026-06-27	22.76
146	62	Technical	Low	Resolved	2026-04-08	49.14
147	62	Performance	Low	Resolved	2026-08-24	17.76
148	62	Login	Medium	Closed	2026-04-18	3.30
149	62	Technical	High	Closed	2026-06-08	27.41
150	64	Technical	Medium	Open	2026-07-15	9.62
151	64	Technical	Low	Resolved	2026-05-07	2.87
152	64	Feature Request	High	Closed	2026-05-14	58.06
153	64	Feature Request	Low	Open	2026-08-19	5.67
154	64	Performance	High	Open	2026-05-11	38.32
155	65	Feature Request	Low	Closed	2026-07-30	12.50
156	65	Technical	Medium	Open	2026-06-30	61.06
157	65	Login	Low	Open	2026-04-22	20.49
158	66	Feature Request	Medium	Open	2026-07-19	55.45
159	66	Performance	High	Open	2026-09-03	36.36
160	69	Billing	Low	Closed	2026-05-07	43.42
161	70	Performance	High	Closed	2026-04-23	20.86
162	71	Login	Medium	Open	2026-05-17	11.57
163	72	Billing	Medium	Closed	2026-03-22	8.78
164	72	Performance	High	Closed	2026-03-18	45.68
165	73	Billing	Low	Resolved	2026-05-21	23.27
166	73	Technical	Medium	Open	2026-07-20	30.14
167	73	Feature Request	Medium	Open	2026-08-26	51.11
168	74	Login	Low	Closed	2026-06-29	51.05
169	74	Performance	Medium	Closed	2026-06-13	40.79
170	74	Login	Medium	Resolved	2026-04-17	49.04
171	74	Performance	Medium	Closed	2026-08-04	21.62
172	74	Login	High	Resolved	2026-06-14	66.60
173	74	Login	High	Closed	2026-07-18	15.35
174	76	Technical	Medium	Resolved	2026-09-01	71.80
175	76	Performance	Medium	Resolved	2026-06-28	63.25
176	76	Billing	Medium	Open	2026-04-09	8.62
177	77	Billing	High	Closed	2026-06-27	41.31
178	77	Technical	Low	Open	2026-03-31	64.69
179	77	Performance	High	Closed	2026-08-19	29.46
180	77	Billing	Low	Resolved	2026-05-11	23.98
181	77	Technical	Low	Closed	2026-06-04	17.72
182	78	Login	Medium	Open	2026-07-16	16.56
183	79	Login	Low	Open	2026-08-13	5.38
184	79	Feature Request	High	Resolved	2026-04-17	39.10
185	80	Login	High	Resolved	2026-06-01	19.07
186	82	Performance	High	Open	2026-04-24	31.11
187	82	Performance	Low	Resolved	2026-05-16	25.58
188	82	Login	Low	Open	2026-08-13	3.29
189	82	Performance	High	Resolved	2026-07-11	15.63
190	84	Login	High	Closed	2026-05-29	11.59
191	88	Performance	Low	Open	2026-07-16	53.63
192	89	Login	Low	Resolved	2026-04-24	35.67
193	89	Feature Request	High	Resolved	2026-04-29	3.40
194	91	Feature Request	High	Closed	2026-06-12	19.98
195	92	Billing	High	Resolved	2026-03-15	13.17
196	92	Performance	Medium	Open	2026-06-18	41.18
197	92	Billing	High	Resolved	2026-07-14	16.01
198	93	Login	Low	Open	2026-07-11	41.24
199	93	Performance	High	Open	2026-06-18	28.25
200	95	Login	Medium	Resolved	2026-08-18	1.37
201	95	Login	Medium	Closed	2026-07-03	8.26
202	97	Technical	High	Open	2026-05-07	43.16
203	98	Technical	Medium	Closed	2026-07-27	69.48
204	98	Login	Medium	Open	2026-03-17	45.94
205	99	Login	High	Resolved	2026-05-29	48.78
206	99	Technical	High	Closed	2026-07-11	18.94
207	100	Billing	Low	Resolved	2026-03-26	48.19
208	100	Technical	High	Open	2026-08-30	40.99
209	101	Technical	Medium	Resolved	2026-05-10	8.42
210	101	Performance	Low	Resolved	2026-08-05	25.73
211	101	Login	Medium	Resolved	2026-04-30	35.29
212	103	Billing	High	Resolved	2026-07-20	20.76
213	103	Billing	High	Resolved	2026-04-26	14.27
214	104	Login	High	Open	2026-08-20	48.72
215	104	Login	Low	Resolved	2026-06-24	9.30
216	105	Login	Low	Closed	2026-08-07	14.85
217	107	Billing	Medium	Closed	2026-06-13	62.22
218	107	Billing	Medium	Resolved	2026-07-12	15.90
219	107	Feature Request	High	Closed	2026-04-07	45.93
220	108	Performance	Low	Closed	2026-03-27	10.01
221	109	Login	Medium	Closed	2026-06-19	42.32
222	109	Billing	High	Closed	2026-04-01	48.15
223	110	Performance	Low	Resolved	2026-08-01	32.33
224	111	Technical	Medium	Open	2026-08-18	50.96
225	111	Billing	Low	Closed	2026-08-22	10.42
226	111	Technical	High	Open	2026-05-20	1.66
227	111	Login	Low	Closed	2026-03-17	10.38
228	111	Billing	Low	Closed	2026-08-19	52.88
229	112	Technical	High	Open	2026-08-03	66.31
230	112	Feature Request	High	Closed	2026-07-17	7.15
231	112	Billing	Low	Resolved	2026-04-13	52.83
232	112	Login	Medium	Closed	2026-08-06	18.59
233	113	Billing	Low	Closed	2026-03-31	43.17
234	113	Feature Request	Low	Closed	2026-06-21	10.37
235	114	Feature Request	Medium	Closed	2026-03-15	29.56
236	114	Feature Request	High	Open	2026-08-02	20.70
237	114	Login	Low	Open	2026-07-20	70.18
238	115	Technical	Low	Resolved	2026-08-06	50.81
239	117	Billing	Low	Resolved	2026-05-13	26.84
240	117	Technical	Low	Resolved	2026-04-22	58.02
241	119	Feature Request	Low	Resolved	2026-09-09	67.20
242	121	Technical	Low	Closed	2026-07-06	61.41
243	123	Performance	High	Resolved	2026-03-21	22.22
244	123	Technical	Low	Closed	2026-05-18	40.47
245	123	Feature Request	Low	Resolved	2026-05-15	8.24
246	124	Performance	Low	Resolved	2026-06-18	9.70
247	124	Performance	Low	Resolved	2026-04-17	31.75
248	124	Performance	Medium	Resolved	2026-06-05	49.51
249	124	Technical	Medium	Resolved	2026-07-25	20.52
250	125	Feature Request	Low	Closed	2026-06-11	35.06
251	126	Billing	Low	Open	2026-07-11	19.92
252	126	Billing	Low	Open	2026-06-03	26.19
253	128	Technical	Low	Open	2026-06-09	69.20
254	128	Login	High	Open	2026-06-01	42.61
255	129	Login	Low	Resolved	2026-09-10	68.36
256	129	Feature Request	Medium	Open	2026-09-02	13.93
257	129	Login	High	Resolved	2026-03-31	41.15
258	129	Performance	Low	Closed	2026-08-22	17.90
259	129	Login	Low	Open	2026-08-19	59.34
260	129	Login	Medium	Resolved	2026-07-05	15.89
261	130	Feature Request	High	Open	2026-07-15	12.55
262	133	Performance	Medium	Closed	2026-03-25	19.82
263	133	Feature Request	Medium	Resolved	2026-06-08	63.87
264	134	Billing	Medium	Open	2026-05-26	69.56
265	134	Performance	High	Resolved	2026-05-12	22.22
266	134	Performance	High	Resolved	2026-05-05	41.56
267	134	Feature Request	High	Open	2026-04-05	11.47
268	137	Performance	Low	Closed	2026-06-18	50.03
269	138	Login	Medium	Open	2026-05-27	43.95
270	139	Billing	Low	Resolved	2026-07-21	60.43
271	139	Technical	Low	Closed	2026-08-29	66.18
272	139	Technical	Medium	Closed	2026-05-15	36.86
273	139	Billing	High	Resolved	2026-07-11	27.45
274	140	Technical	High	Resolved	2026-07-04	47.26
275	143	Login	Medium	Closed	2026-06-03	53.31
276	143	Feature Request	High	Open	2026-07-24	25.36
277	146	Technical	Medium	Open	2026-08-27	1.33
278	147	Billing	Medium	Open	2026-07-24	2.27
279	147	Billing	High	Open	2026-07-09	17.06
280	147	Login	Medium	Resolved	2026-08-15	28.23
281	148	Technical	Medium	Resolved	2026-07-14	16.93
282	149	Billing	Low	Open	2026-08-12	30.59
283	149	Performance	Low	Open	2026-07-08	34.68
284	150	Billing	Medium	Resolved	2026-04-08	15.18
285	151	Technical	Low	Open	2026-08-22	52.37
286	153	Performance	High	Closed	2026-05-26	47.07
287	154	Performance	Low	Closed	2026-05-21	4.26
288	154	Login	High	Closed	2026-09-07	51.02
289	154	Feature Request	High	Open	2026-04-19	16.90
290	154	Login	High	Open	2026-03-18	50.74
291	154	Billing	Medium	Open	2026-07-09	35.22
292	155	Performance	Low	Resolved	2026-05-16	32.54
293	155	Feature Request	Medium	Resolved	2026-05-06	32.74
294	155	Billing	Medium	Open	2026-03-27	2.26
295	155	Performance	Medium	Resolved	2026-04-21	39.99
296	156	Billing	Low	Open	2026-07-16	1.16
297	157	Technical	High	Closed	2026-08-14	54.76
298	158	Technical	High	Resolved	2026-08-15	28.51
299	159	Feature Request	Medium	Open	2026-04-22	45.91
300	159	Technical	Low	Open	2026-06-28	49.75
301	159	Technical	High	Open	2026-07-27	36.78
302	160	Technical	Low	Open	2026-08-27	15.19
303	160	Technical	Medium	Open	2026-07-08	11.40
304	160	Billing	High	Closed	2026-07-20	54.51
305	161	Login	High	Resolved	2026-09-07	53.80
306	161	Technical	High	Closed	2026-07-15	65.72
307	161	Login	High	Open	2026-04-09	14.95
308	163	Technical	High	Resolved	2026-05-04	12.32
309	163	Feature Request	High	Closed	2026-08-18	25.81
310	163	Technical	High	Closed	2026-06-18	26.62
311	163	Technical	High	Open	2026-05-12	71.76
312	163	Billing	Low	Open	2026-06-14	32.64
313	164	Login	High	Resolved	2026-06-20	37.49
314	164	Billing	Low	Open	2026-04-27	1.52
315	164	Billing	Low	Open	2026-04-02	55.92
316	164	Performance	Low	Resolved	2026-04-26	59.84
317	164	Performance	High	Resolved	2026-03-19	11.92
318	165	Feature Request	Low	Open	2026-04-05	5.49
319	165	Feature Request	Low	Open	2026-08-23	26.40
320	166	Technical	Medium	Open	2026-03-29	27.49
321	166	Billing	High	Open	2026-08-05	9.75
322	166	Billing	High	Open	2026-06-02	39.14
323	167	Feature Request	Medium	Open	2026-04-23	6.19
324	167	Billing	Medium	Resolved	2026-07-22	52.52
325	167	Performance	Medium	Closed	2026-08-09	48.66
326	167	Technical	Low	Closed	2026-04-05	5.96
327	167	Technical	Medium	Closed	2026-05-18	24.31
328	169	Feature Request	High	Closed	2026-04-12	16.11
329	171	Technical	Low	Open	2026-07-20	37.77
330	171	Login	Medium	Closed	2026-05-17	63.59
331	172	Performance	Low	Open	2026-05-30	26.06
332	173	Performance	Medium	Open	2026-08-12	35.19
333	178	Feature Request	Medium	Closed	2026-07-24	1.39
334	178	Billing	High	Open	2026-08-11	37.90
335	178	Performance	High	Resolved	2026-03-18	58.10
336	179	Performance	Low	Closed	2026-04-20	40.40
337	179	Login	Medium	Open	2026-06-14	55.97
338	179	Performance	High	Resolved	2026-03-26	9.46
339	179	Technical	Medium	Open	2026-07-31	8.12
340	180	Feature Request	Low	Open	2026-06-04	67.08
341	180	Performance	High	Open	2026-04-30	21.34
342	180	Feature Request	Low	Resolved	2026-03-31	36.10
343	180	Billing	Low	Open	2026-05-01	21.31
344	180	Billing	High	Open	2026-05-01	50.59
345	180	Feature Request	Low	Open	2026-09-01	26.54
346	181	Login	Medium	Closed	2026-07-15	44.05
347	183	Technical	Medium	Closed	2026-06-12	37.67
348	184	Technical	Low	Open	2026-07-11	62.96
349	184	Technical	Low	Resolved	2026-07-09	60.38
350	184	Login	Low	Resolved	2026-08-11	66.33
351	184	Performance	High	Resolved	2026-04-25	69.02
352	184	Performance	Medium	Open	2026-06-22	35.96
353	187	Login	Low	Open	2026-05-23	61.80
354	187	Technical	Low	Open	2026-08-03	34.58
355	187	Billing	Low	Closed	2026-05-06	10.55
356	189	Performance	Low	Closed	2026-04-06	21.34
357	189	Technical	Low	Open	2026-06-16	30.95
358	189	Feature Request	High	Closed	2026-08-23	6.62
359	189	Login	Low	Closed	2026-06-21	47.36
360	189	Login	High	Open	2026-06-01	20.26
361	189	Performance	Medium	Open	2026-04-13	37.99
362	190	Performance	High	Resolved	2026-08-15	19.63
363	190	Technical	Low	Open	2026-06-03	22.97
364	192	Login	Low	Resolved	2026-04-30	58.89
365	192	Technical	Medium	Closed	2026-05-13	38.99
366	193	Technical	Medium	Resolved	2026-05-25	45.40
367	193	Feature Request	High	Open	2026-03-19	20.30
368	193	Feature Request	Medium	Closed	2026-07-24	61.60
369	194	Performance	High	Resolved	2026-07-13	7.40
370	194	Billing	Medium	Resolved	2026-06-15	30.84
371	194	Performance	Medium	Closed	2026-03-16	57.19
372	195	Performance	Low	Open	2026-09-02	15.14
373	196	Technical	High	Closed	2026-06-19	2.07
374	196	Login	High	Resolved	2026-06-01	57.03
375	196	Billing	Low	Open	2026-03-18	34.74
376	197	Technical	Medium	Open	2026-03-29	54.73
377	197	Performance	High	Resolved	2026-09-05	49.94
378	197	Login	High	Resolved	2026-07-08	64.81
379	198	Login	High	Closed	2026-05-17	1.05
380	198	Feature Request	Medium	Open	2026-07-25	63.69
381	201	Login	High	Resolved	2026-08-23	60.25
382	201	Billing	Low	Open	2026-08-17	8.19
383	201	Technical	High	Closed	2026-07-24	14.71
384	201	Technical	High	Open	2026-07-27	40.65
385	202	Feature Request	Medium	Closed	2026-06-22	40.06
386	202	Login	Medium	Closed	2026-04-01	31.57
387	202	Login	High	Resolved	2026-04-19	39.74
388	204	Feature Request	Low	Open	2026-08-22	52.37
389	206	Technical	Low	Open	2026-06-02	69.94
390	206	Feature Request	High	Open	2026-08-18	16.77
391	208	Billing	Medium	Resolved	2026-06-13	44.75
392	211	Billing	Medium	Open	2026-06-04	17.41
393	211	Performance	High	Open	2026-08-16	65.17
394	213	Performance	High	Open	2026-04-07	62.96
395	213	Technical	Medium	Resolved	2026-04-17	11.85
396	213	Login	High	Closed	2026-05-19	39.50
397	213	Technical	High	Resolved	2026-04-15	39.44
398	213	Technical	Low	Closed	2026-03-18	51.06
399	214	Login	Medium	Closed	2026-06-25	32.45
400	214	Login	Low	Resolved	2026-08-14	10.34
401	215	Technical	Low	Resolved	2026-09-02	30.01
402	215	Billing	Medium	Closed	2026-07-16	53.71
403	215	Technical	Low	Resolved	2026-07-27	66.82
404	217	Login	Medium	Resolved	2026-05-25	21.90
405	217	Billing	High	Open	2026-08-05	33.91
406	217	Performance	Low	Open	2026-05-05	9.04
407	217	Feature Request	High	Open	2026-08-07	28.91
408	217	Login	Medium	Resolved	2026-07-27	33.21
409	217	Technical	Medium	Resolved	2026-07-08	24.01
410	218	Feature Request	High	Resolved	2026-07-31	62.69
411	218	Technical	High	Resolved	2026-05-26	22.87
412	218	Performance	Medium	Open	2026-07-26	9.35
413	219	Billing	High	Open	2026-09-09	18.37
414	219	Feature Request	Medium	Open	2026-04-03	40.59
415	219	Technical	Low	Resolved	2026-08-04	4.91
416	219	Login	Low	Resolved	2026-09-02	48.36
417	221	Technical	High	Resolved	2026-08-14	41.57
418	221	Feature Request	Low	Closed	2026-03-18	43.94
419	221	Login	Medium	Open	2026-06-21	19.44
420	221	Feature Request	High	Closed	2026-08-08	44.61
421	222	Login	High	Open	2026-07-18	1.80
422	222	Technical	High	Closed	2026-07-07	57.10
423	222	Login	Medium	Open	2026-04-23	24.00
424	222	Billing	Low	Open	2026-06-17	25.24
425	222	Feature Request	High	Resolved	2026-07-28	14.78
426	222	Login	High	Closed	2026-05-12	57.61
427	223	Login	Medium	Resolved	2026-08-03	20.91
428	223	Billing	Medium	Closed	2026-04-03	38.93
429	223	Technical	High	Open	2026-06-03	14.30
430	223	Billing	Medium	Open	2026-06-22	51.40
431	224	Performance	High	Resolved	2026-07-24	25.15
432	224	Performance	High	Open	2026-06-23	56.06
433	224	Technical	Low	Open	2026-03-21	71.48
434	224	Technical	High	Resolved	2026-05-16	28.52
435	224	Feature Request	Low	Resolved	2026-06-23	67.20
436	224	Feature Request	Low	Closed	2026-05-14	64.13
437	226	Billing	Medium	Open	2026-08-29	8.52
438	226	Billing	Low	Closed	2026-06-02	13.71
439	226	Feature Request	High	Open	2026-03-18	50.65
440	226	Feature Request	Medium	Closed	2026-06-17	59.04
441	226	Feature Request	Low	Closed	2026-04-18	10.36
442	227	Login	Medium	Closed	2026-09-03	5.64
443	227	Billing	Medium	Closed	2026-05-15	61.05
444	227	Login	Medium	Open	2026-04-16	10.04
445	227	Billing	Medium	Open	2026-08-14	24.14
446	227	Billing	Medium	Open	2026-05-15	29.46
447	229	Billing	Low	Resolved	2026-08-06	64.00
448	229	Billing	Low	Open	2026-08-03	33.16
449	229	Login	Medium	Open	2026-04-16	32.75
450	229	Technical	High	Closed	2026-06-26	41.49
451	230	Login	Low	Resolved	2026-05-23	50.86
452	230	Performance	High	Closed	2026-06-05	29.83
453	231	Performance	High	Closed	2026-08-07	7.01
454	231	Performance	Medium	Open	2026-04-09	67.05
455	231	Feature Request	Low	Closed	2026-05-03	31.11
456	231	Performance	Medium	Closed	2026-07-15	14.19
457	231	Feature Request	Low	Open	2026-05-06	61.12
458	233	Billing	Medium	Closed	2026-05-02	65.33
459	233	Feature Request	High	Closed	2026-05-26	26.06
460	234	Billing	Low	Open	2026-08-22	61.45
461	234	Login	Medium	Resolved	2026-04-06	20.95
462	235	Feature Request	Low	Closed	2026-05-28	55.70
463	236	Performance	Medium	Closed	2026-08-04	38.66
464	237	Login	Medium	Closed	2026-07-04	57.96
465	237	Login	High	Open	2026-06-02	33.74
466	237	Technical	High	Open	2026-04-13	55.71
467	237	Feature Request	Medium	Open	2026-03-18	71.52
468	237	Login	High	Resolved	2026-03-22	1.60
469	237	Billing	Low	Closed	2026-08-16	38.29
470	238	Technical	Medium	Open	2026-03-29	41.19
471	238	Technical	Low	Open	2026-07-25	18.99
472	239	Login	Low	Closed	2026-08-24	35.91
473	239	Technical	High	Closed	2026-07-27	46.83
474	240	Billing	Low	Open	2026-06-03	19.92
475	240	Login	Medium	Open	2026-09-10	37.59
476	240	Performance	Medium	Closed	2026-05-30	60.93
477	240	Billing	High	Resolved	2026-09-10	28.29
478	240	Performance	Low	Open	2026-04-26	67.39
479	241	Login	High	Closed	2026-08-14	45.77
480	241	Login	Medium	Resolved	2026-04-02	32.10
481	241	Technical	Low	Resolved	2026-07-23	2.80
482	241	Feature Request	Low	Closed	2026-06-03	5.47
483	243	Billing	Medium	Open	2026-07-29	60.31
484	246	Feature Request	Medium	Closed	2026-07-11	67.60
485	246	Feature Request	High	Resolved	2026-04-11	13.78
486	246	Performance	High	Resolved	2026-04-03	59.68
487	247	Performance	Medium	Resolved	2026-08-01	48.58
488	247	Billing	Low	Open	2026-06-09	21.24
489	248	Login	Medium	Resolved	2026-03-21	64.78
490	248	Technical	Low	Closed	2026-07-14	7.96
491	248	Performance	Low	Closed	2026-07-16	6.22
492	249	Feature Request	Low	Closed	2026-08-07	8.89
493	250	Performance	Low	Open	2026-05-12	60.43
494	250	Login	Low	Open	2026-05-24	53.27
495	251	Billing	Medium	Closed	2026-07-11	6.90
496	251	Billing	High	Open	2026-05-29	68.45
497	251	Technical	Medium	Closed	2026-07-11	46.98
498	251	Billing	Low	Closed	2026-03-23	22.64
499	251	Performance	High	Open	2026-04-14	2.73
500	252	Performance	Medium	Open	2026-04-07	39.51
501	253	Feature Request	High	Resolved	2026-08-06	70.67
502	253	Technical	High	Resolved	2026-03-28	34.97
503	254	Performance	High	Closed	2026-03-22	68.12
504	255	Feature Request	Low	Closed	2026-06-14	30.83
505	255	Billing	Medium	Resolved	2026-08-25	2.56
506	255	Technical	High	Open	2026-06-17	30.23
507	255	Login	High	Open	2026-06-19	35.52
508	255	Feature Request	High	Closed	2026-05-16	22.59
509	255	Technical	Medium	Resolved	2026-07-06	17.10
510	256	Feature Request	Low	Closed	2026-07-06	27.25
511	256	Technical	High	Open	2026-09-02	48.25
512	257	Login	High	Open	2026-06-27	34.65
513	257	Login	High	Open	2026-08-04	57.77
514	257	Performance	Medium	Open	2026-08-13	52.95
515	257	Billing	Low	Open	2026-04-22	9.30
516	257	Billing	Medium	Open	2026-07-16	32.66
517	258	Performance	Medium	Open	2026-04-09	37.32
518	258	Billing	High	Closed	2026-06-01	11.50
519	258	Performance	Medium	Closed	2026-06-07	1.87
520	259	Feature Request	Low	Resolved	2026-07-19	22.53
521	259	Feature Request	Medium	Resolved	2026-04-12	54.68
522	259	Billing	Low	Closed	2026-03-31	65.92
523	259	Performance	Low	Open	2026-05-15	51.43
524	260	Login	High	Open	2026-05-13	9.82
525	260	Login	Medium	Resolved	2026-05-08	65.38
526	260	Technical	Low	Resolved	2026-07-02	36.01
527	260	Billing	High	Open	2026-06-10	42.26
528	261	Billing	Medium	Closed	2026-05-26	46.17
529	261	Login	Low	Closed	2026-06-28	38.60
530	261	Billing	High	Resolved	2026-04-03	14.01
531	262	Performance	Medium	Resolved	2026-08-15	16.47
532	262	Feature Request	Low	Resolved	2026-04-20	44.55
533	262	Feature Request	High	Open	2026-04-22	50.86
534	263	Billing	High	Resolved	2026-07-16	10.14
535	264	Performance	Low	Closed	2026-08-30	5.70
536	264	Billing	Low	Resolved	2026-04-09	15.58
537	264	Technical	Low	Open	2026-06-13	3.08
538	265	Billing	Low	Open	2026-05-12	27.02
539	265	Feature Request	Low	Closed	2026-03-22	69.00
540	266	Performance	Low	Closed	2026-06-30	33.44
541	266	Login	High	Closed	2026-07-15	40.33
542	266	Login	Medium	Resolved	2026-08-24	64.53
543	267	Technical	Medium	Resolved	2026-04-11	60.93
544	268	Performance	Low	Resolved	2026-07-08	35.74
545	268	Technical	High	Resolved	2026-09-03	8.07
546	268	Billing	Low	Closed	2026-03-21	2.90
547	270	Login	High	Closed	2026-05-09	55.24
548	270	Feature Request	High	Closed	2026-03-26	40.32
549	270	Feature Request	High	Closed	2026-05-12	40.92
550	270	Technical	High	Resolved	2026-06-02	19.70
551	271	Performance	Medium	Closed	2026-05-28	25.94
552	271	Technical	Low	Resolved	2026-03-29	23.16
663	321	Technical	High	Open	2026-06-10	4.12
553	273	Billing	High	Resolved	2026-06-29	19.83
554	273	Login	High	Closed	2026-07-15	45.34
555	275	Billing	High	Resolved	2026-06-09	33.84
556	275	Technical	Low	Open	2026-03-19	55.35
557	276	Login	Medium	Closed	2026-04-20	71.38
558	277	Billing	Medium	Closed	2026-03-23	47.68
559	277	Billing	Medium	Open	2026-08-06	17.76
560	277	Feature Request	High	Open	2026-08-11	38.06
561	277	Feature Request	High	Closed	2026-05-06	63.80
562	278	Feature Request	Medium	Open	2026-08-13	23.47
563	278	Performance	Medium	Open	2026-07-09	69.40
564	278	Technical	Medium	Closed	2026-06-08	59.32
565	279	Performance	Medium	Closed	2026-08-18	67.48
566	280	Billing	Low	Open	2026-07-06	36.95
567	280	Login	Medium	Open	2026-04-23	53.38
568	280	Performance	High	Resolved	2026-08-28	46.54
569	280	Technical	High	Closed	2026-03-30	10.66
570	281	Technical	Medium	Resolved	2026-03-19	43.10
571	281	Login	Medium	Resolved	2026-08-20	30.43
572	284	Technical	Medium	Open	2026-03-19	46.95
573	284	Billing	Low	Closed	2026-08-07	62.87
574	284	Performance	High	Resolved	2026-06-04	51.30
575	284	Feature Request	Medium	Resolved	2026-08-17	40.55
576	284	Billing	Medium	Resolved	2026-05-13	65.48
577	284	Feature Request	High	Open	2026-08-30	1.38
578	285	Feature Request	Medium	Resolved	2026-07-06	9.30
579	285	Billing	Low	Closed	2026-07-01	54.10
580	285	Performance	Medium	Closed	2026-04-07	59.90
581	285	Login	High	Closed	2026-05-22	64.38
582	285	Login	High	Closed	2026-08-03	40.45
583	286	Performance	Low	Open	2026-08-04	9.78
584	287	Technical	Medium	Open	2026-08-17	64.00
585	287	Billing	Medium	Open	2026-03-20	9.66
586	288	Feature Request	Low	Resolved	2026-08-29	57.91
587	288	Login	Medium	Resolved	2026-08-23	39.85
588	289	Performance	Medium	Open	2026-06-23	65.17
589	289	Feature Request	Low	Closed	2026-03-24	7.82
590	289	Login	High	Resolved	2026-05-08	32.63
591	289	Performance	Medium	Closed	2026-04-19	43.62
592	290	Performance	Medium	Resolved	2026-05-11	22.33
593	290	Technical	High	Closed	2026-07-09	38.14
594	291	Performance	Low	Resolved	2026-06-02	4.21
595	292	Billing	Low	Closed	2026-08-12	1.94
596	293	Technical	Low	Resolved	2026-03-16	69.91
597	294	Technical	High	Open	2026-05-20	69.43
598	294	Performance	Low	Closed	2026-04-14	18.23
599	295	Performance	Low	Open	2026-08-26	38.51
600	295	Performance	High	Closed	2026-04-22	5.51
601	295	Performance	Medium	Resolved	2026-05-07	45.21
602	295	Login	Medium	Open	2026-05-22	2.48
603	296	Technical	High	Resolved	2026-06-30	50.04
604	296	Billing	High	Closed	2026-08-08	13.30
605	296	Technical	High	Closed	2026-08-16	57.34
606	296	Performance	Medium	Resolved	2026-07-19	40.53
607	296	Billing	Medium	Closed	2026-06-11	49.06
608	297	Billing	High	Resolved	2026-05-21	57.73
609	297	Billing	Low	Open	2026-04-07	56.53
610	298	Billing	Low	Closed	2026-05-27	55.61
611	298	Billing	Low	Closed	2026-06-15	21.36
612	298	Technical	Low	Closed	2026-06-07	51.78
613	298	Performance	Medium	Open	2026-03-24	18.43
614	298	Feature Request	Medium	Resolved	2026-08-06	57.93
615	299	Performance	Low	Open	2026-03-30	11.72
616	300	Performance	High	Resolved	2026-04-24	45.33
617	300	Feature Request	High	Closed	2026-03-16	25.51
618	300	Performance	Low	Closed	2026-08-20	3.62
619	301	Feature Request	Low	Open	2026-08-26	60.75
620	301	Login	High	Open	2026-06-12	9.79
621	303	Technical	Medium	Resolved	2026-05-19	6.54
622	303	Feature Request	Medium	Open	2026-04-20	37.85
623	304	Technical	Medium	Closed	2026-09-02	54.00
624	305	Feature Request	Medium	Resolved	2026-06-24	64.12
625	305	Technical	Low	Open	2026-05-08	1.15
626	306	Performance	High	Closed	2026-08-03	62.51
627	306	Login	Low	Open	2026-03-24	45.27
628	307	Feature Request	High	Open	2026-08-28	68.97
629	307	Feature Request	Low	Closed	2026-05-05	64.68
630	308	Technical	Medium	Resolved	2026-04-28	23.53
631	308	Login	Low	Resolved	2026-08-16	39.47
632	308	Login	Low	Resolved	2026-07-07	55.55
633	308	Technical	Medium	Closed	2026-03-21	13.01
634	309	Performance	High	Open	2026-06-04	68.40
635	310	Performance	Medium	Resolved	2026-04-01	36.53
636	311	Performance	Medium	Open	2026-07-08	60.60
637	311	Performance	Medium	Open	2026-07-18	42.55
638	311	Feature Request	Medium	Resolved	2026-07-31	53.48
639	311	Feature Request	Low	Closed	2026-08-19	29.07
640	311	Billing	Low	Open	2026-04-21	71.92
641	311	Performance	Low	Open	2026-05-04	68.98
642	312	Billing	Low	Open	2026-07-28	30.33
643	312	Performance	Medium	Open	2026-08-21	56.90
644	313	Login	Low	Resolved	2026-04-06	45.39
645	314	Technical	High	Resolved	2026-03-26	53.46
646	314	Feature Request	High	Resolved	2026-08-25	42.76
647	314	Billing	Low	Closed	2026-04-18	61.74
648	315	Performance	Medium	Resolved	2026-03-20	37.80
649	315	Performance	Medium	Open	2026-08-30	63.75
650	315	Technical	Low	Closed	2026-05-26	38.80
651	316	Billing	Low	Closed	2026-05-23	58.37
652	316	Feature Request	High	Closed	2026-07-08	18.55
653	316	Performance	Low	Closed	2026-08-28	59.34
654	316	Feature Request	Low	Resolved	2026-04-10	44.99
655	316	Billing	High	Closed	2026-04-15	9.86
656	316	Billing	Low	Closed	2026-06-22	64.20
657	317	Feature Request	High	Open	2026-09-08	33.19
658	317	Performance	Medium	Open	2026-04-05	8.19
659	318	Performance	Low	Resolved	2026-08-06	57.59
660	318	Billing	Low	Closed	2026-04-14	31.95
661	319	Performance	Medium	Resolved	2026-07-21	46.48
662	320	Billing	High	Resolved	2026-03-17	17.35
664	322	Billing	Medium	Resolved	2026-06-24	33.39
665	324	Feature Request	Low	Resolved	2026-05-03	28.56
666	324	Feature Request	Medium	Closed	2026-05-01	33.96
667	325	Login	Medium	Closed	2026-04-17	12.16
668	325	Login	Medium	Open	2026-08-20	10.54
669	326	Technical	Medium	Open	2026-08-22	26.50
670	326	Billing	Medium	Open	2026-05-02	39.81
671	328	Technical	Medium	Resolved	2026-05-01	42.68
672	329	Login	High	Resolved	2026-05-06	58.54
673	330	Feature Request	High	Open	2026-06-02	70.59
674	330	Technical	Medium	Resolved	2026-04-27	28.44
675	330	Performance	Low	Closed	2026-04-18	69.30
676	331	Billing	Medium	Open	2026-09-08	13.20
677	331	Performance	Medium	Resolved	2026-08-13	10.17
678	331	Performance	Medium	Open	2026-08-24	28.62
679	332	Performance	High	Resolved	2026-04-29	24.35
680	332	Feature Request	Medium	Closed	2026-05-15	41.91
681	333	Billing	Medium	Open	2026-08-30	18.02
682	333	Technical	Medium	Open	2026-04-26	21.72
683	333	Billing	High	Open	2026-07-17	65.52
684	333	Performance	High	Resolved	2026-06-08	6.43
685	334	Billing	High	Resolved	2026-06-19	48.59
686	335	Performance	Low	Resolved	2026-03-23	55.21
687	336	Billing	Low	Closed	2026-07-21	66.95
688	336	Login	Low	Resolved	2026-08-18	2.14
689	337	Technical	High	Resolved	2026-04-25	29.05
690	337	Performance	Low	Resolved	2026-07-18	8.52
691	337	Login	Low	Resolved	2026-05-31	47.43
692	337	Billing	Medium	Resolved	2026-05-16	16.63
693	338	Performance	High	Open	2026-08-07	24.58
694	338	Login	High	Closed	2026-08-24	24.79
695	339	Billing	Low	Closed	2026-05-06	22.06
696	339	Technical	Medium	Resolved	2026-03-30	3.69
697	339	Feature Request	Medium	Open	2026-06-18	10.53
698	343	Technical	High	Open	2026-07-28	19.27
699	343	Performance	Medium	Closed	2026-06-30	27.64
700	343	Feature Request	Medium	Resolved	2026-06-17	10.70
701	344	Billing	Low	Closed	2026-04-19	12.53
702	344	Performance	Medium	Open	2026-06-13	37.18
703	344	Performance	High	Open	2026-06-08	50.45
704	345	Technical	Low	Resolved	2026-08-18	46.75
705	345	Performance	Medium	Open	2026-04-13	70.16
706	346	Login	High	Resolved	2026-06-01	50.63
707	346	Billing	Low	Closed	2026-09-10	7.88
708	347	Technical	Low	Closed	2026-05-29	32.29
709	347	Feature Request	Low	Open	2026-07-30	6.67
710	347	Billing	Medium	Resolved	2026-07-02	5.56
711	348	Feature Request	Medium	Closed	2026-05-12	54.74
712	349	Performance	High	Resolved	2026-09-04	43.74
713	349	Feature Request	Medium	Open	2026-07-09	27.16
714	349	Feature Request	High	Open	2026-05-12	37.56
715	349	Technical	Low	Open	2026-06-20	2.18
716	349	Login	Low	Open	2026-06-19	49.13
717	350	Feature Request	Low	Resolved	2026-05-06	57.57
718	350	Login	High	Open	2026-05-14	12.93
719	350	Performance	Low	Closed	2026-03-25	39.39
720	350	Technical	Low	Resolved	2026-03-26	50.69
721	350	Billing	Medium	Open	2026-09-03	12.38
722	351	Login	Medium	Open	2026-06-05	47.43
723	351	Feature Request	Medium	Resolved	2026-07-15	19.40
724	352	Technical	Medium	Closed	2026-06-21	55.76
725	352	Technical	High	Open	2026-04-09	42.95
726	352	Billing	Medium	Resolved	2026-04-26	61.52
727	353	Feature Request	Medium	Open	2026-07-17	36.15
728	354	Technical	Low	Open	2026-06-02	24.96
729	354	Performance	Medium	Closed	2026-06-02	6.10
730	354	Login	Medium	Open	2026-07-23	50.78
731	354	Feature Request	Medium	Resolved	2026-08-08	23.96
732	354	Feature Request	Low	Open	2026-06-25	33.48
733	355	Performance	High	Resolved	2026-08-27	7.82
734	355	Performance	Low	Resolved	2026-08-11	70.60
735	355	Login	High	Closed	2026-08-03	45.52
736	355	Performance	Low	Resolved	2026-08-11	18.10
737	356	Feature Request	High	Open	2026-05-11	20.43
738	356	Billing	High	Resolved	2026-06-04	35.38
739	356	Performance	Medium	Open	2026-08-09	8.06
740	356	Billing	High	Open	2026-07-25	29.78
741	357	Performance	Medium	Resolved	2026-08-31	10.15
742	357	Technical	High	Resolved	2026-08-19	40.94
743	357	Billing	Low	Resolved	2026-05-04	22.20
744	357	Feature Request	Low	Closed	2026-03-26	1.01
745	358	Technical	Low	Closed	2026-07-17	68.98
746	358	Feature Request	High	Resolved	2026-04-12	26.49
747	360	Billing	Medium	Closed	2026-07-03	11.39
748	360	Technical	Medium	Resolved	2026-08-16	27.78
749	360	Technical	Medium	Resolved	2026-08-10	13.48
750	361	Performance	Medium	Open	2026-08-09	19.39
751	361	Feature Request	High	Resolved	2026-03-26	9.97
752	363	Billing	Medium	Open	2026-05-03	67.20
753	363	Technical	Medium	Closed	2026-05-02	49.64
754	364	Technical	Low	Closed	2026-08-07	37.47
755	364	Billing	Medium	Closed	2026-06-05	13.10
756	364	Billing	Medium	Open	2026-07-09	60.05
757	365	Billing	High	Closed	2026-06-18	22.18
758	365	Billing	Low	Closed	2026-07-25	29.55
759	367	Performance	High	Closed	2026-09-02	12.38
760	368	Login	High	Resolved	2026-03-19	17.79
761	368	Login	Medium	Open	2026-09-08	31.84
762	368	Login	Medium	Closed	2026-08-20	55.02
763	369	Feature Request	High	Open	2026-08-03	17.29
764	369	Technical	Medium	Resolved	2026-07-02	71.32
765	369	Technical	Medium	Resolved	2026-04-06	15.17
766	369	Billing	Medium	Closed	2026-04-29	22.76
767	369	Technical	Low	Closed	2026-05-24	35.02
768	369	Feature Request	Medium	Open	2026-08-28	22.60
769	370	Technical	Medium	Closed	2026-06-09	24.73
770	370	Billing	Low	Open	2026-09-07	49.49
771	370	Technical	Medium	Closed	2026-06-10	53.75
772	370	Feature Request	High	Open	2026-06-07	17.92
773	370	Login	Low	Open	2026-06-04	7.19
774	371	Billing	Low	Resolved	2026-05-26	40.09
775	373	Billing	High	Closed	2026-05-05	51.25
776	373	Feature Request	Medium	Closed	2026-07-16	22.04
777	373	Login	High	Resolved	2026-07-29	16.90
778	374	Login	Medium	Resolved	2026-04-23	19.75
779	376	Performance	Low	Resolved	2026-07-24	41.45
780	376	Technical	High	Closed	2026-09-05	23.02
781	376	Technical	Medium	Open	2026-04-08	14.34
782	376	Technical	Low	Closed	2026-07-10	33.31
783	377	Feature Request	Low	Resolved	2026-08-14	39.51
784	378	Billing	High	Closed	2026-08-15	37.32
785	378	Performance	Low	Resolved	2026-07-15	2.70
786	378	Performance	Medium	Resolved	2026-06-12	47.53
787	378	Technical	High	Closed	2026-03-19	63.78
788	379	Feature Request	Low	Open	2026-05-25	11.67
789	380	Performance	High	Closed	2026-08-24	9.03
790	380	Performance	High	Closed	2026-08-04	7.42
791	380	Technical	Low	Closed	2026-06-12	23.67
792	380	Performance	Medium	Open	2026-05-28	43.72
793	380	Login	Low	Open	2026-07-10	28.21
794	381	Billing	Medium	Open	2026-05-12	68.99
795	383	Technical	Medium	Open	2026-08-06	54.12
796	383	Login	Medium	Closed	2026-06-16	32.52
797	383	Billing	Medium	Resolved	2026-08-02	5.26
798	383	Billing	High	Resolved	2026-05-05	12.38
799	384	Billing	Low	Closed	2026-07-25	59.40
800	384	Feature Request	High	Resolved	2026-03-17	34.26
801	384	Login	High	Open	2026-05-30	59.74
802	386	Performance	High	Resolved	2026-06-22	54.38
803	386	Login	Low	Open	2026-03-22	7.91
804	386	Performance	High	Open	2026-08-16	36.65
805	386	Technical	Low	Open	2026-06-05	34.86
806	386	Billing	Medium	Resolved	2026-08-03	49.45
807	386	Billing	High	Resolved	2026-07-13	63.79
808	387	Performance	Low	Resolved	2026-04-07	44.09
809	387	Technical	High	Open	2026-05-06	7.92
810	387	Billing	Low	Closed	2026-04-23	62.59
811	387	Billing	Medium	Resolved	2026-05-17	23.27
812	387	Login	Low	Resolved	2026-07-01	41.93
813	388	Feature Request	High	Resolved	2026-05-21	27.04
814	389	Billing	Medium	Closed	2026-08-01	41.48
815	389	Billing	Low	Closed	2026-05-15	48.51
816	389	Login	Medium	Closed	2026-03-30	38.99
817	389	Performance	Low	Resolved	2026-07-26	52.96
818	390	Login	High	Resolved	2026-04-10	55.97
819	390	Billing	Medium	Closed	2026-05-12	16.15
820	392	Feature Request	High	Resolved	2026-08-22	52.31
821	392	Feature Request	High	Resolved	2026-06-20	48.15
822	392	Login	Low	Resolved	2026-05-16	67.30
823	392	Performance	Medium	Resolved	2026-03-22	29.85
824	392	Feature Request	High	Resolved	2026-05-18	67.98
825	393	Login	High	Resolved	2026-03-15	36.44
826	393	Performance	Medium	Closed	2026-06-12	26.01
827	394	Feature Request	Low	Resolved	2026-08-15	7.36
828	396	Performance	High	Resolved	2026-09-09	64.91
829	396	Performance	Low	Resolved	2026-09-04	11.89
830	396	Login	High	Open	2026-04-10	23.54
831	396	Technical	High	Closed	2026-07-11	40.46
832	397	Feature Request	Medium	Open	2026-07-06	60.45
833	397	Technical	Medium	Resolved	2026-08-18	7.62
834	399	Login	Low	Resolved	2026-08-22	36.09
835	399	Login	Low	Closed	2026-08-16	35.86
836	399	Billing	Medium	Resolved	2026-05-09	69.10
837	399	Billing	Low	Open	2026-05-26	27.64
838	399	Login	High	Closed	2026-07-31	13.77
839	400	Technical	Low	Closed	2026-08-12	64.80
840	400	Billing	Medium	Resolved	2026-07-16	6.92
841	401	Billing	High	Open	2026-06-23	12.76
842	401	Technical	High	Closed	2026-05-23	63.68
843	402	Feature Request	Medium	Closed	2026-09-03	9.14
844	402	Login	Medium	Resolved	2026-06-11	18.42
845	403	Feature Request	Low	Resolved	2026-04-20	20.74
846	403	Feature Request	High	Resolved	2026-04-17	64.38
847	403	Performance	High	Closed	2026-06-21	58.75
848	404	Feature Request	Low	Closed	2026-06-30	10.31
849	406	Login	High	Open	2026-05-22	17.07
850	406	Billing	Low	Open	2026-06-08	58.95
851	407	Technical	Medium	Resolved	2026-04-14	64.03
852	408	Technical	High	Open	2026-07-20	50.34
853	409	Technical	High	Resolved	2026-08-08	16.53
854	411	Login	Medium	Resolved	2026-08-29	47.05
855	412	Billing	High	Resolved	2026-07-02	17.08
856	412	Feature Request	High	Open	2026-05-30	28.83
857	413	Billing	Low	Resolved	2026-06-17	64.89
858	414	Billing	Low	Open	2026-03-20	71.32
859	414	Technical	High	Open	2026-07-30	54.60
860	414	Billing	Low	Closed	2026-06-17	33.14
861	414	Login	High	Closed	2026-03-25	35.54
862	415	Technical	High	Resolved	2026-06-11	36.35
863	415	Technical	High	Open	2026-03-16	70.10
864	415	Login	Low	Open	2026-08-19	14.76
865	416	Login	Medium	Resolved	2026-08-31	42.15
866	417	Login	Medium	Closed	2026-08-25	57.78
867	417	Billing	Medium	Resolved	2026-07-17	21.09
868	417	Feature Request	Low	Resolved	2026-05-08	22.71
869	417	Performance	Medium	Open	2026-09-10	4.54
870	417	Technical	Medium	Closed	2026-05-05	48.24
871	417	Feature Request	Low	Resolved	2026-07-03	11.13
872	419	Feature Request	Medium	Open	2026-06-22	36.77
873	419	Login	Medium	Closed	2026-05-24	34.13
874	422	Billing	Low	Open	2026-08-11	37.91
875	422	Technical	Low	Resolved	2026-05-12	2.75
876	422	Feature Request	Medium	Closed	2026-08-27	66.75
877	422	Login	Medium	Closed	2026-07-25	59.24
878	422	Feature Request	Medium	Open	2026-03-20	32.18
879	423	Login	Medium	Closed	2026-03-16	57.79
880	423	Performance	Medium	Closed	2026-08-04	2.99
881	423	Performance	Low	Open	2026-06-03	1.78
882	424	Billing	Low	Open	2026-08-03	25.98
883	424	Feature Request	Medium	Closed	2026-08-06	20.76
884	424	Login	Medium	Resolved	2026-03-29	35.35
885	425	Billing	Medium	Open	2026-05-12	23.98
886	426	Billing	Low	Closed	2026-08-14	50.61
887	428	Feature Request	High	Resolved	2026-08-24	32.16
888	429	Billing	Low	Closed	2026-08-22	38.94
889	430	Feature Request	High	Closed	2026-03-25	65.77
890	430	Billing	Low	Closed	2026-08-23	58.20
891	430	Feature Request	High	Open	2026-09-01	25.56
892	430	Billing	Medium	Open	2026-04-07	66.98
893	430	Feature Request	Medium	Resolved	2026-07-03	52.36
894	431	Billing	High	Closed	2026-08-28	28.49
895	434	Login	Medium	Open	2026-04-25	36.74
896	434	Billing	Medium	Closed	2026-04-04	35.52
897	434	Billing	Low	Resolved	2026-04-30	17.37
898	435	Billing	Low	Closed	2026-04-07	28.26
899	435	Billing	Medium	Closed	2026-05-20	4.15
900	435	Technical	Medium	Resolved	2026-03-26	31.61
901	436	Performance	High	Open	2026-08-27	58.33
902	436	Feature Request	Medium	Open	2026-03-21	21.41
903	436	Feature Request	Medium	Closed	2026-04-17	52.06
904	438	Login	Medium	Open	2026-04-21	16.47
905	439	Billing	Low	Resolved	2026-03-27	3.73
906	440	Billing	Low	Open	2026-05-20	9.04
907	440	Billing	Low	Resolved	2026-06-19	41.50
908	440	Performance	Low	Open	2026-05-24	63.19
909	441	Feature Request	Low	Closed	2026-05-03	51.82
910	441	Feature Request	High	Open	2026-06-14	67.74
911	441	Performance	High	Resolved	2026-03-26	52.56
912	441	Performance	High	Resolved	2026-08-22	69.06
913	441	Technical	High	Open	2026-04-16	45.75
914	442	Login	High	Resolved	2026-03-17	18.11
915	442	Performance	Medium	Resolved	2026-06-12	40.79
916	443	Login	Medium	Resolved	2026-08-21	30.00
917	443	Feature Request	Low	Open	2026-05-07	45.92
918	443	Technical	Low	Closed	2026-09-07	12.84
919	443	Performance	Medium	Open	2026-05-13	53.74
920	444	Login	High	Open	2026-04-06	8.65
921	444	Billing	Low	Open	2026-06-12	68.44
922	444	Performance	High	Closed	2026-05-22	21.54
923	444	Performance	High	Resolved	2026-07-26	52.38
924	445	Login	Low	Open	2026-05-01	64.71
925	445	Feature Request	High	Closed	2026-06-29	23.92
926	446	Technical	Medium	Closed	2026-04-08	54.50
927	448	Billing	Medium	Resolved	2026-07-16	52.64
928	448	Login	Low	Open	2026-06-17	20.60
929	448	Feature Request	High	Resolved	2026-03-18	23.35
930	449	Technical	High	Resolved	2026-07-05	34.38
931	449	Performance	Low	Open	2026-05-06	21.06
932	451	Login	Medium	Closed	2026-06-19	18.57
933	451	Performance	Low	Resolved	2026-05-15	68.90
934	451	Billing	Medium	Open	2026-06-01	51.04
935	451	Performance	Medium	Open	2026-05-28	49.79
936	452	Technical	Medium	Open	2026-08-30	22.90
937	453	Feature Request	Low	Open	2026-08-29	37.82
938	453	Login	High	Resolved	2026-08-01	60.51
939	454	Login	Medium	Resolved	2026-07-14	45.84
940	454	Technical	Low	Closed	2026-08-10	58.72
941	455	Performance	Low	Open	2026-06-23	56.72
942	455	Performance	High	Open	2026-09-05	22.45
943	456	Performance	Medium	Open	2026-08-14	33.11
944	458	Login	High	Resolved	2026-04-20	57.42
945	459	Billing	Low	Resolved	2026-05-21	62.75
946	460	Feature Request	Medium	Open	2026-03-28	12.78
947	460	Login	High	Open	2026-07-20	58.00
948	460	Login	High	Open	2026-07-08	34.52
949	461	Billing	High	Closed	2026-04-11	12.11
950	462	Technical	Low	Open	2026-08-02	8.31
951	462	Technical	Medium	Resolved	2026-07-05	41.02
952	462	Technical	High	Open	2026-03-29	55.39
953	462	Login	High	Open	2026-04-09	20.68
954	462	Feature Request	High	Closed	2026-07-19	12.94
955	463	Billing	Low	Open	2026-06-02	27.79
956	464	Feature Request	Medium	Open	2026-06-13	13.64
957	464	Login	Medium	Open	2026-06-14	52.72
958	464	Technical	High	Open	2026-07-24	28.15
959	464	Technical	High	Resolved	2026-07-22	32.39
960	465	Login	Medium	Open	2026-08-27	69.95
961	465	Billing	High	Closed	2026-04-08	45.89
962	465	Performance	Low	Closed	2026-03-29	54.29
963	465	Billing	Low	Closed	2026-09-03	44.52
964	465	Technical	High	Open	2026-07-27	62.83
965	466	Login	High	Resolved	2026-04-13	52.27
966	466	Login	High	Resolved	2026-03-24	29.63
967	466	Billing	Low	Resolved	2026-05-05	11.47
968	467	Billing	High	Closed	2026-08-19	9.25
969	467	Billing	Low	Open	2026-08-19	14.18
970	468	Technical	High	Closed	2026-05-28	17.04
971	468	Technical	Medium	Resolved	2026-07-27	70.53
972	468	Login	High	Closed	2026-07-05	7.56
973	468	Login	High	Closed	2026-06-13	55.84
974	469	Login	Low	Open	2026-07-19	19.33
975	469	Performance	Medium	Resolved	2026-08-12	37.71
976	470	Billing	Low	Closed	2026-06-24	12.55
977	470	Feature Request	Low	Resolved	2026-05-21	58.45
978	471	Performance	High	Resolved	2026-07-31	37.37
979	471	Login	High	Open	2026-04-29	15.09
980	472	Technical	Low	Resolved	2026-05-22	7.40
981	472	Technical	Low	Open	2026-04-21	61.04
982	472	Login	Low	Closed	2026-08-01	25.47
983	473	Performance	High	Closed	2026-04-27	6.09
984	473	Performance	High	Open	2026-04-13	2.91
985	473	Feature Request	Low	Resolved	2026-06-08	26.72
986	475	Technical	High	Open	2026-06-04	49.73
987	475	Billing	Medium	Open	2026-03-23	29.52
988	475	Billing	Medium	Closed	2026-07-06	53.69
989	476	Feature Request	High	Open	2026-05-17	31.88
990	476	Performance	Medium	Resolved	2026-08-10	62.62
991	476	Performance	Medium	Resolved	2026-04-10	49.73
992	476	Login	Medium	Closed	2026-03-22	22.03
993	476	Billing	High	Closed	2026-07-27	21.82
994	476	Performance	Low	Closed	2026-06-19	22.14
995	478	Billing	Low	Open	2026-07-07	52.23
996	478	Billing	Medium	Resolved	2026-07-23	41.53
997	478	Login	High	Open	2026-04-25	61.65
998	478	Technical	High	Resolved	2026-06-07	41.71
999	478	Technical	Medium	Closed	2026-03-18	56.26
1000	478	Login	High	Open	2026-08-30	43.93
1001	479	Technical	Low	Open	2026-06-29	52.70
1002	479	Feature Request	Medium	Open	2026-05-26	46.07
1003	480	Feature Request	Low	Open	2026-05-09	40.85
1004	481	Billing	Medium	Open	2026-05-08	71.27
1005	481	Performance	High	Resolved	2026-06-06	44.11
1006	481	Billing	Low	Closed	2026-07-17	16.00
1007	482	Feature Request	Medium	Resolved	2026-05-30	36.13
1008	483	Billing	High	Resolved	2026-08-06	44.29
1009	483	Feature Request	Low	Open	2026-04-17	52.98
1010	484	Technical	Low	Closed	2026-07-21	23.91
1011	484	Login	Low	Resolved	2026-07-20	42.01
1012	484	Performance	Low	Open	2026-04-09	32.50
1013	484	Technical	Low	Closed	2026-05-05	46.54
1014	484	Feature Request	Medium	Resolved	2026-07-10	33.82
1015	484	Billing	Low	Open	2026-09-02	49.42
1016	485	Billing	Medium	Closed	2026-05-03	45.68
1017	485	Performance	Medium	Resolved	2026-08-15	11.36
1018	487	Login	Medium	Open	2026-08-01	41.30
1019	487	Login	Medium	Open	2026-05-21	48.80
1020	489	Billing	Medium	Resolved	2026-06-23	15.66
1021	490	Login	High	Resolved	2026-07-03	40.28
1022	490	Feature Request	High	Open	2026-08-21	69.90
1023	490	Billing	Medium	Open	2026-04-30	18.61
1024	490	Login	High	Resolved	2026-03-18	67.48
1025	490	Technical	Low	Open	2026-05-17	13.60
1026	493	Feature Request	High	Closed	2026-04-03	32.24
1027	495	Technical	High	Open	2026-08-01	24.12
1028	495	Feature Request	Medium	Open	2026-04-11	57.00
1029	496	Performance	Low	Closed	2026-06-12	46.85
1030	497	Feature Request	High	Closed	2026-07-02	8.59
1031	497	Technical	Low	Closed	2026-05-11	67.85
1032	497	Feature Request	Medium	Resolved	2026-03-26	28.69
1033	499	Login	Medium	Closed	2026-07-18	14.07
1034	500	Feature Request	Medium	Resolved	2026-04-19	32.04
1035	500	Billing	High	Closed	2026-04-26	35.93
1036	500	Feature Request	Medium	Open	2026-08-24	53.14
\.


--
-- TOC entry 5052 (class 0 OID 16420)
-- Dependencies: 224
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions (transaction_id, customer_id, amount, transaction_date, transaction_type) FROM stdin;
1	1	29.00	2026-09-11	Subscription Payment
2	1	29.00	2026-08-12	Subscription Payment
3	1	29.00	2026-07-13	Subscription Payment
4	1	29.00	2026-06-13	Subscription Payment
5	1	29.00	2026-05-14	Subscription Payment
6	1	29.00	2026-04-14	Subscription Payment
7	1	29.00	2026-03-15	Subscription Payment
8	1	29.00	2026-02-13	Subscription Payment
9	1	29.00	2026-01-14	Subscription Payment
10	1	29.00	2025-12-15	Subscription Payment
11	1	29.00	2025-11-15	Subscription Payment
12	1	29.00	2025-10-16	Subscription Payment
13	2	99.00	2026-09-11	Subscription Payment
14	2	99.00	2026-08-12	Subscription Payment
15	2	99.00	2026-07-13	Subscription Payment
16	2	99.00	2026-06-13	Subscription Payment
17	2	99.00	2026-05-14	Subscription Payment
18	2	99.00	2026-04-14	Subscription Payment
19	2	99.00	2026-03-15	Subscription Payment
20	2	99.00	2026-02-13	Subscription Payment
21	2	99.00	2026-01-14	Subscription Payment
22	2	99.00	2025-12-15	Subscription Payment
23	2	99.00	2025-11-15	Subscription Payment
24	2	99.00	2025-10-16	Subscription Payment
25	3	59.00	2026-09-11	Subscription Payment
26	3	59.00	2026-08-12	Subscription Payment
27	3	59.00	2026-07-13	Subscription Payment
28	3	59.00	2026-06-13	Subscription Payment
29	3	59.00	2026-05-14	Subscription Payment
30	3	59.00	2026-04-14	Subscription Payment
31	3	59.00	2026-03-15	Subscription Payment
32	3	59.00	2026-02-13	Subscription Payment
33	3	59.00	2026-01-14	Subscription Payment
34	3	59.00	2025-12-15	Subscription Payment
35	3	59.00	2025-11-15	Subscription Payment
36	3	59.00	2025-10-16	Subscription Payment
37	4	29.00	2026-09-11	Subscription Payment
38	4	29.00	2026-08-12	Subscription Payment
39	4	29.00	2026-07-13	Subscription Payment
40	4	29.00	2026-06-13	Subscription Payment
41	4	29.00	2026-05-14	Subscription Payment
42	4	29.00	2026-04-14	Subscription Payment
43	4	29.00	2026-03-15	Subscription Payment
44	4	29.00	2026-02-13	Subscription Payment
45	4	29.00	2026-01-14	Subscription Payment
46	4	29.00	2025-12-15	Subscription Payment
47	4	29.00	2025-11-15	Subscription Payment
48	4	29.00	2025-10-16	Subscription Payment
49	5	29.00	2026-09-11	Subscription Payment
50	5	29.00	2026-08-12	Subscription Payment
51	5	29.00	2026-07-13	Subscription Payment
52	5	29.00	2026-06-13	Subscription Payment
53	5	29.00	2026-05-14	Subscription Payment
54	5	29.00	2026-04-14	Subscription Payment
55	5	29.00	2026-03-15	Subscription Payment
56	5	29.00	2026-02-13	Subscription Payment
57	5	29.00	2026-01-14	Subscription Payment
58	5	29.00	2025-12-15	Subscription Payment
59	5	29.00	2025-11-15	Subscription Payment
60	5	29.00	2025-10-16	Subscription Payment
61	6	59.00	2026-09-11	Subscription Payment
62	6	59.00	2026-08-12	Subscription Payment
63	6	59.00	2026-07-13	Subscription Payment
64	6	59.00	2026-06-13	Subscription Payment
65	6	59.00	2026-05-14	Subscription Payment
66	6	59.00	2026-04-14	Subscription Payment
67	6	59.00	2026-03-15	Subscription Payment
68	6	59.00	2026-02-13	Subscription Payment
69	6	59.00	2026-01-14	Subscription Payment
70	6	59.00	2025-12-15	Subscription Payment
71	6	59.00	2025-11-15	Subscription Payment
72	6	59.00	2025-10-16	Subscription Payment
73	7	99.00	2026-09-11	Subscription Payment
74	7	99.00	2026-08-12	Subscription Payment
75	7	99.00	2026-07-13	Subscription Payment
76	7	99.00	2026-06-13	Subscription Payment
77	7	99.00	2026-05-14	Subscription Payment
78	7	99.00	2026-04-14	Subscription Payment
79	7	99.00	2026-03-15	Subscription Payment
80	8	99.00	2026-09-11	Subscription Payment
81	8	99.00	2026-08-12	Subscription Payment
82	8	99.00	2026-07-13	Subscription Payment
83	8	99.00	2026-06-13	Subscription Payment
84	8	99.00	2026-05-14	Subscription Payment
85	8	99.00	2026-04-14	Subscription Payment
86	8	99.00	2026-03-15	Subscription Payment
87	8	99.00	2026-02-13	Subscription Payment
88	8	99.00	2026-01-14	Subscription Payment
89	8	99.00	2025-12-15	Subscription Payment
90	8	99.00	2025-11-15	Subscription Payment
91	8	99.00	2025-10-16	Subscription Payment
92	9	99.00	2026-09-11	Subscription Payment
93	9	99.00	2026-08-12	Subscription Payment
94	9	99.00	2026-07-13	Subscription Payment
95	10	99.00	2026-09-11	Subscription Payment
96	10	99.00	2026-08-12	Subscription Payment
97	10	99.00	2026-07-13	Subscription Payment
98	10	99.00	2026-06-13	Subscription Payment
99	10	99.00	2026-05-14	Subscription Payment
100	10	99.00	2026-04-14	Subscription Payment
101	10	99.00	2026-03-15	Subscription Payment
102	10	99.00	2026-02-13	Subscription Payment
103	10	99.00	2026-01-14	Subscription Payment
104	10	99.00	2025-12-15	Subscription Payment
105	10	99.00	2025-11-15	Subscription Payment
106	11	59.00	2026-09-11	Subscription Payment
107	11	59.00	2026-08-12	Subscription Payment
108	11	59.00	2026-07-13	Subscription Payment
109	11	59.00	2026-06-13	Subscription Payment
110	11	59.00	2026-05-14	Subscription Payment
111	11	59.00	2026-04-14	Subscription Payment
112	11	59.00	2026-03-15	Subscription Payment
113	11	59.00	2026-02-13	Subscription Payment
114	11	59.00	2026-01-14	Subscription Payment
115	11	59.00	2025-12-15	Subscription Payment
116	11	59.00	2025-11-15	Subscription Payment
117	11	59.00	2025-10-16	Subscription Payment
118	12	99.00	2026-09-11	Subscription Payment
119	12	99.00	2026-08-12	Subscription Payment
120	12	99.00	2026-07-13	Subscription Payment
121	12	99.00	2026-06-13	Subscription Payment
122	12	99.00	2026-05-14	Subscription Payment
123	12	99.00	2026-04-14	Subscription Payment
124	12	99.00	2026-03-15	Subscription Payment
125	12	99.00	2026-02-13	Subscription Payment
126	12	99.00	2026-01-14	Subscription Payment
127	12	99.00	2025-12-15	Subscription Payment
128	13	59.00	2026-09-11	Subscription Payment
129	13	59.00	2026-08-12	Subscription Payment
130	13	59.00	2026-07-13	Subscription Payment
131	13	59.00	2026-06-13	Subscription Payment
132	13	59.00	2026-05-14	Subscription Payment
133	13	59.00	2026-04-14	Subscription Payment
134	13	59.00	2026-03-15	Subscription Payment
135	13	59.00	2026-02-13	Subscription Payment
136	13	59.00	2026-01-14	Subscription Payment
137	14	99.00	2026-09-11	Subscription Payment
138	14	99.00	2026-08-12	Subscription Payment
139	14	99.00	2026-07-13	Subscription Payment
140	14	99.00	2026-06-13	Subscription Payment
141	14	99.00	2026-05-14	Subscription Payment
142	14	99.00	2026-04-14	Subscription Payment
143	14	99.00	2026-03-15	Subscription Payment
144	14	99.00	2026-02-13	Subscription Payment
145	14	99.00	2026-01-14	Subscription Payment
146	14	99.00	2025-12-15	Subscription Payment
147	14	99.00	2025-11-15	Subscription Payment
148	14	99.00	2025-10-16	Subscription Payment
149	15	59.00	2026-09-11	Subscription Payment
150	15	59.00	2026-08-12	Subscription Payment
151	15	59.00	2026-07-13	Subscription Payment
152	15	59.00	2026-06-13	Subscription Payment
153	15	59.00	2026-05-14	Subscription Payment
154	15	59.00	2026-04-14	Subscription Payment
155	15	59.00	2026-03-15	Subscription Payment
156	15	59.00	2026-02-13	Subscription Payment
157	15	59.00	2026-01-14	Subscription Payment
158	15	59.00	2025-12-15	Subscription Payment
159	15	59.00	2025-11-15	Subscription Payment
160	15	59.00	2025-10-16	Subscription Payment
161	16	29.00	2026-09-11	Subscription Payment
162	16	29.00	2026-08-12	Subscription Payment
163	16	29.00	2026-07-13	Subscription Payment
164	16	29.00	2026-06-13	Subscription Payment
165	16	29.00	2026-05-14	Subscription Payment
166	16	29.00	2026-04-14	Subscription Payment
167	16	29.00	2026-03-15	Subscription Payment
168	16	29.00	2026-02-13	Subscription Payment
169	16	29.00	2026-01-14	Subscription Payment
170	16	29.00	2025-12-15	Subscription Payment
171	16	29.00	2025-11-15	Subscription Payment
172	16	29.00	2025-10-16	Subscription Payment
173	17	59.00	2026-09-11	Subscription Payment
174	17	59.00	2026-08-12	Subscription Payment
175	17	59.00	2026-07-13	Subscription Payment
176	17	59.00	2026-06-13	Subscription Payment
177	17	59.00	2026-05-14	Subscription Payment
178	17	59.00	2026-04-14	Subscription Payment
179	17	59.00	2026-03-15	Subscription Payment
180	17	59.00	2026-02-13	Subscription Payment
181	17	59.00	2026-01-14	Subscription Payment
182	17	59.00	2025-12-15	Subscription Payment
183	17	59.00	2025-11-15	Subscription Payment
184	17	59.00	2025-10-16	Subscription Payment
185	18	29.00	2026-09-11	Subscription Payment
186	18	29.00	2026-08-12	Subscription Payment
187	18	29.00	2026-07-13	Subscription Payment
188	18	29.00	2026-06-13	Subscription Payment
189	18	29.00	2026-05-14	Subscription Payment
190	18	29.00	2026-04-14	Subscription Payment
191	18	29.00	2026-03-15	Subscription Payment
192	18	29.00	2026-02-13	Subscription Payment
193	18	29.00	2026-01-14	Subscription Payment
194	18	29.00	2025-12-15	Subscription Payment
195	18	29.00	2025-11-15	Subscription Payment
196	18	29.00	2025-10-16	Subscription Payment
197	19	99.00	2026-09-11	Subscription Payment
198	19	99.00	2026-08-12	Subscription Payment
199	19	99.00	2026-07-13	Subscription Payment
200	20	59.00	2026-09-11	Subscription Payment
201	20	59.00	2026-08-12	Subscription Payment
202	20	59.00	2026-07-13	Subscription Payment
203	20	59.00	2026-06-13	Subscription Payment
204	20	59.00	2026-05-14	Subscription Payment
205	20	59.00	2026-04-14	Subscription Payment
206	20	59.00	2026-03-15	Subscription Payment
207	20	59.00	2026-02-13	Subscription Payment
208	20	59.00	2026-01-14	Subscription Payment
209	20	59.00	2025-12-15	Subscription Payment
210	20	59.00	2025-11-15	Subscription Payment
211	20	59.00	2025-10-16	Subscription Payment
212	21	99.00	2026-09-11	Subscription Payment
213	21	99.00	2026-08-12	Subscription Payment
214	21	99.00	2026-07-13	Subscription Payment
215	21	99.00	2026-06-13	Subscription Payment
216	22	29.00	2026-09-11	Subscription Payment
217	22	29.00	2026-08-12	Subscription Payment
218	22	29.00	2026-07-13	Subscription Payment
219	22	29.00	2026-06-13	Subscription Payment
220	22	29.00	2026-05-14	Subscription Payment
221	22	29.00	2026-04-14	Subscription Payment
222	22	29.00	2026-03-15	Subscription Payment
223	22	29.00	2026-02-13	Subscription Payment
224	22	29.00	2026-01-14	Subscription Payment
225	22	29.00	2025-12-15	Subscription Payment
226	22	29.00	2025-11-15	Subscription Payment
227	22	29.00	2025-10-16	Subscription Payment
228	23	29.00	2026-09-11	Subscription Payment
229	23	29.00	2026-08-12	Subscription Payment
230	23	29.00	2026-07-13	Subscription Payment
231	23	29.00	2026-06-13	Subscription Payment
232	23	29.00	2026-05-14	Subscription Payment
233	23	29.00	2026-04-14	Subscription Payment
234	23	29.00	2026-03-15	Subscription Payment
235	23	29.00	2026-02-13	Subscription Payment
236	23	29.00	2026-01-14	Subscription Payment
237	23	29.00	2025-12-15	Subscription Payment
238	23	29.00	2025-11-15	Subscription Payment
239	23	29.00	2025-10-16	Subscription Payment
240	24	29.00	2026-09-11	Subscription Payment
241	24	29.00	2026-08-12	Subscription Payment
242	24	29.00	2026-07-13	Subscription Payment
243	24	29.00	2026-06-13	Subscription Payment
244	24	29.00	2026-05-14	Subscription Payment
245	24	29.00	2026-04-14	Subscription Payment
246	24	29.00	2026-03-15	Subscription Payment
247	24	29.00	2026-02-13	Subscription Payment
248	24	29.00	2026-01-14	Subscription Payment
249	24	29.00	2025-12-15	Subscription Payment
250	24	29.00	2025-11-15	Subscription Payment
251	24	29.00	2025-10-16	Subscription Payment
252	25	29.00	2026-09-11	Subscription Payment
253	25	29.00	2026-08-12	Subscription Payment
254	25	29.00	2026-07-13	Subscription Payment
255	25	29.00	2026-06-13	Subscription Payment
256	25	29.00	2026-05-14	Subscription Payment
257	25	29.00	2026-04-14	Subscription Payment
258	25	29.00	2026-03-15	Subscription Payment
259	25	29.00	2026-02-13	Subscription Payment
260	25	29.00	2026-01-14	Subscription Payment
261	25	29.00	2025-12-15	Subscription Payment
262	25	29.00	2025-11-15	Subscription Payment
263	25	29.00	2025-10-16	Subscription Payment
264	26	29.00	2026-09-11	Subscription Payment
265	26	29.00	2026-08-12	Subscription Payment
266	26	29.00	2026-07-13	Subscription Payment
267	26	29.00	2026-06-13	Subscription Payment
268	26	29.00	2026-05-14	Subscription Payment
269	26	29.00	2026-04-14	Subscription Payment
270	26	29.00	2026-03-15	Subscription Payment
271	26	29.00	2026-02-13	Subscription Payment
272	26	29.00	2026-01-14	Subscription Payment
273	26	29.00	2025-12-15	Subscription Payment
274	26	29.00	2025-11-15	Subscription Payment
275	26	29.00	2025-10-16	Subscription Payment
276	27	59.00	2026-09-11	Subscription Payment
277	27	59.00	2026-08-12	Subscription Payment
278	27	59.00	2026-07-13	Subscription Payment
279	27	59.00	2026-06-13	Subscription Payment
280	27	59.00	2026-05-14	Subscription Payment
281	27	59.00	2026-04-14	Subscription Payment
282	27	59.00	2026-03-15	Subscription Payment
283	27	59.00	2026-02-13	Subscription Payment
284	27	59.00	2026-01-14	Subscription Payment
285	27	59.00	2025-12-15	Subscription Payment
286	27	59.00	2025-11-15	Subscription Payment
287	28	29.00	2026-09-11	Subscription Payment
288	28	29.00	2026-08-12	Subscription Payment
289	28	29.00	2026-07-13	Subscription Payment
290	28	29.00	2026-06-13	Subscription Payment
291	28	29.00	2026-05-14	Subscription Payment
292	28	29.00	2026-04-14	Subscription Payment
293	28	29.00	2026-03-15	Subscription Payment
294	28	29.00	2026-02-13	Subscription Payment
295	28	29.00	2026-01-14	Subscription Payment
296	28	29.00	2025-12-15	Subscription Payment
297	28	29.00	2025-11-15	Subscription Payment
298	28	29.00	2025-10-16	Subscription Payment
299	29	29.00	2026-09-11	Subscription Payment
300	29	29.00	2026-08-12	Subscription Payment
301	29	29.00	2026-07-13	Subscription Payment
302	29	29.00	2026-06-13	Subscription Payment
303	29	29.00	2026-05-14	Subscription Payment
304	29	29.00	2026-04-14	Subscription Payment
305	29	29.00	2026-03-15	Subscription Payment
306	29	29.00	2026-02-13	Subscription Payment
307	29	29.00	2026-01-14	Subscription Payment
308	29	29.00	2025-12-15	Subscription Payment
309	29	29.00	2025-11-15	Subscription Payment
310	29	29.00	2025-10-16	Subscription Payment
311	30	29.00	2026-09-11	Subscription Payment
312	30	29.00	2026-08-12	Subscription Payment
313	30	29.00	2026-07-13	Subscription Payment
314	30	29.00	2026-06-13	Subscription Payment
315	30	29.00	2026-05-14	Subscription Payment
316	30	29.00	2026-04-14	Subscription Payment
317	30	29.00	2026-03-15	Subscription Payment
318	30	29.00	2026-02-13	Subscription Payment
319	30	29.00	2026-01-14	Subscription Payment
320	30	29.00	2025-12-15	Subscription Payment
321	30	29.00	2025-11-15	Subscription Payment
322	30	29.00	2025-10-16	Subscription Payment
323	31	99.00	2026-09-11	Subscription Payment
324	31	99.00	2026-08-12	Subscription Payment
325	31	99.00	2026-07-13	Subscription Payment
326	31	99.00	2026-06-13	Subscription Payment
327	31	99.00	2026-05-14	Subscription Payment
328	31	99.00	2026-04-14	Subscription Payment
329	31	99.00	2026-03-15	Subscription Payment
330	31	99.00	2026-02-13	Subscription Payment
331	31	99.00	2026-01-14	Subscription Payment
332	31	99.00	2025-12-15	Subscription Payment
333	31	99.00	2025-11-15	Subscription Payment
334	31	99.00	2025-10-16	Subscription Payment
335	32	99.00	2026-09-11	Subscription Payment
336	32	99.00	2026-08-12	Subscription Payment
337	32	99.00	2026-07-13	Subscription Payment
338	32	99.00	2026-06-13	Subscription Payment
339	32	99.00	2026-05-14	Subscription Payment
340	32	99.00	2026-04-14	Subscription Payment
341	32	99.00	2026-03-15	Subscription Payment
342	32	99.00	2026-02-13	Subscription Payment
343	32	99.00	2026-01-14	Subscription Payment
344	32	99.00	2025-12-15	Subscription Payment
345	32	99.00	2025-11-15	Subscription Payment
346	32	99.00	2025-10-16	Subscription Payment
347	33	29.00	2026-09-11	Subscription Payment
348	33	29.00	2026-08-12	Subscription Payment
349	33	29.00	2026-07-13	Subscription Payment
350	33	29.00	2026-06-13	Subscription Payment
351	33	29.00	2026-05-14	Subscription Payment
352	33	29.00	2026-04-14	Subscription Payment
353	33	29.00	2026-03-15	Subscription Payment
354	33	29.00	2026-02-13	Subscription Payment
355	33	29.00	2026-01-14	Subscription Payment
356	33	29.00	2025-12-15	Subscription Payment
357	33	29.00	2025-11-15	Subscription Payment
358	34	59.00	2026-09-11	Subscription Payment
359	34	59.00	2026-08-12	Subscription Payment
360	34	59.00	2026-07-13	Subscription Payment
361	34	59.00	2026-06-13	Subscription Payment
362	34	59.00	2026-05-14	Subscription Payment
363	34	59.00	2026-04-14	Subscription Payment
364	34	59.00	2026-03-15	Subscription Payment
365	34	59.00	2026-02-13	Subscription Payment
366	34	59.00	2026-01-14	Subscription Payment
367	34	59.00	2025-12-15	Subscription Payment
368	34	59.00	2025-11-15	Subscription Payment
369	34	59.00	2025-10-16	Subscription Payment
370	35	29.00	2026-09-11	Subscription Payment
371	35	29.00	2026-08-12	Subscription Payment
372	35	29.00	2026-07-13	Subscription Payment
373	35	29.00	2026-06-13	Subscription Payment
374	35	29.00	2026-05-14	Subscription Payment
375	36	59.00	2026-09-11	Subscription Payment
376	36	59.00	2026-08-12	Subscription Payment
377	36	59.00	2026-07-13	Subscription Payment
378	36	59.00	2026-06-13	Subscription Payment
379	36	59.00	2026-05-14	Subscription Payment
380	36	59.00	2026-04-14	Subscription Payment
381	36	59.00	2026-03-15	Subscription Payment
382	36	59.00	2026-02-13	Subscription Payment
383	36	59.00	2026-01-14	Subscription Payment
384	36	59.00	2025-12-15	Subscription Payment
385	36	59.00	2025-11-15	Subscription Payment
386	36	59.00	2025-10-16	Subscription Payment
387	37	59.00	2026-09-11	Subscription Payment
388	37	59.00	2026-08-12	Subscription Payment
389	37	59.00	2026-07-13	Subscription Payment
390	37	59.00	2026-06-13	Subscription Payment
391	37	59.00	2026-05-14	Subscription Payment
392	37	59.00	2026-04-14	Subscription Payment
393	37	59.00	2026-03-15	Subscription Payment
394	37	59.00	2026-02-13	Subscription Payment
395	37	59.00	2026-01-14	Subscription Payment
396	37	59.00	2025-12-15	Subscription Payment
397	37	59.00	2025-11-15	Subscription Payment
398	37	59.00	2025-10-16	Subscription Payment
399	38	59.00	2026-09-11	Subscription Payment
400	38	59.00	2026-08-12	Subscription Payment
401	38	59.00	2026-07-13	Subscription Payment
402	38	59.00	2026-06-13	Subscription Payment
403	38	59.00	2026-05-14	Subscription Payment
404	38	59.00	2026-04-14	Subscription Payment
405	38	59.00	2026-03-15	Subscription Payment
406	38	59.00	2026-02-13	Subscription Payment
407	38	59.00	2026-01-14	Subscription Payment
408	38	59.00	2025-12-15	Subscription Payment
409	38	59.00	2025-11-15	Subscription Payment
410	38	59.00	2025-10-16	Subscription Payment
411	39	29.00	2026-09-11	Subscription Payment
412	39	29.00	2026-08-12	Subscription Payment
413	39	29.00	2026-07-13	Subscription Payment
414	39	29.00	2026-06-13	Subscription Payment
415	39	29.00	2026-05-14	Subscription Payment
416	39	29.00	2026-04-14	Subscription Payment
417	39	29.00	2026-03-15	Subscription Payment
418	39	29.00	2026-02-13	Subscription Payment
419	39	29.00	2026-01-14	Subscription Payment
420	39	29.00	2025-12-15	Subscription Payment
421	39	29.00	2025-11-15	Subscription Payment
422	39	29.00	2025-10-16	Subscription Payment
423	40	59.00	2026-09-11	Subscription Payment
424	40	59.00	2026-08-12	Subscription Payment
425	40	59.00	2026-07-13	Subscription Payment
426	40	59.00	2026-06-13	Subscription Payment
427	40	59.00	2026-05-14	Subscription Payment
428	41	59.00	2026-09-11	Subscription Payment
429	41	59.00	2026-08-12	Subscription Payment
430	41	59.00	2026-07-13	Subscription Payment
431	41	59.00	2026-06-13	Subscription Payment
432	41	59.00	2026-05-14	Subscription Payment
433	41	59.00	2026-04-14	Subscription Payment
434	41	59.00	2026-03-15	Subscription Payment
435	41	59.00	2026-02-13	Subscription Payment
436	41	59.00	2026-01-14	Subscription Payment
437	41	59.00	2025-12-15	Subscription Payment
438	41	59.00	2025-11-15	Subscription Payment
439	41	59.00	2025-10-16	Subscription Payment
440	42	29.00	2026-09-11	Subscription Payment
441	42	29.00	2026-08-12	Subscription Payment
442	42	29.00	2026-07-13	Subscription Payment
443	42	29.00	2026-06-13	Subscription Payment
444	42	29.00	2026-05-14	Subscription Payment
445	42	29.00	2026-04-14	Subscription Payment
446	42	29.00	2026-03-15	Subscription Payment
447	42	29.00	2026-02-13	Subscription Payment
448	42	29.00	2026-01-14	Subscription Payment
449	42	29.00	2025-12-15	Subscription Payment
450	43	99.00	2026-09-11	Subscription Payment
451	43	99.00	2026-08-12	Subscription Payment
452	43	99.00	2026-07-13	Subscription Payment
453	43	99.00	2026-06-13	Subscription Payment
454	43	99.00	2026-05-14	Subscription Payment
455	43	99.00	2026-04-14	Subscription Payment
456	43	99.00	2026-03-15	Subscription Payment
457	43	99.00	2026-02-13	Subscription Payment
458	43	99.00	2026-01-14	Subscription Payment
459	43	99.00	2025-12-15	Subscription Payment
460	43	99.00	2025-11-15	Subscription Payment
461	43	99.00	2025-10-16	Subscription Payment
462	44	99.00	2026-09-11	Subscription Payment
463	44	99.00	2026-08-12	Subscription Payment
464	44	99.00	2026-07-13	Subscription Payment
465	44	99.00	2026-06-13	Subscription Payment
466	44	99.00	2026-05-14	Subscription Payment
467	44	99.00	2026-04-14	Subscription Payment
468	44	99.00	2026-03-15	Subscription Payment
469	44	99.00	2026-02-13	Subscription Payment
470	44	99.00	2026-01-14	Subscription Payment
471	44	99.00	2025-12-15	Subscription Payment
472	44	99.00	2025-11-15	Subscription Payment
473	44	99.00	2025-10-16	Subscription Payment
474	45	59.00	2026-09-11	Subscription Payment
475	45	59.00	2026-08-12	Subscription Payment
476	45	59.00	2026-07-13	Subscription Payment
477	45	59.00	2026-06-13	Subscription Payment
478	45	59.00	2026-05-14	Subscription Payment
479	45	59.00	2026-04-14	Subscription Payment
480	45	59.00	2026-03-15	Subscription Payment
481	45	59.00	2026-02-13	Subscription Payment
482	45	59.00	2026-01-14	Subscription Payment
483	45	59.00	2025-12-15	Subscription Payment
484	45	59.00	2025-11-15	Subscription Payment
485	45	59.00	2025-10-16	Subscription Payment
486	46	99.00	2026-09-11	Subscription Payment
487	46	99.00	2026-08-12	Subscription Payment
488	46	99.00	2026-07-13	Subscription Payment
489	46	99.00	2026-06-13	Subscription Payment
490	46	99.00	2026-05-14	Subscription Payment
491	46	99.00	2026-04-14	Subscription Payment
492	46	99.00	2026-03-15	Subscription Payment
493	46	99.00	2026-02-13	Subscription Payment
494	46	99.00	2026-01-14	Subscription Payment
495	46	99.00	2025-12-15	Subscription Payment
496	46	99.00	2025-11-15	Subscription Payment
497	46	99.00	2025-10-16	Subscription Payment
498	47	29.00	2026-09-11	Subscription Payment
499	47	29.00	2026-08-12	Subscription Payment
500	47	29.00	2026-07-13	Subscription Payment
501	47	29.00	2026-06-13	Subscription Payment
502	47	29.00	2026-05-14	Subscription Payment
503	47	29.00	2026-04-14	Subscription Payment
504	47	29.00	2026-03-15	Subscription Payment
505	47	29.00	2026-02-13	Subscription Payment
506	47	29.00	2026-01-14	Subscription Payment
507	47	29.00	2025-12-15	Subscription Payment
508	47	29.00	2025-11-15	Subscription Payment
509	47	29.00	2025-10-16	Subscription Payment
510	48	59.00	2026-09-11	Subscription Payment
511	48	59.00	2026-08-12	Subscription Payment
512	48	59.00	2026-07-13	Subscription Payment
513	48	59.00	2026-06-13	Subscription Payment
514	48	59.00	2026-05-14	Subscription Payment
515	48	59.00	2026-04-14	Subscription Payment
516	48	59.00	2026-03-15	Subscription Payment
517	48	59.00	2026-02-13	Subscription Payment
518	48	59.00	2026-01-14	Subscription Payment
519	48	59.00	2025-12-15	Subscription Payment
520	48	59.00	2025-11-15	Subscription Payment
521	48	59.00	2025-10-16	Subscription Payment
522	49	29.00	2026-09-11	Subscription Payment
523	49	29.00	2026-08-12	Subscription Payment
524	49	29.00	2026-07-13	Subscription Payment
525	49	29.00	2026-06-13	Subscription Payment
526	49	29.00	2026-05-14	Subscription Payment
527	49	29.00	2026-04-14	Subscription Payment
528	50	59.00	2026-09-11	Subscription Payment
529	50	59.00	2026-08-12	Subscription Payment
530	50	59.00	2026-07-13	Subscription Payment
531	50	59.00	2026-06-13	Subscription Payment
532	50	59.00	2026-05-14	Subscription Payment
533	50	59.00	2026-04-14	Subscription Payment
534	50	59.00	2026-03-15	Subscription Payment
535	50	59.00	2026-02-13	Subscription Payment
536	50	59.00	2026-01-14	Subscription Payment
537	50	59.00	2025-12-15	Subscription Payment
538	50	59.00	2025-11-15	Subscription Payment
539	50	59.00	2025-10-16	Subscription Payment
540	51	29.00	2026-09-11	Subscription Payment
541	51	29.00	2026-08-12	Subscription Payment
542	51	29.00	2026-07-13	Subscription Payment
543	51	29.00	2026-06-13	Subscription Payment
544	51	29.00	2026-05-14	Subscription Payment
545	51	29.00	2026-04-14	Subscription Payment
546	51	29.00	2026-03-15	Subscription Payment
547	51	29.00	2026-02-13	Subscription Payment
548	51	29.00	2026-01-14	Subscription Payment
549	51	29.00	2025-12-15	Subscription Payment
550	51	29.00	2025-11-15	Subscription Payment
551	51	29.00	2025-10-16	Subscription Payment
552	52	29.00	2026-09-11	Subscription Payment
553	52	29.00	2026-08-12	Subscription Payment
554	52	29.00	2026-07-13	Subscription Payment
555	52	29.00	2026-06-13	Subscription Payment
556	52	29.00	2026-05-14	Subscription Payment
557	52	29.00	2026-04-14	Subscription Payment
558	52	29.00	2026-03-15	Subscription Payment
559	52	29.00	2026-02-13	Subscription Payment
560	52	29.00	2026-01-14	Subscription Payment
561	52	29.00	2025-12-15	Subscription Payment
562	53	59.00	2026-09-11	Subscription Payment
563	53	59.00	2026-08-12	Subscription Payment
564	53	59.00	2026-07-13	Subscription Payment
565	53	59.00	2026-06-13	Subscription Payment
566	53	59.00	2026-05-14	Subscription Payment
567	53	59.00	2026-04-14	Subscription Payment
568	53	59.00	2026-03-15	Subscription Payment
569	53	59.00	2026-02-13	Subscription Payment
570	54	59.00	2026-09-11	Subscription Payment
571	54	59.00	2026-08-12	Subscription Payment
572	54	59.00	2026-07-13	Subscription Payment
573	54	59.00	2026-06-13	Subscription Payment
574	54	59.00	2026-05-14	Subscription Payment
575	54	59.00	2026-04-14	Subscription Payment
576	54	59.00	2026-03-15	Subscription Payment
577	54	59.00	2026-02-13	Subscription Payment
578	54	59.00	2026-01-14	Subscription Payment
579	54	59.00	2025-12-15	Subscription Payment
580	54	59.00	2025-11-15	Subscription Payment
581	54	59.00	2025-10-16	Subscription Payment
582	55	59.00	2026-09-11	Subscription Payment
583	55	59.00	2026-08-12	Subscription Payment
584	55	59.00	2026-07-13	Subscription Payment
585	55	59.00	2026-06-13	Subscription Payment
586	55	59.00	2026-05-14	Subscription Payment
587	55	59.00	2026-04-14	Subscription Payment
588	55	59.00	2026-03-15	Subscription Payment
589	55	59.00	2026-02-13	Subscription Payment
590	55	59.00	2026-01-14	Subscription Payment
591	55	59.00	2025-12-15	Subscription Payment
592	55	59.00	2025-11-15	Subscription Payment
593	55	59.00	2025-10-16	Subscription Payment
594	56	59.00	2026-09-11	Subscription Payment
595	56	59.00	2026-08-12	Subscription Payment
596	56	59.00	2026-07-13	Subscription Payment
597	56	59.00	2026-06-13	Subscription Payment
598	56	59.00	2026-05-14	Subscription Payment
599	56	59.00	2026-04-14	Subscription Payment
600	56	59.00	2026-03-15	Subscription Payment
601	56	59.00	2026-02-13	Subscription Payment
602	56	59.00	2026-01-14	Subscription Payment
603	56	59.00	2025-12-15	Subscription Payment
604	56	59.00	2025-11-15	Subscription Payment
605	56	59.00	2025-10-16	Subscription Payment
606	57	99.00	2026-09-11	Subscription Payment
607	57	99.00	2026-08-12	Subscription Payment
608	57	99.00	2026-07-13	Subscription Payment
609	57	99.00	2026-06-13	Subscription Payment
610	57	99.00	2026-05-14	Subscription Payment
611	57	99.00	2026-04-14	Subscription Payment
612	57	99.00	2026-03-15	Subscription Payment
613	57	99.00	2026-02-13	Subscription Payment
614	57	99.00	2026-01-14	Subscription Payment
615	57	99.00	2025-12-15	Subscription Payment
616	57	99.00	2025-11-15	Subscription Payment
617	57	99.00	2025-10-16	Subscription Payment
618	58	29.00	2026-09-11	Subscription Payment
619	58	29.00	2026-08-12	Subscription Payment
620	58	29.00	2026-07-13	Subscription Payment
621	58	29.00	2026-06-13	Subscription Payment
622	58	29.00	2026-05-14	Subscription Payment
623	58	29.00	2026-04-14	Subscription Payment
624	58	29.00	2026-03-15	Subscription Payment
625	58	29.00	2026-02-13	Subscription Payment
626	58	29.00	2026-01-14	Subscription Payment
627	58	29.00	2025-12-15	Subscription Payment
628	58	29.00	2025-11-15	Subscription Payment
629	58	29.00	2025-10-16	Subscription Payment
630	59	99.00	2026-09-11	Subscription Payment
631	59	99.00	2026-08-12	Subscription Payment
632	59	99.00	2026-07-13	Subscription Payment
633	59	99.00	2026-06-13	Subscription Payment
634	59	99.00	2026-05-14	Subscription Payment
635	59	99.00	2026-04-14	Subscription Payment
636	59	99.00	2026-03-15	Subscription Payment
637	59	99.00	2026-02-13	Subscription Payment
638	59	99.00	2026-01-14	Subscription Payment
639	59	99.00	2025-12-15	Subscription Payment
640	59	99.00	2025-11-15	Subscription Payment
641	59	99.00	2025-10-16	Subscription Payment
642	60	99.00	2026-09-11	Subscription Payment
643	60	99.00	2026-08-12	Subscription Payment
644	60	99.00	2026-07-13	Subscription Payment
645	60	99.00	2026-06-13	Subscription Payment
646	60	99.00	2026-05-14	Subscription Payment
647	60	99.00	2026-04-14	Subscription Payment
648	60	99.00	2026-03-15	Subscription Payment
649	60	99.00	2026-02-13	Subscription Payment
650	60	99.00	2026-01-14	Subscription Payment
651	60	99.00	2025-12-15	Subscription Payment
652	60	99.00	2025-11-15	Subscription Payment
653	60	99.00	2025-10-16	Subscription Payment
654	61	99.00	2026-09-11	Subscription Payment
655	61	99.00	2026-08-12	Subscription Payment
656	61	99.00	2026-07-13	Subscription Payment
657	61	99.00	2026-06-13	Subscription Payment
658	61	99.00	2026-05-14	Subscription Payment
659	61	99.00	2026-04-14	Subscription Payment
660	61	99.00	2026-03-15	Subscription Payment
661	61	99.00	2026-02-13	Subscription Payment
662	61	99.00	2026-01-14	Subscription Payment
663	61	99.00	2025-12-15	Subscription Payment
664	61	99.00	2025-11-15	Subscription Payment
665	61	99.00	2025-10-16	Subscription Payment
666	62	59.00	2026-09-11	Subscription Payment
667	62	59.00	2026-08-12	Subscription Payment
668	62	59.00	2026-07-13	Subscription Payment
669	62	59.00	2026-06-13	Subscription Payment
670	62	59.00	2026-05-14	Subscription Payment
671	62	59.00	2026-04-14	Subscription Payment
672	62	59.00	2026-03-15	Subscription Payment
673	62	59.00	2026-02-13	Subscription Payment
674	62	59.00	2026-01-14	Subscription Payment
675	62	59.00	2025-12-15	Subscription Payment
676	62	59.00	2025-11-15	Subscription Payment
677	62	59.00	2025-10-16	Subscription Payment
678	63	29.00	2026-09-11	Subscription Payment
679	63	29.00	2026-08-12	Subscription Payment
680	63	29.00	2026-07-13	Subscription Payment
681	63	29.00	2026-06-13	Subscription Payment
682	63	29.00	2026-05-14	Subscription Payment
683	63	29.00	2026-04-14	Subscription Payment
684	63	29.00	2026-03-15	Subscription Payment
685	63	29.00	2026-02-13	Subscription Payment
686	63	29.00	2026-01-14	Subscription Payment
687	63	29.00	2025-12-15	Subscription Payment
688	63	29.00	2025-11-15	Subscription Payment
689	63	29.00	2025-10-16	Subscription Payment
690	64	29.00	2026-09-11	Subscription Payment
691	64	29.00	2026-08-12	Subscription Payment
692	64	29.00	2026-07-13	Subscription Payment
693	64	29.00	2026-06-13	Subscription Payment
694	64	29.00	2026-05-14	Subscription Payment
695	64	29.00	2026-04-14	Subscription Payment
696	64	29.00	2026-03-15	Subscription Payment
697	64	29.00	2026-02-13	Subscription Payment
698	64	29.00	2026-01-14	Subscription Payment
699	64	29.00	2025-12-15	Subscription Payment
700	64	29.00	2025-11-15	Subscription Payment
701	64	29.00	2025-10-16	Subscription Payment
702	65	99.00	2026-09-11	Subscription Payment
703	65	99.00	2026-08-12	Subscription Payment
704	65	99.00	2026-07-13	Subscription Payment
705	65	99.00	2026-06-13	Subscription Payment
706	65	99.00	2026-05-14	Subscription Payment
707	65	99.00	2026-04-14	Subscription Payment
708	65	99.00	2026-03-15	Subscription Payment
709	65	99.00	2026-02-13	Subscription Payment
710	65	99.00	2026-01-14	Subscription Payment
711	65	99.00	2025-12-15	Subscription Payment
712	65	99.00	2025-11-15	Subscription Payment
713	66	59.00	2026-09-11	Subscription Payment
714	66	59.00	2026-08-12	Subscription Payment
715	66	59.00	2026-07-13	Subscription Payment
716	66	59.00	2026-06-13	Subscription Payment
717	66	59.00	2026-05-14	Subscription Payment
718	66	59.00	2026-04-14	Subscription Payment
719	66	59.00	2026-03-15	Subscription Payment
720	66	59.00	2026-02-13	Subscription Payment
721	66	59.00	2026-01-14	Subscription Payment
722	66	59.00	2025-12-15	Subscription Payment
723	66	59.00	2025-11-15	Subscription Payment
724	66	59.00	2025-10-16	Subscription Payment
725	67	59.00	2026-09-11	Subscription Payment
726	67	59.00	2026-08-12	Subscription Payment
727	67	59.00	2026-07-13	Subscription Payment
728	67	59.00	2026-06-13	Subscription Payment
729	67	59.00	2026-05-14	Subscription Payment
730	67	59.00	2026-04-14	Subscription Payment
731	67	59.00	2026-03-15	Subscription Payment
732	67	59.00	2026-02-13	Subscription Payment
733	67	59.00	2026-01-14	Subscription Payment
734	67	59.00	2025-12-15	Subscription Payment
735	67	59.00	2025-11-15	Subscription Payment
736	67	59.00	2025-10-16	Subscription Payment
737	68	59.00	2026-09-11	Subscription Payment
738	68	59.00	2026-08-12	Subscription Payment
739	68	59.00	2026-07-13	Subscription Payment
740	68	59.00	2026-06-13	Subscription Payment
741	68	59.00	2026-05-14	Subscription Payment
742	68	59.00	2026-04-14	Subscription Payment
743	68	59.00	2026-03-15	Subscription Payment
744	68	59.00	2026-02-13	Subscription Payment
745	68	59.00	2026-01-14	Subscription Payment
746	68	59.00	2025-12-15	Subscription Payment
747	68	59.00	2025-11-15	Subscription Payment
748	69	29.00	2026-09-11	Subscription Payment
749	69	29.00	2026-08-12	Subscription Payment
750	69	29.00	2026-07-13	Subscription Payment
751	69	29.00	2026-06-13	Subscription Payment
752	69	29.00	2026-05-14	Subscription Payment
753	69	29.00	2026-04-14	Subscription Payment
754	69	29.00	2026-03-15	Subscription Payment
755	69	29.00	2026-02-13	Subscription Payment
756	69	29.00	2026-01-14	Subscription Payment
757	69	29.00	2025-12-15	Subscription Payment
758	69	29.00	2025-11-15	Subscription Payment
759	69	29.00	2025-10-16	Subscription Payment
760	70	29.00	2026-09-11	Subscription Payment
761	70	29.00	2026-08-12	Subscription Payment
762	70	29.00	2026-07-13	Subscription Payment
763	70	29.00	2026-06-13	Subscription Payment
764	70	29.00	2026-05-14	Subscription Payment
765	70	29.00	2026-04-14	Subscription Payment
766	70	29.00	2026-03-15	Subscription Payment
767	70	29.00	2026-02-13	Subscription Payment
768	70	29.00	2026-01-14	Subscription Payment
769	70	29.00	2025-12-15	Subscription Payment
770	70	29.00	2025-11-15	Subscription Payment
771	70	29.00	2025-10-16	Subscription Payment
772	71	99.00	2026-09-11	Subscription Payment
773	71	99.00	2026-08-12	Subscription Payment
774	71	99.00	2026-07-13	Subscription Payment
775	71	99.00	2026-06-13	Subscription Payment
776	71	99.00	2026-05-14	Subscription Payment
777	71	99.00	2026-04-14	Subscription Payment
778	71	99.00	2026-03-15	Subscription Payment
779	71	99.00	2026-02-13	Subscription Payment
780	71	99.00	2026-01-14	Subscription Payment
781	71	99.00	2025-12-15	Subscription Payment
782	71	99.00	2025-11-15	Subscription Payment
783	72	99.00	2026-09-11	Subscription Payment
784	72	99.00	2026-08-12	Subscription Payment
785	72	99.00	2026-07-13	Subscription Payment
786	72	99.00	2026-06-13	Subscription Payment
787	72	99.00	2026-05-14	Subscription Payment
788	72	99.00	2026-04-14	Subscription Payment
789	72	99.00	2026-03-15	Subscription Payment
790	72	99.00	2026-02-13	Subscription Payment
791	72	99.00	2026-01-14	Subscription Payment
792	72	99.00	2025-12-15	Subscription Payment
793	72	99.00	2025-11-15	Subscription Payment
794	72	99.00	2025-10-16	Subscription Payment
795	73	99.00	2026-09-11	Subscription Payment
796	73	99.00	2026-08-12	Subscription Payment
797	73	99.00	2026-07-13	Subscription Payment
798	73	99.00	2026-06-13	Subscription Payment
799	73	99.00	2026-05-14	Subscription Payment
800	73	99.00	2026-04-14	Subscription Payment
801	73	99.00	2026-03-15	Subscription Payment
802	73	99.00	2026-02-13	Subscription Payment
803	73	99.00	2026-01-14	Subscription Payment
804	73	99.00	2025-12-15	Subscription Payment
805	73	99.00	2025-11-15	Subscription Payment
806	73	99.00	2025-10-16	Subscription Payment
807	74	99.00	2026-09-11	Subscription Payment
808	74	99.00	2026-08-12	Subscription Payment
809	74	99.00	2026-07-13	Subscription Payment
810	74	99.00	2026-06-13	Subscription Payment
811	74	99.00	2026-05-14	Subscription Payment
812	74	99.00	2026-04-14	Subscription Payment
813	74	99.00	2026-03-15	Subscription Payment
814	74	99.00	2026-02-13	Subscription Payment
815	74	99.00	2026-01-14	Subscription Payment
816	74	99.00	2025-12-15	Subscription Payment
817	74	99.00	2025-11-15	Subscription Payment
818	74	99.00	2025-10-16	Subscription Payment
819	75	29.00	2026-09-11	Subscription Payment
820	75	29.00	2026-08-12	Subscription Payment
821	75	29.00	2026-07-13	Subscription Payment
822	75	29.00	2026-06-13	Subscription Payment
823	75	29.00	2026-05-14	Subscription Payment
824	75	29.00	2026-04-14	Subscription Payment
825	75	29.00	2026-03-15	Subscription Payment
826	75	29.00	2026-02-13	Subscription Payment
827	75	29.00	2026-01-14	Subscription Payment
828	75	29.00	2025-12-15	Subscription Payment
829	75	29.00	2025-11-15	Subscription Payment
830	75	29.00	2025-10-16	Subscription Payment
831	76	59.00	2026-09-11	Subscription Payment
832	76	59.00	2026-08-12	Subscription Payment
833	76	59.00	2026-07-13	Subscription Payment
834	76	59.00	2026-06-13	Subscription Payment
835	76	59.00	2026-05-14	Subscription Payment
836	76	59.00	2026-04-14	Subscription Payment
837	76	59.00	2026-03-15	Subscription Payment
838	76	59.00	2026-02-13	Subscription Payment
839	76	59.00	2026-01-14	Subscription Payment
840	76	59.00	2025-12-15	Subscription Payment
841	76	59.00	2025-11-15	Subscription Payment
842	76	59.00	2025-10-16	Subscription Payment
843	77	99.00	2026-09-11	Subscription Payment
844	77	99.00	2026-08-12	Subscription Payment
845	77	99.00	2026-07-13	Subscription Payment
846	77	99.00	2026-06-13	Subscription Payment
847	77	99.00	2026-05-14	Subscription Payment
848	77	99.00	2026-04-14	Subscription Payment
849	77	99.00	2026-03-15	Subscription Payment
850	77	99.00	2026-02-13	Subscription Payment
851	77	99.00	2026-01-14	Subscription Payment
852	77	99.00	2025-12-15	Subscription Payment
853	77	99.00	2025-11-15	Subscription Payment
854	77	99.00	2025-10-16	Subscription Payment
855	78	59.00	2026-09-11	Subscription Payment
856	78	59.00	2026-08-12	Subscription Payment
857	78	59.00	2026-07-13	Subscription Payment
858	78	59.00	2026-06-13	Subscription Payment
859	78	59.00	2026-05-14	Subscription Payment
860	78	59.00	2026-04-14	Subscription Payment
861	78	59.00	2026-03-15	Subscription Payment
862	78	59.00	2026-02-13	Subscription Payment
863	78	59.00	2026-01-14	Subscription Payment
864	78	59.00	2025-12-15	Subscription Payment
865	78	59.00	2025-11-15	Subscription Payment
866	78	59.00	2025-10-16	Subscription Payment
867	79	59.00	2026-09-11	Subscription Payment
868	79	59.00	2026-08-12	Subscription Payment
869	79	59.00	2026-07-13	Subscription Payment
870	79	59.00	2026-06-13	Subscription Payment
871	79	59.00	2026-05-14	Subscription Payment
872	79	59.00	2026-04-14	Subscription Payment
873	79	59.00	2026-03-15	Subscription Payment
874	79	59.00	2026-02-13	Subscription Payment
875	79	59.00	2026-01-14	Subscription Payment
876	79	59.00	2025-12-15	Subscription Payment
877	79	59.00	2025-11-15	Subscription Payment
878	79	59.00	2025-10-16	Subscription Payment
879	80	29.00	2026-09-11	Subscription Payment
880	80	29.00	2026-08-12	Subscription Payment
881	80	29.00	2026-07-13	Subscription Payment
882	80	29.00	2026-06-13	Subscription Payment
883	80	29.00	2026-05-14	Subscription Payment
884	80	29.00	2026-04-14	Subscription Payment
885	80	29.00	2026-03-15	Subscription Payment
886	80	29.00	2026-02-13	Subscription Payment
887	80	29.00	2026-01-14	Subscription Payment
888	80	29.00	2025-12-15	Subscription Payment
889	80	29.00	2025-11-15	Subscription Payment
890	80	29.00	2025-10-16	Subscription Payment
891	81	29.00	2026-09-11	Subscription Payment
892	81	29.00	2026-08-12	Subscription Payment
893	81	29.00	2026-07-13	Subscription Payment
894	81	29.00	2026-06-13	Subscription Payment
895	81	29.00	2026-05-14	Subscription Payment
896	81	29.00	2026-04-14	Subscription Payment
897	81	29.00	2026-03-15	Subscription Payment
898	82	29.00	2026-09-11	Subscription Payment
899	82	29.00	2026-08-12	Subscription Payment
900	82	29.00	2026-07-13	Subscription Payment
901	82	29.00	2026-06-13	Subscription Payment
902	82	29.00	2026-05-14	Subscription Payment
903	82	29.00	2026-04-14	Subscription Payment
904	82	29.00	2026-03-15	Subscription Payment
905	82	29.00	2026-02-13	Subscription Payment
906	82	29.00	2026-01-14	Subscription Payment
907	82	29.00	2025-12-15	Subscription Payment
908	82	29.00	2025-11-15	Subscription Payment
909	82	29.00	2025-10-16	Subscription Payment
910	83	59.00	2026-09-11	Subscription Payment
911	83	59.00	2026-08-12	Subscription Payment
912	83	59.00	2026-07-13	Subscription Payment
913	83	59.00	2026-06-13	Subscription Payment
914	83	59.00	2026-05-14	Subscription Payment
915	83	59.00	2026-04-14	Subscription Payment
916	83	59.00	2026-03-15	Subscription Payment
917	83	59.00	2026-02-13	Subscription Payment
918	83	59.00	2026-01-14	Subscription Payment
919	83	59.00	2025-12-15	Subscription Payment
920	83	59.00	2025-11-15	Subscription Payment
921	83	59.00	2025-10-16	Subscription Payment
922	84	29.00	2026-09-11	Subscription Payment
923	84	29.00	2026-08-12	Subscription Payment
924	84	29.00	2026-07-13	Subscription Payment
925	84	29.00	2026-06-13	Subscription Payment
926	84	29.00	2026-05-14	Subscription Payment
927	84	29.00	2026-04-14	Subscription Payment
928	84	29.00	2026-03-15	Subscription Payment
929	84	29.00	2026-02-13	Subscription Payment
930	84	29.00	2026-01-14	Subscription Payment
931	84	29.00	2025-12-15	Subscription Payment
932	84	29.00	2025-11-15	Subscription Payment
933	84	29.00	2025-10-16	Subscription Payment
934	85	59.00	2026-09-11	Subscription Payment
935	85	59.00	2026-08-12	Subscription Payment
936	85	59.00	2026-07-13	Subscription Payment
937	85	59.00	2026-06-13	Subscription Payment
938	85	59.00	2026-05-14	Subscription Payment
939	85	59.00	2026-04-14	Subscription Payment
940	85	59.00	2026-03-15	Subscription Payment
941	85	59.00	2026-02-13	Subscription Payment
942	85	59.00	2026-01-14	Subscription Payment
943	85	59.00	2025-12-15	Subscription Payment
944	85	59.00	2025-11-15	Subscription Payment
945	85	59.00	2025-10-16	Subscription Payment
946	86	99.00	2026-09-11	Subscription Payment
947	86	99.00	2026-08-12	Subscription Payment
948	86	99.00	2026-07-13	Subscription Payment
949	86	99.00	2026-06-13	Subscription Payment
950	86	99.00	2026-05-14	Subscription Payment
951	86	99.00	2026-04-14	Subscription Payment
952	86	99.00	2026-03-15	Subscription Payment
953	86	99.00	2026-02-13	Subscription Payment
954	86	99.00	2026-01-14	Subscription Payment
955	86	99.00	2025-12-15	Subscription Payment
956	86	99.00	2025-11-15	Subscription Payment
957	86	99.00	2025-10-16	Subscription Payment
958	87	29.00	2026-09-11	Subscription Payment
959	87	29.00	2026-08-12	Subscription Payment
960	87	29.00	2026-07-13	Subscription Payment
961	87	29.00	2026-06-13	Subscription Payment
962	87	29.00	2026-05-14	Subscription Payment
963	87	29.00	2026-04-14	Subscription Payment
964	87	29.00	2026-03-15	Subscription Payment
965	87	29.00	2026-02-13	Subscription Payment
966	87	29.00	2026-01-14	Subscription Payment
967	87	29.00	2025-12-15	Subscription Payment
968	87	29.00	2025-11-15	Subscription Payment
969	87	29.00	2025-10-16	Subscription Payment
970	88	59.00	2026-09-11	Subscription Payment
971	88	59.00	2026-08-12	Subscription Payment
972	88	59.00	2026-07-13	Subscription Payment
973	88	59.00	2026-06-13	Subscription Payment
974	88	59.00	2026-05-14	Subscription Payment
975	88	59.00	2026-04-14	Subscription Payment
976	88	59.00	2026-03-15	Subscription Payment
977	88	59.00	2026-02-13	Subscription Payment
978	88	59.00	2026-01-14	Subscription Payment
979	88	59.00	2025-12-15	Subscription Payment
980	88	59.00	2025-11-15	Subscription Payment
981	88	59.00	2025-10-16	Subscription Payment
982	89	29.00	2026-09-11	Subscription Payment
983	89	29.00	2026-08-12	Subscription Payment
984	89	29.00	2026-07-13	Subscription Payment
985	89	29.00	2026-06-13	Subscription Payment
986	89	29.00	2026-05-14	Subscription Payment
987	89	29.00	2026-04-14	Subscription Payment
988	89	29.00	2026-03-15	Subscription Payment
989	89	29.00	2026-02-13	Subscription Payment
990	89	29.00	2026-01-14	Subscription Payment
991	89	29.00	2025-12-15	Subscription Payment
992	89	29.00	2025-11-15	Subscription Payment
993	89	29.00	2025-10-16	Subscription Payment
994	90	29.00	2026-09-11	Subscription Payment
995	90	29.00	2026-08-12	Subscription Payment
996	90	29.00	2026-07-13	Subscription Payment
997	91	29.00	2026-09-11	Subscription Payment
998	91	29.00	2026-08-12	Subscription Payment
999	91	29.00	2026-07-13	Subscription Payment
1000	92	99.00	2026-09-11	Subscription Payment
1001	92	99.00	2026-08-12	Subscription Payment
1002	92	99.00	2026-07-13	Subscription Payment
1003	92	99.00	2026-06-13	Subscription Payment
1004	92	99.00	2026-05-14	Subscription Payment
1005	92	99.00	2026-04-14	Subscription Payment
1006	92	99.00	2026-03-15	Subscription Payment
1007	92	99.00	2026-02-13	Subscription Payment
1008	92	99.00	2026-01-14	Subscription Payment
1009	92	99.00	2025-12-15	Subscription Payment
1010	92	99.00	2025-11-15	Subscription Payment
1011	92	99.00	2025-10-16	Subscription Payment
1012	93	29.00	2026-09-11	Subscription Payment
1013	93	29.00	2026-08-12	Subscription Payment
1014	93	29.00	2026-07-13	Subscription Payment
1015	93	29.00	2026-06-13	Subscription Payment
1016	93	29.00	2026-05-14	Subscription Payment
1017	93	29.00	2026-04-14	Subscription Payment
1018	93	29.00	2026-03-15	Subscription Payment
1019	93	29.00	2026-02-13	Subscription Payment
1020	93	29.00	2026-01-14	Subscription Payment
1021	93	29.00	2025-12-15	Subscription Payment
1022	93	29.00	2025-11-15	Subscription Payment
1023	93	29.00	2025-10-16	Subscription Payment
1024	94	59.00	2026-09-11	Subscription Payment
1025	94	59.00	2026-08-12	Subscription Payment
1026	94	59.00	2026-07-13	Subscription Payment
1027	94	59.00	2026-06-13	Subscription Payment
1028	94	59.00	2026-05-14	Subscription Payment
1029	94	59.00	2026-04-14	Subscription Payment
1030	94	59.00	2026-03-15	Subscription Payment
1031	94	59.00	2026-02-13	Subscription Payment
1032	94	59.00	2026-01-14	Subscription Payment
1033	94	59.00	2025-12-15	Subscription Payment
1034	94	59.00	2025-11-15	Subscription Payment
1035	94	59.00	2025-10-16	Subscription Payment
1036	95	29.00	2026-09-11	Subscription Payment
1037	95	29.00	2026-08-12	Subscription Payment
1038	95	29.00	2026-07-13	Subscription Payment
1039	95	29.00	2026-06-13	Subscription Payment
1040	95	29.00	2026-05-14	Subscription Payment
1041	95	29.00	2026-04-14	Subscription Payment
1042	95	29.00	2026-03-15	Subscription Payment
1043	95	29.00	2026-02-13	Subscription Payment
1044	95	29.00	2026-01-14	Subscription Payment
1045	95	29.00	2025-12-15	Subscription Payment
1046	95	29.00	2025-11-15	Subscription Payment
1047	95	29.00	2025-10-16	Subscription Payment
1048	96	29.00	2026-09-11	Subscription Payment
1049	96	29.00	2026-08-12	Subscription Payment
1050	96	29.00	2026-07-13	Subscription Payment
1051	96	29.00	2026-06-13	Subscription Payment
1052	96	29.00	2026-05-14	Subscription Payment
1053	96	29.00	2026-04-14	Subscription Payment
1054	96	29.00	2026-03-15	Subscription Payment
1055	96	29.00	2026-02-13	Subscription Payment
1056	96	29.00	2026-01-14	Subscription Payment
1057	96	29.00	2025-12-15	Subscription Payment
1058	96	29.00	2025-11-15	Subscription Payment
1059	96	29.00	2025-10-16	Subscription Payment
1060	97	29.00	2026-09-11	Subscription Payment
1061	97	29.00	2026-08-12	Subscription Payment
1062	97	29.00	2026-07-13	Subscription Payment
1063	97	29.00	2026-06-13	Subscription Payment
1064	97	29.00	2026-05-14	Subscription Payment
1065	97	29.00	2026-04-14	Subscription Payment
1066	97	29.00	2026-03-15	Subscription Payment
1067	97	29.00	2026-02-13	Subscription Payment
1068	97	29.00	2026-01-14	Subscription Payment
1069	97	29.00	2025-12-15	Subscription Payment
1070	97	29.00	2025-11-15	Subscription Payment
1071	97	29.00	2025-10-16	Subscription Payment
1072	98	29.00	2026-09-11	Subscription Payment
1073	98	29.00	2026-08-12	Subscription Payment
1074	98	29.00	2026-07-13	Subscription Payment
1075	98	29.00	2026-06-13	Subscription Payment
1076	98	29.00	2026-05-14	Subscription Payment
1077	98	29.00	2026-04-14	Subscription Payment
1078	98	29.00	2026-03-15	Subscription Payment
1079	98	29.00	2026-02-13	Subscription Payment
1080	98	29.00	2026-01-14	Subscription Payment
1081	98	29.00	2025-12-15	Subscription Payment
1082	99	29.00	2026-09-11	Subscription Payment
1083	99	29.00	2026-08-12	Subscription Payment
1084	99	29.00	2026-07-13	Subscription Payment
1085	99	29.00	2026-06-13	Subscription Payment
1086	99	29.00	2026-05-14	Subscription Payment
1087	99	29.00	2026-04-14	Subscription Payment
1088	99	29.00	2026-03-15	Subscription Payment
1089	99	29.00	2026-02-13	Subscription Payment
1090	99	29.00	2026-01-14	Subscription Payment
1091	99	29.00	2025-12-15	Subscription Payment
1092	99	29.00	2025-11-15	Subscription Payment
1093	99	29.00	2025-10-16	Subscription Payment
1094	100	29.00	2026-09-11	Subscription Payment
1095	100	29.00	2026-08-12	Subscription Payment
1096	100	29.00	2026-07-13	Subscription Payment
1097	100	29.00	2026-06-13	Subscription Payment
1098	100	29.00	2026-05-14	Subscription Payment
1099	100	29.00	2026-04-14	Subscription Payment
1100	100	29.00	2026-03-15	Subscription Payment
1101	100	29.00	2026-02-13	Subscription Payment
1102	100	29.00	2026-01-14	Subscription Payment
1103	100	29.00	2025-12-15	Subscription Payment
1104	100	29.00	2025-11-15	Subscription Payment
1105	100	29.00	2025-10-16	Subscription Payment
1106	101	29.00	2026-09-11	Subscription Payment
1107	101	29.00	2026-08-12	Subscription Payment
1108	101	29.00	2026-07-13	Subscription Payment
1109	101	29.00	2026-06-13	Subscription Payment
1110	101	29.00	2026-05-14	Subscription Payment
1111	101	29.00	2026-04-14	Subscription Payment
1112	101	29.00	2026-03-15	Subscription Payment
1113	101	29.00	2026-02-13	Subscription Payment
1114	101	29.00	2026-01-14	Subscription Payment
1115	101	29.00	2025-12-15	Subscription Payment
1116	101	29.00	2025-11-15	Subscription Payment
1117	101	29.00	2025-10-16	Subscription Payment
1118	102	59.00	2026-09-11	Subscription Payment
1119	102	59.00	2026-08-12	Subscription Payment
1120	102	59.00	2026-07-13	Subscription Payment
1121	102	59.00	2026-06-13	Subscription Payment
1122	102	59.00	2026-05-14	Subscription Payment
1123	102	59.00	2026-04-14	Subscription Payment
1124	102	59.00	2026-03-15	Subscription Payment
1125	102	59.00	2026-02-13	Subscription Payment
1126	102	59.00	2026-01-14	Subscription Payment
1127	102	59.00	2025-12-15	Subscription Payment
1128	102	59.00	2025-11-15	Subscription Payment
1129	102	59.00	2025-10-16	Subscription Payment
1130	103	59.00	2026-09-11	Subscription Payment
1131	103	59.00	2026-08-12	Subscription Payment
1132	103	59.00	2026-07-13	Subscription Payment
1133	103	59.00	2026-06-13	Subscription Payment
1134	103	59.00	2026-05-14	Subscription Payment
1135	103	59.00	2026-04-14	Subscription Payment
1136	103	59.00	2026-03-15	Subscription Payment
1137	103	59.00	2026-02-13	Subscription Payment
1138	103	59.00	2026-01-14	Subscription Payment
1139	103	59.00	2025-12-15	Subscription Payment
1140	103	59.00	2025-11-15	Subscription Payment
1141	103	59.00	2025-10-16	Subscription Payment
1142	104	29.00	2026-09-11	Subscription Payment
1143	104	29.00	2026-08-12	Subscription Payment
1144	104	29.00	2026-07-13	Subscription Payment
1145	104	29.00	2026-06-13	Subscription Payment
1146	104	29.00	2026-05-14	Subscription Payment
1147	104	29.00	2026-04-14	Subscription Payment
1148	104	29.00	2026-03-15	Subscription Payment
1149	104	29.00	2026-02-13	Subscription Payment
1150	104	29.00	2026-01-14	Subscription Payment
1151	104	29.00	2025-12-15	Subscription Payment
1152	104	29.00	2025-11-15	Subscription Payment
1153	104	29.00	2025-10-16	Subscription Payment
1154	105	29.00	2026-09-11	Subscription Payment
1155	105	29.00	2026-08-12	Subscription Payment
1156	105	29.00	2026-07-13	Subscription Payment
1157	105	29.00	2026-06-13	Subscription Payment
1158	105	29.00	2026-05-14	Subscription Payment
1159	105	29.00	2026-04-14	Subscription Payment
1160	105	29.00	2026-03-15	Subscription Payment
1161	105	29.00	2026-02-13	Subscription Payment
1162	105	29.00	2026-01-14	Subscription Payment
1163	105	29.00	2025-12-15	Subscription Payment
1164	105	29.00	2025-11-15	Subscription Payment
1165	105	29.00	2025-10-16	Subscription Payment
1166	106	59.00	2026-09-11	Subscription Payment
1167	106	59.00	2026-08-12	Subscription Payment
1168	106	59.00	2026-07-13	Subscription Payment
1169	106	59.00	2026-06-13	Subscription Payment
1170	106	59.00	2026-05-14	Subscription Payment
1171	106	59.00	2026-04-14	Subscription Payment
1172	106	59.00	2026-03-15	Subscription Payment
1173	106	59.00	2026-02-13	Subscription Payment
1174	106	59.00	2026-01-14	Subscription Payment
1175	106	59.00	2025-12-15	Subscription Payment
1176	106	59.00	2025-11-15	Subscription Payment
1177	106	59.00	2025-10-16	Subscription Payment
1178	107	29.00	2026-09-11	Subscription Payment
1179	107	29.00	2026-08-12	Subscription Payment
1180	107	29.00	2026-07-13	Subscription Payment
1181	107	29.00	2026-06-13	Subscription Payment
1182	107	29.00	2026-05-14	Subscription Payment
1183	107	29.00	2026-04-14	Subscription Payment
1184	107	29.00	2026-03-15	Subscription Payment
1185	107	29.00	2026-02-13	Subscription Payment
1186	107	29.00	2026-01-14	Subscription Payment
1187	107	29.00	2025-12-15	Subscription Payment
1188	108	99.00	2026-09-11	Subscription Payment
1189	108	99.00	2026-08-12	Subscription Payment
1190	108	99.00	2026-07-13	Subscription Payment
1191	108	99.00	2026-06-13	Subscription Payment
1192	108	99.00	2026-05-14	Subscription Payment
1193	108	99.00	2026-04-14	Subscription Payment
1194	108	99.00	2026-03-15	Subscription Payment
1195	108	99.00	2026-02-13	Subscription Payment
1196	108	99.00	2026-01-14	Subscription Payment
1197	108	99.00	2025-12-15	Subscription Payment
1198	108	99.00	2025-11-15	Subscription Payment
1199	108	99.00	2025-10-16	Subscription Payment
1200	109	59.00	2026-09-11	Subscription Payment
1201	109	59.00	2026-08-12	Subscription Payment
1202	109	59.00	2026-07-13	Subscription Payment
1203	109	59.00	2026-06-13	Subscription Payment
1204	109	59.00	2026-05-14	Subscription Payment
1205	109	59.00	2026-04-14	Subscription Payment
1206	109	59.00	2026-03-15	Subscription Payment
1207	109	59.00	2026-02-13	Subscription Payment
1208	109	59.00	2026-01-14	Subscription Payment
1209	109	59.00	2025-12-15	Subscription Payment
1210	109	59.00	2025-11-15	Subscription Payment
1211	109	59.00	2025-10-16	Subscription Payment
1212	110	29.00	2026-09-11	Subscription Payment
1213	110	29.00	2026-08-12	Subscription Payment
1214	110	29.00	2026-07-13	Subscription Payment
1215	110	29.00	2026-06-13	Subscription Payment
1216	110	29.00	2026-05-14	Subscription Payment
1217	110	29.00	2026-04-14	Subscription Payment
1218	110	29.00	2026-03-15	Subscription Payment
1219	110	29.00	2026-02-13	Subscription Payment
1220	110	29.00	2026-01-14	Subscription Payment
1221	110	29.00	2025-12-15	Subscription Payment
1222	110	29.00	2025-11-15	Subscription Payment
1223	110	29.00	2025-10-16	Subscription Payment
1224	111	99.00	2026-09-11	Subscription Payment
1225	111	99.00	2026-08-12	Subscription Payment
1226	111	99.00	2026-07-13	Subscription Payment
1227	111	99.00	2026-06-13	Subscription Payment
1228	111	99.00	2026-05-14	Subscription Payment
1229	111	99.00	2026-04-14	Subscription Payment
1230	111	99.00	2026-03-15	Subscription Payment
1231	111	99.00	2026-02-13	Subscription Payment
1232	111	99.00	2026-01-14	Subscription Payment
1233	111	99.00	2025-12-15	Subscription Payment
1234	111	99.00	2025-11-15	Subscription Payment
1235	111	99.00	2025-10-16	Subscription Payment
1236	112	29.00	2026-09-11	Subscription Payment
1237	112	29.00	2026-08-12	Subscription Payment
1238	112	29.00	2026-07-13	Subscription Payment
1239	112	29.00	2026-06-13	Subscription Payment
1240	112	29.00	2026-05-14	Subscription Payment
1241	112	29.00	2026-04-14	Subscription Payment
1242	112	29.00	2026-03-15	Subscription Payment
1243	112	29.00	2026-02-13	Subscription Payment
1244	112	29.00	2026-01-14	Subscription Payment
1245	112	29.00	2025-12-15	Subscription Payment
1246	112	29.00	2025-11-15	Subscription Payment
1247	112	29.00	2025-10-16	Subscription Payment
1248	113	59.00	2026-09-11	Subscription Payment
1249	113	59.00	2026-08-12	Subscription Payment
1250	113	59.00	2026-07-13	Subscription Payment
1251	113	59.00	2026-06-13	Subscription Payment
1252	113	59.00	2026-05-14	Subscription Payment
1253	113	59.00	2026-04-14	Subscription Payment
1254	113	59.00	2026-03-15	Subscription Payment
1255	113	59.00	2026-02-13	Subscription Payment
1256	113	59.00	2026-01-14	Subscription Payment
1257	113	59.00	2025-12-15	Subscription Payment
1258	113	59.00	2025-11-15	Subscription Payment
1259	113	59.00	2025-10-16	Subscription Payment
1260	114	59.00	2026-09-11	Subscription Payment
1261	114	59.00	2026-08-12	Subscription Payment
1262	114	59.00	2026-07-13	Subscription Payment
1263	114	59.00	2026-06-13	Subscription Payment
1264	114	59.00	2026-05-14	Subscription Payment
1265	114	59.00	2026-04-14	Subscription Payment
1266	114	59.00	2026-03-15	Subscription Payment
1267	114	59.00	2026-02-13	Subscription Payment
1268	114	59.00	2026-01-14	Subscription Payment
1269	114	59.00	2025-12-15	Subscription Payment
1270	114	59.00	2025-11-15	Subscription Payment
1271	114	59.00	2025-10-16	Subscription Payment
1272	115	59.00	2026-09-11	Subscription Payment
1273	115	59.00	2026-08-12	Subscription Payment
1274	115	59.00	2026-07-13	Subscription Payment
1275	115	59.00	2026-06-13	Subscription Payment
1276	115	59.00	2026-05-14	Subscription Payment
1277	115	59.00	2026-04-14	Subscription Payment
1278	115	59.00	2026-03-15	Subscription Payment
1279	115	59.00	2026-02-13	Subscription Payment
1280	115	59.00	2026-01-14	Subscription Payment
1281	115	59.00	2025-12-15	Subscription Payment
1282	115	59.00	2025-11-15	Subscription Payment
1283	115	59.00	2025-10-16	Subscription Payment
1284	116	59.00	2026-09-11	Subscription Payment
1285	116	59.00	2026-08-12	Subscription Payment
1286	116	59.00	2026-07-13	Subscription Payment
1287	116	59.00	2026-06-13	Subscription Payment
1288	116	59.00	2026-05-14	Subscription Payment
1289	116	59.00	2026-04-14	Subscription Payment
1290	116	59.00	2026-03-15	Subscription Payment
1291	116	59.00	2026-02-13	Subscription Payment
1292	116	59.00	2026-01-14	Subscription Payment
1293	116	59.00	2025-12-15	Subscription Payment
1294	116	59.00	2025-11-15	Subscription Payment
1295	116	59.00	2025-10-16	Subscription Payment
1296	117	59.00	2026-09-11	Subscription Payment
1297	117	59.00	2026-08-12	Subscription Payment
1298	117	59.00	2026-07-13	Subscription Payment
1299	117	59.00	2026-06-13	Subscription Payment
1300	117	59.00	2026-05-14	Subscription Payment
1301	117	59.00	2026-04-14	Subscription Payment
1302	117	59.00	2026-03-15	Subscription Payment
1303	117	59.00	2026-02-13	Subscription Payment
1304	117	59.00	2026-01-14	Subscription Payment
1305	117	59.00	2025-12-15	Subscription Payment
1306	117	59.00	2025-11-15	Subscription Payment
1307	117	59.00	2025-10-16	Subscription Payment
1308	118	29.00	2026-09-11	Subscription Payment
1309	118	29.00	2026-08-12	Subscription Payment
1310	118	29.00	2026-07-13	Subscription Payment
1311	118	29.00	2026-06-13	Subscription Payment
1312	118	29.00	2026-05-14	Subscription Payment
1313	118	29.00	2026-04-14	Subscription Payment
1314	118	29.00	2026-03-15	Subscription Payment
1315	118	29.00	2026-02-13	Subscription Payment
1316	118	29.00	2026-01-14	Subscription Payment
1317	118	29.00	2025-12-15	Subscription Payment
1318	118	29.00	2025-11-15	Subscription Payment
1319	118	29.00	2025-10-16	Subscription Payment
1320	119	29.00	2026-09-11	Subscription Payment
1321	119	29.00	2026-08-12	Subscription Payment
1322	119	29.00	2026-07-13	Subscription Payment
1323	119	29.00	2026-06-13	Subscription Payment
1324	119	29.00	2026-05-14	Subscription Payment
1325	119	29.00	2026-04-14	Subscription Payment
1326	119	29.00	2026-03-15	Subscription Payment
1327	119	29.00	2026-02-13	Subscription Payment
1328	119	29.00	2026-01-14	Subscription Payment
1329	119	29.00	2025-12-15	Subscription Payment
1330	119	29.00	2025-11-15	Subscription Payment
1331	119	29.00	2025-10-16	Subscription Payment
1332	120	29.00	2026-09-11	Subscription Payment
1333	120	29.00	2026-08-12	Subscription Payment
1334	120	29.00	2026-07-13	Subscription Payment
1335	120	29.00	2026-06-13	Subscription Payment
1336	120	29.00	2026-05-14	Subscription Payment
1337	120	29.00	2026-04-14	Subscription Payment
1338	120	29.00	2026-03-15	Subscription Payment
1339	120	29.00	2026-02-13	Subscription Payment
1340	120	29.00	2026-01-14	Subscription Payment
1341	120	29.00	2025-12-15	Subscription Payment
1342	120	29.00	2025-11-15	Subscription Payment
1343	120	29.00	2025-10-16	Subscription Payment
1344	121	99.00	2026-09-11	Subscription Payment
1345	121	99.00	2026-08-12	Subscription Payment
1346	121	99.00	2026-07-13	Subscription Payment
1347	121	99.00	2026-06-13	Subscription Payment
1348	121	99.00	2026-05-14	Subscription Payment
1349	121	99.00	2026-04-14	Subscription Payment
1350	121	99.00	2026-03-15	Subscription Payment
1351	121	99.00	2026-02-13	Subscription Payment
1352	121	99.00	2026-01-14	Subscription Payment
1353	121	99.00	2025-12-15	Subscription Payment
1354	121	99.00	2025-11-15	Subscription Payment
1355	121	99.00	2025-10-16	Subscription Payment
1356	122	59.00	2026-09-11	Subscription Payment
1357	122	59.00	2026-08-12	Subscription Payment
1358	122	59.00	2026-07-13	Subscription Payment
1359	122	59.00	2026-06-13	Subscription Payment
1360	122	59.00	2026-05-14	Subscription Payment
1361	122	59.00	2026-04-14	Subscription Payment
1362	122	59.00	2026-03-15	Subscription Payment
1363	122	59.00	2026-02-13	Subscription Payment
1364	122	59.00	2026-01-14	Subscription Payment
1365	122	59.00	2025-12-15	Subscription Payment
1366	122	59.00	2025-11-15	Subscription Payment
1367	122	59.00	2025-10-16	Subscription Payment
1368	123	59.00	2026-09-11	Subscription Payment
1369	123	59.00	2026-08-12	Subscription Payment
1370	123	59.00	2026-07-13	Subscription Payment
1371	123	59.00	2026-06-13	Subscription Payment
1372	123	59.00	2026-05-14	Subscription Payment
1373	123	59.00	2026-04-14	Subscription Payment
1374	123	59.00	2026-03-15	Subscription Payment
1375	123	59.00	2026-02-13	Subscription Payment
1376	123	59.00	2026-01-14	Subscription Payment
1377	123	59.00	2025-12-15	Subscription Payment
1378	123	59.00	2025-11-15	Subscription Payment
1379	123	59.00	2025-10-16	Subscription Payment
1380	124	29.00	2026-09-11	Subscription Payment
1381	124	29.00	2026-08-12	Subscription Payment
1382	124	29.00	2026-07-13	Subscription Payment
1383	125	59.00	2026-09-11	Subscription Payment
1384	125	59.00	2026-08-12	Subscription Payment
1385	125	59.00	2026-07-13	Subscription Payment
1386	125	59.00	2026-06-13	Subscription Payment
1387	125	59.00	2026-05-14	Subscription Payment
1388	126	29.00	2026-09-11	Subscription Payment
1389	126	29.00	2026-08-12	Subscription Payment
1390	126	29.00	2026-07-13	Subscription Payment
1391	126	29.00	2026-06-13	Subscription Payment
1392	126	29.00	2026-05-14	Subscription Payment
1393	126	29.00	2026-04-14	Subscription Payment
1394	126	29.00	2026-03-15	Subscription Payment
1395	126	29.00	2026-02-13	Subscription Payment
1396	126	29.00	2026-01-14	Subscription Payment
1397	126	29.00	2025-12-15	Subscription Payment
1398	126	29.00	2025-11-15	Subscription Payment
1399	126	29.00	2025-10-16	Subscription Payment
1400	127	59.00	2026-09-11	Subscription Payment
1401	127	59.00	2026-08-12	Subscription Payment
1402	127	59.00	2026-07-13	Subscription Payment
1403	127	59.00	2026-06-13	Subscription Payment
1404	127	59.00	2026-05-14	Subscription Payment
1405	127	59.00	2026-04-14	Subscription Payment
1406	127	59.00	2026-03-15	Subscription Payment
1407	127	59.00	2026-02-13	Subscription Payment
1408	127	59.00	2026-01-14	Subscription Payment
1409	127	59.00	2025-12-15	Subscription Payment
1410	127	59.00	2025-11-15	Subscription Payment
1411	127	59.00	2025-10-16	Subscription Payment
1412	128	29.00	2026-09-11	Subscription Payment
1413	128	29.00	2026-08-12	Subscription Payment
1414	128	29.00	2026-07-13	Subscription Payment
1415	128	29.00	2026-06-13	Subscription Payment
1416	128	29.00	2026-05-14	Subscription Payment
1417	128	29.00	2026-04-14	Subscription Payment
1418	128	29.00	2026-03-15	Subscription Payment
1419	128	29.00	2026-02-13	Subscription Payment
1420	128	29.00	2026-01-14	Subscription Payment
1421	128	29.00	2025-12-15	Subscription Payment
1422	128	29.00	2025-11-15	Subscription Payment
1423	128	29.00	2025-10-16	Subscription Payment
1424	129	29.00	2026-09-11	Subscription Payment
1425	129	29.00	2026-08-12	Subscription Payment
1426	129	29.00	2026-07-13	Subscription Payment
1427	129	29.00	2026-06-13	Subscription Payment
1428	129	29.00	2026-05-14	Subscription Payment
1429	129	29.00	2026-04-14	Subscription Payment
1430	129	29.00	2026-03-15	Subscription Payment
1431	129	29.00	2026-02-13	Subscription Payment
1432	129	29.00	2026-01-14	Subscription Payment
1433	129	29.00	2025-12-15	Subscription Payment
1434	129	29.00	2025-11-15	Subscription Payment
1435	129	29.00	2025-10-16	Subscription Payment
1436	130	59.00	2026-09-11	Subscription Payment
1437	130	59.00	2026-08-12	Subscription Payment
1438	130	59.00	2026-07-13	Subscription Payment
1439	130	59.00	2026-06-13	Subscription Payment
1440	130	59.00	2026-05-14	Subscription Payment
1441	130	59.00	2026-04-14	Subscription Payment
1442	130	59.00	2026-03-15	Subscription Payment
1443	130	59.00	2026-02-13	Subscription Payment
1444	130	59.00	2026-01-14	Subscription Payment
1445	130	59.00	2025-12-15	Subscription Payment
1446	130	59.00	2025-11-15	Subscription Payment
1447	130	59.00	2025-10-16	Subscription Payment
1448	131	29.00	2026-09-11	Subscription Payment
1449	131	29.00	2026-08-12	Subscription Payment
1450	131	29.00	2026-07-13	Subscription Payment
1451	131	29.00	2026-06-13	Subscription Payment
1452	131	29.00	2026-05-14	Subscription Payment
1453	131	29.00	2026-04-14	Subscription Payment
1454	131	29.00	2026-03-15	Subscription Payment
1455	131	29.00	2026-02-13	Subscription Payment
1456	131	29.00	2026-01-14	Subscription Payment
1457	131	29.00	2025-12-15	Subscription Payment
1458	131	29.00	2025-11-15	Subscription Payment
1459	131	29.00	2025-10-16	Subscription Payment
1460	132	29.00	2026-09-11	Subscription Payment
1461	132	29.00	2026-08-12	Subscription Payment
1462	132	29.00	2026-07-13	Subscription Payment
1463	132	29.00	2026-06-13	Subscription Payment
1464	132	29.00	2026-05-14	Subscription Payment
1465	132	29.00	2026-04-14	Subscription Payment
1466	132	29.00	2026-03-15	Subscription Payment
1467	132	29.00	2026-02-13	Subscription Payment
1468	132	29.00	2026-01-14	Subscription Payment
1469	132	29.00	2025-12-15	Subscription Payment
1470	132	29.00	2025-11-15	Subscription Payment
1471	132	29.00	2025-10-16	Subscription Payment
1472	133	29.00	2026-09-11	Subscription Payment
1473	133	29.00	2026-08-12	Subscription Payment
1474	133	29.00	2026-07-13	Subscription Payment
1475	133	29.00	2026-06-13	Subscription Payment
1476	133	29.00	2026-05-14	Subscription Payment
1477	133	29.00	2026-04-14	Subscription Payment
1478	134	29.00	2026-09-11	Subscription Payment
1479	134	29.00	2026-08-12	Subscription Payment
1480	134	29.00	2026-07-13	Subscription Payment
1481	134	29.00	2026-06-13	Subscription Payment
1482	134	29.00	2026-05-14	Subscription Payment
1483	134	29.00	2026-04-14	Subscription Payment
1484	134	29.00	2026-03-15	Subscription Payment
1485	134	29.00	2026-02-13	Subscription Payment
1486	134	29.00	2026-01-14	Subscription Payment
1487	134	29.00	2025-12-15	Subscription Payment
1488	134	29.00	2025-11-15	Subscription Payment
1489	134	29.00	2025-10-16	Subscription Payment
1490	135	99.00	2026-09-11	Subscription Payment
1491	135	99.00	2026-08-12	Subscription Payment
1492	135	99.00	2026-07-13	Subscription Payment
1493	135	99.00	2026-06-13	Subscription Payment
1494	135	99.00	2026-05-14	Subscription Payment
1495	135	99.00	2026-04-14	Subscription Payment
1496	135	99.00	2026-03-15	Subscription Payment
1497	135	99.00	2026-02-13	Subscription Payment
1498	135	99.00	2026-01-14	Subscription Payment
1499	135	99.00	2025-12-15	Subscription Payment
1500	135	99.00	2025-11-15	Subscription Payment
1501	135	99.00	2025-10-16	Subscription Payment
1502	136	99.00	2026-09-11	Subscription Payment
1503	136	99.00	2026-08-12	Subscription Payment
1504	136	99.00	2026-07-13	Subscription Payment
1505	136	99.00	2026-06-13	Subscription Payment
1506	136	99.00	2026-05-14	Subscription Payment
1507	136	99.00	2026-04-14	Subscription Payment
1508	136	99.00	2026-03-15	Subscription Payment
1509	136	99.00	2026-02-13	Subscription Payment
1510	136	99.00	2026-01-14	Subscription Payment
1511	136	99.00	2025-12-15	Subscription Payment
1512	136	99.00	2025-11-15	Subscription Payment
1513	136	99.00	2025-10-16	Subscription Payment
1514	137	59.00	2026-09-11	Subscription Payment
1515	137	59.00	2026-08-12	Subscription Payment
1516	137	59.00	2026-07-13	Subscription Payment
1517	137	59.00	2026-06-13	Subscription Payment
1518	137	59.00	2026-05-14	Subscription Payment
1519	137	59.00	2026-04-14	Subscription Payment
1520	137	59.00	2026-03-15	Subscription Payment
1521	137	59.00	2026-02-13	Subscription Payment
1522	137	59.00	2026-01-14	Subscription Payment
1523	138	99.00	2026-09-11	Subscription Payment
1524	138	99.00	2026-08-12	Subscription Payment
1525	138	99.00	2026-07-13	Subscription Payment
1526	138	99.00	2026-06-13	Subscription Payment
1527	138	99.00	2026-05-14	Subscription Payment
1528	138	99.00	2026-04-14	Subscription Payment
1529	138	99.00	2026-03-15	Subscription Payment
1530	138	99.00	2026-02-13	Subscription Payment
1531	138	99.00	2026-01-14	Subscription Payment
1532	138	99.00	2025-12-15	Subscription Payment
1533	138	99.00	2025-11-15	Subscription Payment
1534	138	99.00	2025-10-16	Subscription Payment
1535	139	29.00	2026-09-11	Subscription Payment
1536	139	29.00	2026-08-12	Subscription Payment
1537	139	29.00	2026-07-13	Subscription Payment
1538	139	29.00	2026-06-13	Subscription Payment
1539	139	29.00	2026-05-14	Subscription Payment
1540	139	29.00	2026-04-14	Subscription Payment
1541	139	29.00	2026-03-15	Subscription Payment
1542	139	29.00	2026-02-13	Subscription Payment
1543	139	29.00	2026-01-14	Subscription Payment
1544	139	29.00	2025-12-15	Subscription Payment
1545	139	29.00	2025-11-15	Subscription Payment
1546	139	29.00	2025-10-16	Subscription Payment
1547	140	99.00	2026-09-11	Subscription Payment
1548	140	99.00	2026-08-12	Subscription Payment
1549	140	99.00	2026-07-13	Subscription Payment
1550	140	99.00	2026-06-13	Subscription Payment
1551	140	99.00	2026-05-14	Subscription Payment
1552	140	99.00	2026-04-14	Subscription Payment
1553	140	99.00	2026-03-15	Subscription Payment
1554	140	99.00	2026-02-13	Subscription Payment
1555	140	99.00	2026-01-14	Subscription Payment
1556	140	99.00	2025-12-15	Subscription Payment
1557	140	99.00	2025-11-15	Subscription Payment
1558	140	99.00	2025-10-16	Subscription Payment
1559	141	59.00	2026-09-11	Subscription Payment
1560	141	59.00	2026-08-12	Subscription Payment
1561	141	59.00	2026-07-13	Subscription Payment
1562	142	59.00	2026-09-11	Subscription Payment
1563	142	59.00	2026-08-12	Subscription Payment
1564	142	59.00	2026-07-13	Subscription Payment
1565	142	59.00	2026-06-13	Subscription Payment
1566	142	59.00	2026-05-14	Subscription Payment
1567	142	59.00	2026-04-14	Subscription Payment
1568	142	59.00	2026-03-15	Subscription Payment
1569	142	59.00	2026-02-13	Subscription Payment
1570	142	59.00	2026-01-14	Subscription Payment
1571	142	59.00	2025-12-15	Subscription Payment
1572	142	59.00	2025-11-15	Subscription Payment
1573	142	59.00	2025-10-16	Subscription Payment
1574	143	99.00	2026-09-11	Subscription Payment
1575	143	99.00	2026-08-12	Subscription Payment
1576	143	99.00	2026-07-13	Subscription Payment
1577	143	99.00	2026-06-13	Subscription Payment
1578	143	99.00	2026-05-14	Subscription Payment
1579	143	99.00	2026-04-14	Subscription Payment
1580	143	99.00	2026-03-15	Subscription Payment
1581	143	99.00	2026-02-13	Subscription Payment
1582	143	99.00	2026-01-14	Subscription Payment
1583	143	99.00	2025-12-15	Subscription Payment
1584	143	99.00	2025-11-15	Subscription Payment
1585	143	99.00	2025-10-16	Subscription Payment
1586	144	59.00	2026-09-11	Subscription Payment
1587	144	59.00	2026-08-12	Subscription Payment
1588	144	59.00	2026-07-13	Subscription Payment
1589	144	59.00	2026-06-13	Subscription Payment
1590	144	59.00	2026-05-14	Subscription Payment
1591	144	59.00	2026-04-14	Subscription Payment
1592	144	59.00	2026-03-15	Subscription Payment
1593	144	59.00	2026-02-13	Subscription Payment
1594	144	59.00	2026-01-14	Subscription Payment
1595	144	59.00	2025-12-15	Subscription Payment
1596	144	59.00	2025-11-15	Subscription Payment
1597	144	59.00	2025-10-16	Subscription Payment
1598	145	29.00	2026-09-11	Subscription Payment
1599	145	29.00	2026-08-12	Subscription Payment
1600	145	29.00	2026-07-13	Subscription Payment
1601	145	29.00	2026-06-13	Subscription Payment
1602	145	29.00	2026-05-14	Subscription Payment
1603	145	29.00	2026-04-14	Subscription Payment
1604	145	29.00	2026-03-15	Subscription Payment
1605	145	29.00	2026-02-13	Subscription Payment
1606	145	29.00	2026-01-14	Subscription Payment
1607	145	29.00	2025-12-15	Subscription Payment
1608	145	29.00	2025-11-15	Subscription Payment
1609	145	29.00	2025-10-16	Subscription Payment
1610	146	29.00	2026-09-11	Subscription Payment
1611	146	29.00	2026-08-12	Subscription Payment
1612	146	29.00	2026-07-13	Subscription Payment
1613	146	29.00	2026-06-13	Subscription Payment
1614	146	29.00	2026-05-14	Subscription Payment
1615	146	29.00	2026-04-14	Subscription Payment
1616	146	29.00	2026-03-15	Subscription Payment
1617	146	29.00	2026-02-13	Subscription Payment
1618	146	29.00	2026-01-14	Subscription Payment
1619	146	29.00	2025-12-15	Subscription Payment
1620	146	29.00	2025-11-15	Subscription Payment
1621	146	29.00	2025-10-16	Subscription Payment
1622	147	59.00	2026-09-11	Subscription Payment
1623	147	59.00	2026-08-12	Subscription Payment
1624	147	59.00	2026-07-13	Subscription Payment
1625	147	59.00	2026-06-13	Subscription Payment
1626	147	59.00	2026-05-14	Subscription Payment
1627	147	59.00	2026-04-14	Subscription Payment
1628	147	59.00	2026-03-15	Subscription Payment
1629	147	59.00	2026-02-13	Subscription Payment
1630	147	59.00	2026-01-14	Subscription Payment
1631	147	59.00	2025-12-15	Subscription Payment
1632	147	59.00	2025-11-15	Subscription Payment
1633	147	59.00	2025-10-16	Subscription Payment
1634	148	29.00	2026-09-11	Subscription Payment
1635	148	29.00	2026-08-12	Subscription Payment
1636	148	29.00	2026-07-13	Subscription Payment
1637	148	29.00	2026-06-13	Subscription Payment
1638	148	29.00	2026-05-14	Subscription Payment
1639	148	29.00	2026-04-14	Subscription Payment
1640	148	29.00	2026-03-15	Subscription Payment
1641	148	29.00	2026-02-13	Subscription Payment
1642	148	29.00	2026-01-14	Subscription Payment
1643	148	29.00	2025-12-15	Subscription Payment
1644	148	29.00	2025-11-15	Subscription Payment
1645	148	29.00	2025-10-16	Subscription Payment
1646	149	59.00	2026-09-11	Subscription Payment
1647	149	59.00	2026-08-12	Subscription Payment
1648	149	59.00	2026-07-13	Subscription Payment
1649	149	59.00	2026-06-13	Subscription Payment
1650	150	29.00	2026-09-11	Subscription Payment
1651	150	29.00	2026-08-12	Subscription Payment
1652	150	29.00	2026-07-13	Subscription Payment
1653	151	59.00	2026-09-11	Subscription Payment
1654	151	59.00	2026-08-12	Subscription Payment
1655	151	59.00	2026-07-13	Subscription Payment
1656	151	59.00	2026-06-13	Subscription Payment
1657	151	59.00	2026-05-14	Subscription Payment
1658	151	59.00	2026-04-14	Subscription Payment
1659	151	59.00	2026-03-15	Subscription Payment
1660	151	59.00	2026-02-13	Subscription Payment
1661	151	59.00	2026-01-14	Subscription Payment
1662	151	59.00	2025-12-15	Subscription Payment
1663	151	59.00	2025-11-15	Subscription Payment
1664	151	59.00	2025-10-16	Subscription Payment
1665	152	59.00	2026-09-11	Subscription Payment
1666	152	59.00	2026-08-12	Subscription Payment
1667	152	59.00	2026-07-13	Subscription Payment
1668	152	59.00	2026-06-13	Subscription Payment
1669	152	59.00	2026-05-14	Subscription Payment
1670	152	59.00	2026-04-14	Subscription Payment
1671	152	59.00	2026-03-15	Subscription Payment
1672	152	59.00	2026-02-13	Subscription Payment
1673	152	59.00	2026-01-14	Subscription Payment
1674	152	59.00	2025-12-15	Subscription Payment
1675	152	59.00	2025-11-15	Subscription Payment
1676	152	59.00	2025-10-16	Subscription Payment
1677	153	59.00	2026-09-11	Subscription Payment
1678	153	59.00	2026-08-12	Subscription Payment
1679	153	59.00	2026-07-13	Subscription Payment
1680	153	59.00	2026-06-13	Subscription Payment
1681	153	59.00	2026-05-14	Subscription Payment
1682	153	59.00	2026-04-14	Subscription Payment
1683	153	59.00	2026-03-15	Subscription Payment
1684	153	59.00	2026-02-13	Subscription Payment
1685	153	59.00	2026-01-14	Subscription Payment
1686	153	59.00	2025-12-15	Subscription Payment
1687	153	59.00	2025-11-15	Subscription Payment
1688	153	59.00	2025-10-16	Subscription Payment
1689	154	59.00	2026-09-11	Subscription Payment
1690	154	59.00	2026-08-12	Subscription Payment
1691	154	59.00	2026-07-13	Subscription Payment
1692	154	59.00	2026-06-13	Subscription Payment
1693	154	59.00	2026-05-14	Subscription Payment
1694	154	59.00	2026-04-14	Subscription Payment
1695	154	59.00	2026-03-15	Subscription Payment
1696	154	59.00	2026-02-13	Subscription Payment
1697	154	59.00	2026-01-14	Subscription Payment
1698	154	59.00	2025-12-15	Subscription Payment
1699	154	59.00	2025-11-15	Subscription Payment
1700	154	59.00	2025-10-16	Subscription Payment
1701	155	29.00	2026-09-11	Subscription Payment
1702	155	29.00	2026-08-12	Subscription Payment
1703	155	29.00	2026-07-13	Subscription Payment
1704	155	29.00	2026-06-13	Subscription Payment
1705	155	29.00	2026-05-14	Subscription Payment
1706	155	29.00	2026-04-14	Subscription Payment
1707	156	59.00	2026-09-11	Subscription Payment
1708	156	59.00	2026-08-12	Subscription Payment
1709	156	59.00	2026-07-13	Subscription Payment
1710	156	59.00	2026-06-13	Subscription Payment
1711	156	59.00	2026-05-14	Subscription Payment
1712	156	59.00	2026-04-14	Subscription Payment
1713	156	59.00	2026-03-15	Subscription Payment
1714	156	59.00	2026-02-13	Subscription Payment
1715	156	59.00	2026-01-14	Subscription Payment
1716	156	59.00	2025-12-15	Subscription Payment
1717	156	59.00	2025-11-15	Subscription Payment
1718	156	59.00	2025-10-16	Subscription Payment
1719	157	29.00	2026-09-11	Subscription Payment
1720	157	29.00	2026-08-12	Subscription Payment
1721	157	29.00	2026-07-13	Subscription Payment
1722	157	29.00	2026-06-13	Subscription Payment
1723	157	29.00	2026-05-14	Subscription Payment
1724	157	29.00	2026-04-14	Subscription Payment
1725	157	29.00	2026-03-15	Subscription Payment
1726	157	29.00	2026-02-13	Subscription Payment
1727	157	29.00	2026-01-14	Subscription Payment
1728	157	29.00	2025-12-15	Subscription Payment
1729	157	29.00	2025-11-15	Subscription Payment
1730	157	29.00	2025-10-16	Subscription Payment
1731	158	59.00	2026-09-11	Subscription Payment
1732	158	59.00	2026-08-12	Subscription Payment
1733	158	59.00	2026-07-13	Subscription Payment
1734	158	59.00	2026-06-13	Subscription Payment
1735	158	59.00	2026-05-14	Subscription Payment
1736	158	59.00	2026-04-14	Subscription Payment
1737	158	59.00	2026-03-15	Subscription Payment
1738	158	59.00	2026-02-13	Subscription Payment
1739	158	59.00	2026-01-14	Subscription Payment
1740	158	59.00	2025-12-15	Subscription Payment
1741	158	59.00	2025-11-15	Subscription Payment
1742	158	59.00	2025-10-16	Subscription Payment
1743	159	99.00	2026-09-11	Subscription Payment
1744	159	99.00	2026-08-12	Subscription Payment
1745	159	99.00	2026-07-13	Subscription Payment
1746	159	99.00	2026-06-13	Subscription Payment
1747	159	99.00	2026-05-14	Subscription Payment
1748	159	99.00	2026-04-14	Subscription Payment
1749	159	99.00	2026-03-15	Subscription Payment
1750	159	99.00	2026-02-13	Subscription Payment
1751	159	99.00	2026-01-14	Subscription Payment
1752	159	99.00	2025-12-15	Subscription Payment
1753	159	99.00	2025-11-15	Subscription Payment
1754	159	99.00	2025-10-16	Subscription Payment
1755	160	59.00	2026-09-11	Subscription Payment
1756	160	59.00	2026-08-12	Subscription Payment
1757	160	59.00	2026-07-13	Subscription Payment
1758	160	59.00	2026-06-13	Subscription Payment
1759	160	59.00	2026-05-14	Subscription Payment
1760	160	59.00	2026-04-14	Subscription Payment
1761	160	59.00	2026-03-15	Subscription Payment
1762	160	59.00	2026-02-13	Subscription Payment
1763	160	59.00	2026-01-14	Subscription Payment
1764	160	59.00	2025-12-15	Subscription Payment
1765	160	59.00	2025-11-15	Subscription Payment
1766	160	59.00	2025-10-16	Subscription Payment
1767	161	29.00	2026-09-11	Subscription Payment
1768	161	29.00	2026-08-12	Subscription Payment
1769	161	29.00	2026-07-13	Subscription Payment
1770	161	29.00	2026-06-13	Subscription Payment
1771	161	29.00	2026-05-14	Subscription Payment
1772	161	29.00	2026-04-14	Subscription Payment
1773	161	29.00	2026-03-15	Subscription Payment
1774	161	29.00	2026-02-13	Subscription Payment
1775	161	29.00	2026-01-14	Subscription Payment
1776	161	29.00	2025-12-15	Subscription Payment
1777	161	29.00	2025-11-15	Subscription Payment
1778	161	29.00	2025-10-16	Subscription Payment
1779	162	29.00	2026-09-11	Subscription Payment
1780	162	29.00	2026-08-12	Subscription Payment
1781	162	29.00	2026-07-13	Subscription Payment
1782	162	29.00	2026-06-13	Subscription Payment
1783	162	29.00	2026-05-14	Subscription Payment
1784	162	29.00	2026-04-14	Subscription Payment
1785	162	29.00	2026-03-15	Subscription Payment
1786	162	29.00	2026-02-13	Subscription Payment
1787	162	29.00	2026-01-14	Subscription Payment
1788	162	29.00	2025-12-15	Subscription Payment
1789	162	29.00	2025-11-15	Subscription Payment
1790	162	29.00	2025-10-16	Subscription Payment
1791	163	29.00	2026-09-11	Subscription Payment
1792	163	29.00	2026-08-12	Subscription Payment
1793	163	29.00	2026-07-13	Subscription Payment
1794	163	29.00	2026-06-13	Subscription Payment
1795	163	29.00	2026-05-14	Subscription Payment
1796	164	59.00	2026-09-11	Subscription Payment
1797	164	59.00	2026-08-12	Subscription Payment
1798	164	59.00	2026-07-13	Subscription Payment
1799	164	59.00	2026-06-13	Subscription Payment
1800	164	59.00	2026-05-14	Subscription Payment
1801	165	29.00	2026-09-11	Subscription Payment
1802	165	29.00	2026-08-12	Subscription Payment
1803	165	29.00	2026-07-13	Subscription Payment
1804	165	29.00	2026-06-13	Subscription Payment
1805	165	29.00	2026-05-14	Subscription Payment
1806	166	59.00	2026-09-11	Subscription Payment
1807	166	59.00	2026-08-12	Subscription Payment
1808	166	59.00	2026-07-13	Subscription Payment
1809	166	59.00	2026-06-13	Subscription Payment
1810	166	59.00	2026-05-14	Subscription Payment
1811	166	59.00	2026-04-14	Subscription Payment
1812	166	59.00	2026-03-15	Subscription Payment
1813	166	59.00	2026-02-13	Subscription Payment
1814	166	59.00	2026-01-14	Subscription Payment
1815	166	59.00	2025-12-15	Subscription Payment
1816	166	59.00	2025-11-15	Subscription Payment
1817	166	59.00	2025-10-16	Subscription Payment
1818	167	59.00	2026-09-11	Subscription Payment
1819	167	59.00	2026-08-12	Subscription Payment
1820	167	59.00	2026-07-13	Subscription Payment
1821	167	59.00	2026-06-13	Subscription Payment
1822	167	59.00	2026-05-14	Subscription Payment
1823	167	59.00	2026-04-14	Subscription Payment
1824	167	59.00	2026-03-15	Subscription Payment
1825	167	59.00	2026-02-13	Subscription Payment
1826	167	59.00	2026-01-14	Subscription Payment
1827	167	59.00	2025-12-15	Subscription Payment
1828	167	59.00	2025-11-15	Subscription Payment
1829	167	59.00	2025-10-16	Subscription Payment
1830	168	99.00	2026-09-11	Subscription Payment
1831	168	99.00	2026-08-12	Subscription Payment
1832	168	99.00	2026-07-13	Subscription Payment
1833	168	99.00	2026-06-13	Subscription Payment
1834	168	99.00	2026-05-14	Subscription Payment
1835	168	99.00	2026-04-14	Subscription Payment
1836	168	99.00	2026-03-15	Subscription Payment
1837	168	99.00	2026-02-13	Subscription Payment
1838	168	99.00	2026-01-14	Subscription Payment
1839	168	99.00	2025-12-15	Subscription Payment
1840	168	99.00	2025-11-15	Subscription Payment
1841	168	99.00	2025-10-16	Subscription Payment
1842	169	59.00	2026-09-11	Subscription Payment
1843	169	59.00	2026-08-12	Subscription Payment
1844	169	59.00	2026-07-13	Subscription Payment
1845	169	59.00	2026-06-13	Subscription Payment
1846	169	59.00	2026-05-14	Subscription Payment
1847	169	59.00	2026-04-14	Subscription Payment
1848	169	59.00	2026-03-15	Subscription Payment
1849	169	59.00	2026-02-13	Subscription Payment
1850	169	59.00	2026-01-14	Subscription Payment
1851	169	59.00	2025-12-15	Subscription Payment
1852	169	59.00	2025-11-15	Subscription Payment
1853	169	59.00	2025-10-16	Subscription Payment
1854	170	59.00	2026-09-11	Subscription Payment
1855	170	59.00	2026-08-12	Subscription Payment
1856	170	59.00	2026-07-13	Subscription Payment
1857	170	59.00	2026-06-13	Subscription Payment
1858	170	59.00	2026-05-14	Subscription Payment
1859	170	59.00	2026-04-14	Subscription Payment
1860	170	59.00	2026-03-15	Subscription Payment
1861	170	59.00	2026-02-13	Subscription Payment
1862	170	59.00	2026-01-14	Subscription Payment
1863	170	59.00	2025-12-15	Subscription Payment
1864	170	59.00	2025-11-15	Subscription Payment
1865	170	59.00	2025-10-16	Subscription Payment
1866	171	29.00	2026-09-11	Subscription Payment
1867	171	29.00	2026-08-12	Subscription Payment
1868	171	29.00	2026-07-13	Subscription Payment
1869	171	29.00	2026-06-13	Subscription Payment
1870	171	29.00	2026-05-14	Subscription Payment
1871	171	29.00	2026-04-14	Subscription Payment
1872	171	29.00	2026-03-15	Subscription Payment
1873	171	29.00	2026-02-13	Subscription Payment
1874	171	29.00	2026-01-14	Subscription Payment
1875	171	29.00	2025-12-15	Subscription Payment
1876	171	29.00	2025-11-15	Subscription Payment
1877	171	29.00	2025-10-16	Subscription Payment
1878	172	59.00	2026-09-11	Subscription Payment
1879	172	59.00	2026-08-12	Subscription Payment
1880	172	59.00	2026-07-13	Subscription Payment
1881	172	59.00	2026-06-13	Subscription Payment
1882	172	59.00	2026-05-14	Subscription Payment
1883	172	59.00	2026-04-14	Subscription Payment
1884	172	59.00	2026-03-15	Subscription Payment
1885	172	59.00	2026-02-13	Subscription Payment
1886	172	59.00	2026-01-14	Subscription Payment
1887	172	59.00	2025-12-15	Subscription Payment
1888	173	99.00	2026-09-11	Subscription Payment
1889	173	99.00	2026-08-12	Subscription Payment
1890	173	99.00	2026-07-13	Subscription Payment
1891	173	99.00	2026-06-13	Subscription Payment
1892	173	99.00	2026-05-14	Subscription Payment
1893	173	99.00	2026-04-14	Subscription Payment
1894	173	99.00	2026-03-15	Subscription Payment
1895	173	99.00	2026-02-13	Subscription Payment
1896	173	99.00	2026-01-14	Subscription Payment
1897	173	99.00	2025-12-15	Subscription Payment
1898	173	99.00	2025-11-15	Subscription Payment
1899	173	99.00	2025-10-16	Subscription Payment
1900	174	59.00	2026-09-11	Subscription Payment
1901	174	59.00	2026-08-12	Subscription Payment
1902	174	59.00	2026-07-13	Subscription Payment
1903	174	59.00	2026-06-13	Subscription Payment
1904	174	59.00	2026-05-14	Subscription Payment
1905	174	59.00	2026-04-14	Subscription Payment
1906	174	59.00	2026-03-15	Subscription Payment
1907	174	59.00	2026-02-13	Subscription Payment
1908	174	59.00	2026-01-14	Subscription Payment
1909	174	59.00	2025-12-15	Subscription Payment
1910	174	59.00	2025-11-15	Subscription Payment
1911	174	59.00	2025-10-16	Subscription Payment
1912	175	99.00	2026-09-11	Subscription Payment
1913	175	99.00	2026-08-12	Subscription Payment
1914	175	99.00	2026-07-13	Subscription Payment
1915	175	99.00	2026-06-13	Subscription Payment
1916	176	59.00	2026-09-11	Subscription Payment
1917	176	59.00	2026-08-12	Subscription Payment
1918	176	59.00	2026-07-13	Subscription Payment
1919	176	59.00	2026-06-13	Subscription Payment
1920	176	59.00	2026-05-14	Subscription Payment
1921	176	59.00	2026-04-14	Subscription Payment
1922	176	59.00	2026-03-15	Subscription Payment
1923	176	59.00	2026-02-13	Subscription Payment
1924	176	59.00	2026-01-14	Subscription Payment
1925	176	59.00	2025-12-15	Subscription Payment
1926	176	59.00	2025-11-15	Subscription Payment
1927	176	59.00	2025-10-16	Subscription Payment
1928	177	99.00	2026-09-11	Subscription Payment
1929	177	99.00	2026-08-12	Subscription Payment
1930	177	99.00	2026-07-13	Subscription Payment
1931	177	99.00	2026-06-13	Subscription Payment
1932	177	99.00	2026-05-14	Subscription Payment
1933	178	59.00	2026-09-11	Subscription Payment
1934	178	59.00	2026-08-12	Subscription Payment
1935	178	59.00	2026-07-13	Subscription Payment
1936	178	59.00	2026-06-13	Subscription Payment
1937	178	59.00	2026-05-14	Subscription Payment
1938	178	59.00	2026-04-14	Subscription Payment
1939	178	59.00	2026-03-15	Subscription Payment
1940	178	59.00	2026-02-13	Subscription Payment
1941	178	59.00	2026-01-14	Subscription Payment
1942	178	59.00	2025-12-15	Subscription Payment
1943	178	59.00	2025-11-15	Subscription Payment
1944	178	59.00	2025-10-16	Subscription Payment
1945	179	29.00	2026-09-11	Subscription Payment
1946	179	29.00	2026-08-12	Subscription Payment
1947	179	29.00	2026-07-13	Subscription Payment
1948	179	29.00	2026-06-13	Subscription Payment
1949	179	29.00	2026-05-14	Subscription Payment
1950	179	29.00	2026-04-14	Subscription Payment
1951	179	29.00	2026-03-15	Subscription Payment
1952	179	29.00	2026-02-13	Subscription Payment
1953	179	29.00	2026-01-14	Subscription Payment
1954	179	29.00	2025-12-15	Subscription Payment
1955	180	99.00	2026-09-11	Subscription Payment
1956	180	99.00	2026-08-12	Subscription Payment
1957	180	99.00	2026-07-13	Subscription Payment
1958	180	99.00	2026-06-13	Subscription Payment
1959	180	99.00	2026-05-14	Subscription Payment
1960	180	99.00	2026-04-14	Subscription Payment
1961	180	99.00	2026-03-15	Subscription Payment
1962	180	99.00	2026-02-13	Subscription Payment
1963	180	99.00	2026-01-14	Subscription Payment
1964	180	99.00	2025-12-15	Subscription Payment
1965	180	99.00	2025-11-15	Subscription Payment
1966	180	99.00	2025-10-16	Subscription Payment
1967	181	99.00	2026-09-11	Subscription Payment
1968	181	99.00	2026-08-12	Subscription Payment
1969	181	99.00	2026-07-13	Subscription Payment
1970	181	99.00	2026-06-13	Subscription Payment
1971	181	99.00	2026-05-14	Subscription Payment
1972	181	99.00	2026-04-14	Subscription Payment
1973	181	99.00	2026-03-15	Subscription Payment
1974	181	99.00	2026-02-13	Subscription Payment
1975	182	59.00	2026-09-11	Subscription Payment
1976	182	59.00	2026-08-12	Subscription Payment
1977	182	59.00	2026-07-13	Subscription Payment
1978	182	59.00	2026-06-13	Subscription Payment
1979	182	59.00	2026-05-14	Subscription Payment
1980	182	59.00	2026-04-14	Subscription Payment
1981	182	59.00	2026-03-15	Subscription Payment
1982	182	59.00	2026-02-13	Subscription Payment
1983	182	59.00	2026-01-14	Subscription Payment
1984	182	59.00	2025-12-15	Subscription Payment
1985	182	59.00	2025-11-15	Subscription Payment
1986	182	59.00	2025-10-16	Subscription Payment
1987	183	59.00	2026-09-11	Subscription Payment
1988	183	59.00	2026-08-12	Subscription Payment
1989	183	59.00	2026-07-13	Subscription Payment
1990	183	59.00	2026-06-13	Subscription Payment
1991	183	59.00	2026-05-14	Subscription Payment
1992	183	59.00	2026-04-14	Subscription Payment
1993	183	59.00	2026-03-15	Subscription Payment
1994	183	59.00	2026-02-13	Subscription Payment
1995	183	59.00	2026-01-14	Subscription Payment
1996	183	59.00	2025-12-15	Subscription Payment
1997	183	59.00	2025-11-15	Subscription Payment
1998	183	59.00	2025-10-16	Subscription Payment
1999	184	29.00	2026-09-11	Subscription Payment
2000	184	29.00	2026-08-12	Subscription Payment
2001	184	29.00	2026-07-13	Subscription Payment
2002	184	29.00	2026-06-13	Subscription Payment
2003	184	29.00	2026-05-14	Subscription Payment
2004	184	29.00	2026-04-14	Subscription Payment
2005	184	29.00	2026-03-15	Subscription Payment
2006	184	29.00	2026-02-13	Subscription Payment
2007	184	29.00	2026-01-14	Subscription Payment
2008	184	29.00	2025-12-15	Subscription Payment
2009	184	29.00	2025-11-15	Subscription Payment
2010	184	29.00	2025-10-16	Subscription Payment
2011	185	29.00	2026-09-11	Subscription Payment
2012	185	29.00	2026-08-12	Subscription Payment
2013	185	29.00	2026-07-13	Subscription Payment
2014	185	29.00	2026-06-13	Subscription Payment
2015	185	29.00	2026-05-14	Subscription Payment
2016	185	29.00	2026-04-14	Subscription Payment
2017	185	29.00	2026-03-15	Subscription Payment
2018	185	29.00	2026-02-13	Subscription Payment
2019	185	29.00	2026-01-14	Subscription Payment
2020	185	29.00	2025-12-15	Subscription Payment
2021	185	29.00	2025-11-15	Subscription Payment
2022	185	29.00	2025-10-16	Subscription Payment
2023	186	59.00	2026-09-11	Subscription Payment
2024	186	59.00	2026-08-12	Subscription Payment
2025	186	59.00	2026-07-13	Subscription Payment
2026	186	59.00	2026-06-13	Subscription Payment
2027	186	59.00	2026-05-14	Subscription Payment
2028	186	59.00	2026-04-14	Subscription Payment
2029	186	59.00	2026-03-15	Subscription Payment
2030	186	59.00	2026-02-13	Subscription Payment
2031	186	59.00	2026-01-14	Subscription Payment
2032	186	59.00	2025-12-15	Subscription Payment
2033	186	59.00	2025-11-15	Subscription Payment
2034	187	29.00	2026-09-11	Subscription Payment
2035	187	29.00	2026-08-12	Subscription Payment
2036	187	29.00	2026-07-13	Subscription Payment
2037	187	29.00	2026-06-13	Subscription Payment
2038	187	29.00	2026-05-14	Subscription Payment
2039	187	29.00	2026-04-14	Subscription Payment
2040	187	29.00	2026-03-15	Subscription Payment
2041	187	29.00	2026-02-13	Subscription Payment
2042	187	29.00	2026-01-14	Subscription Payment
2043	187	29.00	2025-12-15	Subscription Payment
2044	187	29.00	2025-11-15	Subscription Payment
2045	187	29.00	2025-10-16	Subscription Payment
2046	188	29.00	2026-09-11	Subscription Payment
2047	188	29.00	2026-08-12	Subscription Payment
2048	188	29.00	2026-07-13	Subscription Payment
2049	188	29.00	2026-06-13	Subscription Payment
2050	188	29.00	2026-05-14	Subscription Payment
2051	188	29.00	2026-04-14	Subscription Payment
2052	188	29.00	2026-03-15	Subscription Payment
2053	188	29.00	2026-02-13	Subscription Payment
2054	188	29.00	2026-01-14	Subscription Payment
2055	188	29.00	2025-12-15	Subscription Payment
2056	188	29.00	2025-11-15	Subscription Payment
2057	188	29.00	2025-10-16	Subscription Payment
2058	189	29.00	2026-09-11	Subscription Payment
2059	189	29.00	2026-08-12	Subscription Payment
2060	189	29.00	2026-07-13	Subscription Payment
2061	189	29.00	2026-06-13	Subscription Payment
2062	189	29.00	2026-05-14	Subscription Payment
2063	189	29.00	2026-04-14	Subscription Payment
2064	189	29.00	2026-03-15	Subscription Payment
2065	189	29.00	2026-02-13	Subscription Payment
2066	189	29.00	2026-01-14	Subscription Payment
2067	189	29.00	2025-12-15	Subscription Payment
2068	189	29.00	2025-11-15	Subscription Payment
2069	189	29.00	2025-10-16	Subscription Payment
2070	190	29.00	2026-09-11	Subscription Payment
2071	190	29.00	2026-08-12	Subscription Payment
2072	190	29.00	2026-07-13	Subscription Payment
2073	190	29.00	2026-06-13	Subscription Payment
2074	190	29.00	2026-05-14	Subscription Payment
2075	190	29.00	2026-04-14	Subscription Payment
2076	190	29.00	2026-03-15	Subscription Payment
2077	190	29.00	2026-02-13	Subscription Payment
2078	190	29.00	2026-01-14	Subscription Payment
2079	190	29.00	2025-12-15	Subscription Payment
2080	190	29.00	2025-11-15	Subscription Payment
2081	190	29.00	2025-10-16	Subscription Payment
2082	191	59.00	2026-09-11	Subscription Payment
2083	191	59.00	2026-08-12	Subscription Payment
2084	191	59.00	2026-07-13	Subscription Payment
2085	191	59.00	2026-06-13	Subscription Payment
2086	191	59.00	2026-05-14	Subscription Payment
2087	191	59.00	2026-04-14	Subscription Payment
2088	191	59.00	2026-03-15	Subscription Payment
2089	191	59.00	2026-02-13	Subscription Payment
2090	191	59.00	2026-01-14	Subscription Payment
2091	191	59.00	2025-12-15	Subscription Payment
2092	191	59.00	2025-11-15	Subscription Payment
2093	191	59.00	2025-10-16	Subscription Payment
2094	192	59.00	2026-09-11	Subscription Payment
2095	192	59.00	2026-08-12	Subscription Payment
2096	192	59.00	2026-07-13	Subscription Payment
2097	192	59.00	2026-06-13	Subscription Payment
2098	192	59.00	2026-05-14	Subscription Payment
2099	192	59.00	2026-04-14	Subscription Payment
2100	192	59.00	2026-03-15	Subscription Payment
2101	192	59.00	2026-02-13	Subscription Payment
2102	192	59.00	2026-01-14	Subscription Payment
2103	192	59.00	2025-12-15	Subscription Payment
2104	192	59.00	2025-11-15	Subscription Payment
2105	192	59.00	2025-10-16	Subscription Payment
2106	193	29.00	2026-09-11	Subscription Payment
2107	193	29.00	2026-08-12	Subscription Payment
2108	193	29.00	2026-07-13	Subscription Payment
2109	193	29.00	2026-06-13	Subscription Payment
2110	193	29.00	2026-05-14	Subscription Payment
2111	193	29.00	2026-04-14	Subscription Payment
2112	193	29.00	2026-03-15	Subscription Payment
2113	193	29.00	2026-02-13	Subscription Payment
2114	193	29.00	2026-01-14	Subscription Payment
2115	193	29.00	2025-12-15	Subscription Payment
2116	193	29.00	2025-11-15	Subscription Payment
2117	193	29.00	2025-10-16	Subscription Payment
2118	194	29.00	2026-09-11	Subscription Payment
2119	194	29.00	2026-08-12	Subscription Payment
2120	194	29.00	2026-07-13	Subscription Payment
2121	194	29.00	2026-06-13	Subscription Payment
2122	194	29.00	2026-05-14	Subscription Payment
2123	194	29.00	2026-04-14	Subscription Payment
2124	194	29.00	2026-03-15	Subscription Payment
2125	194	29.00	2026-02-13	Subscription Payment
2126	194	29.00	2026-01-14	Subscription Payment
2127	194	29.00	2025-12-15	Subscription Payment
2128	194	29.00	2025-11-15	Subscription Payment
2129	194	29.00	2025-10-16	Subscription Payment
2130	195	29.00	2026-09-11	Subscription Payment
2131	195	29.00	2026-08-12	Subscription Payment
2132	195	29.00	2026-07-13	Subscription Payment
2133	195	29.00	2026-06-13	Subscription Payment
2134	195	29.00	2026-05-14	Subscription Payment
2135	195	29.00	2026-04-14	Subscription Payment
2136	195	29.00	2026-03-15	Subscription Payment
2137	195	29.00	2026-02-13	Subscription Payment
2138	195	29.00	2026-01-14	Subscription Payment
2139	195	29.00	2025-12-15	Subscription Payment
2140	195	29.00	2025-11-15	Subscription Payment
2141	195	29.00	2025-10-16	Subscription Payment
2142	196	29.00	2026-09-11	Subscription Payment
2143	196	29.00	2026-08-12	Subscription Payment
2144	196	29.00	2026-07-13	Subscription Payment
2145	196	29.00	2026-06-13	Subscription Payment
2146	196	29.00	2026-05-14	Subscription Payment
2147	196	29.00	2026-04-14	Subscription Payment
2148	196	29.00	2026-03-15	Subscription Payment
2149	196	29.00	2026-02-13	Subscription Payment
2150	196	29.00	2026-01-14	Subscription Payment
2151	196	29.00	2025-12-15	Subscription Payment
2152	196	29.00	2025-11-15	Subscription Payment
2153	196	29.00	2025-10-16	Subscription Payment
2154	197	59.00	2026-09-11	Subscription Payment
2155	197	59.00	2026-08-12	Subscription Payment
2156	197	59.00	2026-07-13	Subscription Payment
2157	197	59.00	2026-06-13	Subscription Payment
2158	197	59.00	2026-05-14	Subscription Payment
2159	197	59.00	2026-04-14	Subscription Payment
2160	197	59.00	2026-03-15	Subscription Payment
2161	197	59.00	2026-02-13	Subscription Payment
2162	197	59.00	2026-01-14	Subscription Payment
2163	197	59.00	2025-12-15	Subscription Payment
2164	197	59.00	2025-11-15	Subscription Payment
2165	197	59.00	2025-10-16	Subscription Payment
2166	198	59.00	2026-09-11	Subscription Payment
2167	198	59.00	2026-08-12	Subscription Payment
2168	198	59.00	2026-07-13	Subscription Payment
2169	198	59.00	2026-06-13	Subscription Payment
2170	198	59.00	2026-05-14	Subscription Payment
2171	198	59.00	2026-04-14	Subscription Payment
2172	198	59.00	2026-03-15	Subscription Payment
2173	198	59.00	2026-02-13	Subscription Payment
2174	198	59.00	2026-01-14	Subscription Payment
2175	198	59.00	2025-12-15	Subscription Payment
2176	198	59.00	2025-11-15	Subscription Payment
2177	198	59.00	2025-10-16	Subscription Payment
2178	199	29.00	2026-09-11	Subscription Payment
2179	199	29.00	2026-08-12	Subscription Payment
2180	199	29.00	2026-07-13	Subscription Payment
2181	199	29.00	2026-06-13	Subscription Payment
2182	199	29.00	2026-05-14	Subscription Payment
2183	199	29.00	2026-04-14	Subscription Payment
2184	199	29.00	2026-03-15	Subscription Payment
2185	199	29.00	2026-02-13	Subscription Payment
2186	199	29.00	2026-01-14	Subscription Payment
2187	199	29.00	2025-12-15	Subscription Payment
2188	199	29.00	2025-11-15	Subscription Payment
2189	199	29.00	2025-10-16	Subscription Payment
2190	200	29.00	2026-09-11	Subscription Payment
2191	200	29.00	2026-08-12	Subscription Payment
2192	200	29.00	2026-07-13	Subscription Payment
2193	200	29.00	2026-06-13	Subscription Payment
2194	200	29.00	2026-05-14	Subscription Payment
2195	200	29.00	2026-04-14	Subscription Payment
2196	200	29.00	2026-03-15	Subscription Payment
2197	200	29.00	2026-02-13	Subscription Payment
2198	200	29.00	2026-01-14	Subscription Payment
2199	200	29.00	2025-12-15	Subscription Payment
2200	200	29.00	2025-11-15	Subscription Payment
2201	201	99.00	2026-09-11	Subscription Payment
2202	201	99.00	2026-08-12	Subscription Payment
2203	201	99.00	2026-07-13	Subscription Payment
2204	202	59.00	2026-09-11	Subscription Payment
2205	202	59.00	2026-08-12	Subscription Payment
2206	202	59.00	2026-07-13	Subscription Payment
2207	202	59.00	2026-06-13	Subscription Payment
2208	202	59.00	2026-05-14	Subscription Payment
2209	202	59.00	2026-04-14	Subscription Payment
2210	202	59.00	2026-03-15	Subscription Payment
2211	202	59.00	2026-02-13	Subscription Payment
2212	202	59.00	2026-01-14	Subscription Payment
2213	202	59.00	2025-12-15	Subscription Payment
2214	203	99.00	2026-09-11	Subscription Payment
2215	203	99.00	2026-08-12	Subscription Payment
2216	203	99.00	2026-07-13	Subscription Payment
2217	203	99.00	2026-06-13	Subscription Payment
2218	203	99.00	2026-05-14	Subscription Payment
2219	203	99.00	2026-04-14	Subscription Payment
2220	203	99.00	2026-03-15	Subscription Payment
2221	203	99.00	2026-02-13	Subscription Payment
2222	203	99.00	2026-01-14	Subscription Payment
2223	203	99.00	2025-12-15	Subscription Payment
2224	203	99.00	2025-11-15	Subscription Payment
2225	203	99.00	2025-10-16	Subscription Payment
2226	204	59.00	2026-09-11	Subscription Payment
2227	204	59.00	2026-08-12	Subscription Payment
2228	204	59.00	2026-07-13	Subscription Payment
2229	204	59.00	2026-06-13	Subscription Payment
2230	204	59.00	2026-05-14	Subscription Payment
2231	204	59.00	2026-04-14	Subscription Payment
2232	204	59.00	2026-03-15	Subscription Payment
2233	204	59.00	2026-02-13	Subscription Payment
2234	204	59.00	2026-01-14	Subscription Payment
2235	204	59.00	2025-12-15	Subscription Payment
2236	204	59.00	2025-11-15	Subscription Payment
2237	204	59.00	2025-10-16	Subscription Payment
2238	205	99.00	2026-09-11	Subscription Payment
2239	205	99.00	2026-08-12	Subscription Payment
2240	205	99.00	2026-07-13	Subscription Payment
2241	205	99.00	2026-06-13	Subscription Payment
2242	205	99.00	2026-05-14	Subscription Payment
2243	205	99.00	2026-04-14	Subscription Payment
2244	205	99.00	2026-03-15	Subscription Payment
2245	205	99.00	2026-02-13	Subscription Payment
2246	205	99.00	2026-01-14	Subscription Payment
2247	205	99.00	2025-12-15	Subscription Payment
2248	205	99.00	2025-11-15	Subscription Payment
2249	205	99.00	2025-10-16	Subscription Payment
2250	206	99.00	2026-09-11	Subscription Payment
2251	206	99.00	2026-08-12	Subscription Payment
2252	206	99.00	2026-07-13	Subscription Payment
2253	206	99.00	2026-06-13	Subscription Payment
2254	206	99.00	2026-05-14	Subscription Payment
2255	206	99.00	2026-04-14	Subscription Payment
2256	206	99.00	2026-03-15	Subscription Payment
2257	206	99.00	2026-02-13	Subscription Payment
2258	206	99.00	2026-01-14	Subscription Payment
2259	206	99.00	2025-12-15	Subscription Payment
2260	206	99.00	2025-11-15	Subscription Payment
2261	207	29.00	2026-09-11	Subscription Payment
2262	207	29.00	2026-08-12	Subscription Payment
2263	207	29.00	2026-07-13	Subscription Payment
2264	207	29.00	2026-06-13	Subscription Payment
2265	207	29.00	2026-05-14	Subscription Payment
2266	207	29.00	2026-04-14	Subscription Payment
2267	207	29.00	2026-03-15	Subscription Payment
2268	207	29.00	2026-02-13	Subscription Payment
2269	207	29.00	2026-01-14	Subscription Payment
2270	207	29.00	2025-12-15	Subscription Payment
2271	207	29.00	2025-11-15	Subscription Payment
2272	207	29.00	2025-10-16	Subscription Payment
2273	208	29.00	2026-09-11	Subscription Payment
2274	208	29.00	2026-08-12	Subscription Payment
2275	208	29.00	2026-07-13	Subscription Payment
2276	208	29.00	2026-06-13	Subscription Payment
2277	208	29.00	2026-05-14	Subscription Payment
2278	208	29.00	2026-04-14	Subscription Payment
2279	208	29.00	2026-03-15	Subscription Payment
2280	208	29.00	2026-02-13	Subscription Payment
2281	208	29.00	2026-01-14	Subscription Payment
2282	208	29.00	2025-12-15	Subscription Payment
2283	208	29.00	2025-11-15	Subscription Payment
2284	208	29.00	2025-10-16	Subscription Payment
2285	209	29.00	2026-09-11	Subscription Payment
2286	209	29.00	2026-08-12	Subscription Payment
2287	209	29.00	2026-07-13	Subscription Payment
2288	209	29.00	2026-06-13	Subscription Payment
2289	209	29.00	2026-05-14	Subscription Payment
2290	209	29.00	2026-04-14	Subscription Payment
2291	209	29.00	2026-03-15	Subscription Payment
2292	209	29.00	2026-02-13	Subscription Payment
2293	209	29.00	2026-01-14	Subscription Payment
2294	209	29.00	2025-12-15	Subscription Payment
2295	209	29.00	2025-11-15	Subscription Payment
2296	209	29.00	2025-10-16	Subscription Payment
2297	210	59.00	2026-09-11	Subscription Payment
2298	210	59.00	2026-08-12	Subscription Payment
2299	210	59.00	2026-07-13	Subscription Payment
2300	210	59.00	2026-06-13	Subscription Payment
2301	210	59.00	2026-05-14	Subscription Payment
2302	210	59.00	2026-04-14	Subscription Payment
2303	210	59.00	2026-03-15	Subscription Payment
2304	210	59.00	2026-02-13	Subscription Payment
2305	210	59.00	2026-01-14	Subscription Payment
2306	210	59.00	2025-12-15	Subscription Payment
2307	210	59.00	2025-11-15	Subscription Payment
2308	210	59.00	2025-10-16	Subscription Payment
2309	211	29.00	2026-09-11	Subscription Payment
2310	211	29.00	2026-08-12	Subscription Payment
2311	211	29.00	2026-07-13	Subscription Payment
2312	211	29.00	2026-06-13	Subscription Payment
2313	211	29.00	2026-05-14	Subscription Payment
2314	211	29.00	2026-04-14	Subscription Payment
2315	211	29.00	2026-03-15	Subscription Payment
2316	211	29.00	2026-02-13	Subscription Payment
2317	211	29.00	2026-01-14	Subscription Payment
2318	211	29.00	2025-12-15	Subscription Payment
2319	211	29.00	2025-11-15	Subscription Payment
2320	211	29.00	2025-10-16	Subscription Payment
2321	212	29.00	2026-09-11	Subscription Payment
2322	212	29.00	2026-08-12	Subscription Payment
2323	212	29.00	2026-07-13	Subscription Payment
2324	212	29.00	2026-06-13	Subscription Payment
2325	212	29.00	2026-05-14	Subscription Payment
2326	212	29.00	2026-04-14	Subscription Payment
2327	212	29.00	2026-03-15	Subscription Payment
2328	212	29.00	2026-02-13	Subscription Payment
2329	212	29.00	2026-01-14	Subscription Payment
2330	212	29.00	2025-12-15	Subscription Payment
2331	212	29.00	2025-11-15	Subscription Payment
2332	212	29.00	2025-10-16	Subscription Payment
2333	213	29.00	2026-09-11	Subscription Payment
2334	213	29.00	2026-08-12	Subscription Payment
2335	213	29.00	2026-07-13	Subscription Payment
2336	213	29.00	2026-06-13	Subscription Payment
2337	213	29.00	2026-05-14	Subscription Payment
2338	213	29.00	2026-04-14	Subscription Payment
2339	213	29.00	2026-03-15	Subscription Payment
2340	213	29.00	2026-02-13	Subscription Payment
2341	213	29.00	2026-01-14	Subscription Payment
2342	213	29.00	2025-12-15	Subscription Payment
2343	213	29.00	2025-11-15	Subscription Payment
2344	213	29.00	2025-10-16	Subscription Payment
2345	214	99.00	2026-09-11	Subscription Payment
2346	214	99.00	2026-08-12	Subscription Payment
2347	214	99.00	2026-07-13	Subscription Payment
2348	214	99.00	2026-06-13	Subscription Payment
2349	214	99.00	2026-05-14	Subscription Payment
2350	214	99.00	2026-04-14	Subscription Payment
2351	214	99.00	2026-03-15	Subscription Payment
2352	214	99.00	2026-02-13	Subscription Payment
2353	214	99.00	2026-01-14	Subscription Payment
2354	214	99.00	2025-12-15	Subscription Payment
2355	214	99.00	2025-11-15	Subscription Payment
2356	214	99.00	2025-10-16	Subscription Payment
2357	215	59.00	2026-09-11	Subscription Payment
2358	215	59.00	2026-08-12	Subscription Payment
2359	215	59.00	2026-07-13	Subscription Payment
2360	215	59.00	2026-06-13	Subscription Payment
2361	215	59.00	2026-05-14	Subscription Payment
2362	215	59.00	2026-04-14	Subscription Payment
2363	215	59.00	2026-03-15	Subscription Payment
2364	215	59.00	2026-02-13	Subscription Payment
2365	215	59.00	2026-01-14	Subscription Payment
2366	215	59.00	2025-12-15	Subscription Payment
2367	215	59.00	2025-11-15	Subscription Payment
2368	215	59.00	2025-10-16	Subscription Payment
2369	216	99.00	2026-09-11	Subscription Payment
2370	216	99.00	2026-08-12	Subscription Payment
2371	216	99.00	2026-07-13	Subscription Payment
2372	216	99.00	2026-06-13	Subscription Payment
2373	216	99.00	2026-05-14	Subscription Payment
2374	216	99.00	2026-04-14	Subscription Payment
2375	216	99.00	2026-03-15	Subscription Payment
2376	216	99.00	2026-02-13	Subscription Payment
2377	216	99.00	2026-01-14	Subscription Payment
2378	216	99.00	2025-12-15	Subscription Payment
2379	216	99.00	2025-11-15	Subscription Payment
2380	216	99.00	2025-10-16	Subscription Payment
2381	217	99.00	2026-09-11	Subscription Payment
2382	217	99.00	2026-08-12	Subscription Payment
2383	217	99.00	2026-07-13	Subscription Payment
2384	217	99.00	2026-06-13	Subscription Payment
2385	217	99.00	2026-05-14	Subscription Payment
2386	218	29.00	2026-09-11	Subscription Payment
2387	218	29.00	2026-08-12	Subscription Payment
2388	218	29.00	2026-07-13	Subscription Payment
2389	218	29.00	2026-06-13	Subscription Payment
2390	218	29.00	2026-05-14	Subscription Payment
2391	218	29.00	2026-04-14	Subscription Payment
2392	218	29.00	2026-03-15	Subscription Payment
2393	218	29.00	2026-02-13	Subscription Payment
2394	218	29.00	2026-01-14	Subscription Payment
2395	219	59.00	2026-09-11	Subscription Payment
2396	219	59.00	2026-08-12	Subscription Payment
2397	219	59.00	2026-07-13	Subscription Payment
2398	220	99.00	2026-09-11	Subscription Payment
2399	220	99.00	2026-08-12	Subscription Payment
2400	220	99.00	2026-07-13	Subscription Payment
2401	220	99.00	2026-06-13	Subscription Payment
2402	220	99.00	2026-05-14	Subscription Payment
2403	220	99.00	2026-04-14	Subscription Payment
2404	220	99.00	2026-03-15	Subscription Payment
2405	220	99.00	2026-02-13	Subscription Payment
2406	220	99.00	2026-01-14	Subscription Payment
2407	220	99.00	2025-12-15	Subscription Payment
2408	220	99.00	2025-11-15	Subscription Payment
2409	220	99.00	2025-10-16	Subscription Payment
2410	221	29.00	2026-09-11	Subscription Payment
2411	221	29.00	2026-08-12	Subscription Payment
2412	221	29.00	2026-07-13	Subscription Payment
2413	221	29.00	2026-06-13	Subscription Payment
2414	221	29.00	2026-05-14	Subscription Payment
2415	221	29.00	2026-04-14	Subscription Payment
2416	221	29.00	2026-03-15	Subscription Payment
2417	221	29.00	2026-02-13	Subscription Payment
2418	221	29.00	2026-01-14	Subscription Payment
2419	221	29.00	2025-12-15	Subscription Payment
2420	221	29.00	2025-11-15	Subscription Payment
2421	221	29.00	2025-10-16	Subscription Payment
2422	222	99.00	2026-09-11	Subscription Payment
2423	222	99.00	2026-08-12	Subscription Payment
2424	222	99.00	2026-07-13	Subscription Payment
2425	222	99.00	2026-06-13	Subscription Payment
2426	222	99.00	2026-05-14	Subscription Payment
2427	222	99.00	2026-04-14	Subscription Payment
2428	222	99.00	2026-03-15	Subscription Payment
2429	222	99.00	2026-02-13	Subscription Payment
2430	222	99.00	2026-01-14	Subscription Payment
2431	222	99.00	2025-12-15	Subscription Payment
2432	222	99.00	2025-11-15	Subscription Payment
2433	222	99.00	2025-10-16	Subscription Payment
2434	223	59.00	2026-09-11	Subscription Payment
2435	223	59.00	2026-08-12	Subscription Payment
2436	223	59.00	2026-07-13	Subscription Payment
2437	223	59.00	2026-06-13	Subscription Payment
2438	223	59.00	2026-05-14	Subscription Payment
2439	223	59.00	2026-04-14	Subscription Payment
2440	223	59.00	2026-03-15	Subscription Payment
2441	223	59.00	2026-02-13	Subscription Payment
2442	223	59.00	2026-01-14	Subscription Payment
2443	223	59.00	2025-12-15	Subscription Payment
2444	223	59.00	2025-11-15	Subscription Payment
2445	223	59.00	2025-10-16	Subscription Payment
2446	224	59.00	2026-09-11	Subscription Payment
2447	224	59.00	2026-08-12	Subscription Payment
2448	224	59.00	2026-07-13	Subscription Payment
2449	224	59.00	2026-06-13	Subscription Payment
2450	224	59.00	2026-05-14	Subscription Payment
2451	224	59.00	2026-04-14	Subscription Payment
2452	224	59.00	2026-03-15	Subscription Payment
2453	224	59.00	2026-02-13	Subscription Payment
2454	225	59.00	2026-09-11	Subscription Payment
2455	225	59.00	2026-08-12	Subscription Payment
2456	225	59.00	2026-07-13	Subscription Payment
2457	225	59.00	2026-06-13	Subscription Payment
2458	226	59.00	2026-09-11	Subscription Payment
2459	226	59.00	2026-08-12	Subscription Payment
2460	226	59.00	2026-07-13	Subscription Payment
2461	226	59.00	2026-06-13	Subscription Payment
2462	226	59.00	2026-05-14	Subscription Payment
2463	226	59.00	2026-04-14	Subscription Payment
2464	226	59.00	2026-03-15	Subscription Payment
2465	226	59.00	2026-02-13	Subscription Payment
2466	226	59.00	2026-01-14	Subscription Payment
2467	226	59.00	2025-12-15	Subscription Payment
2468	226	59.00	2025-11-15	Subscription Payment
2469	226	59.00	2025-10-16	Subscription Payment
2470	227	29.00	2026-09-11	Subscription Payment
2471	227	29.00	2026-08-12	Subscription Payment
2472	227	29.00	2026-07-13	Subscription Payment
2473	227	29.00	2026-06-13	Subscription Payment
2474	227	29.00	2026-05-14	Subscription Payment
2475	227	29.00	2026-04-14	Subscription Payment
2476	227	29.00	2026-03-15	Subscription Payment
2477	227	29.00	2026-02-13	Subscription Payment
2478	227	29.00	2026-01-14	Subscription Payment
2479	227	29.00	2025-12-15	Subscription Payment
2480	227	29.00	2025-11-15	Subscription Payment
2481	227	29.00	2025-10-16	Subscription Payment
2482	228	59.00	2026-09-11	Subscription Payment
2483	228	59.00	2026-08-12	Subscription Payment
2484	228	59.00	2026-07-13	Subscription Payment
2485	228	59.00	2026-06-13	Subscription Payment
2486	228	59.00	2026-05-14	Subscription Payment
2487	228	59.00	2026-04-14	Subscription Payment
2488	228	59.00	2026-03-15	Subscription Payment
2489	228	59.00	2026-02-13	Subscription Payment
2490	228	59.00	2026-01-14	Subscription Payment
2491	228	59.00	2025-12-15	Subscription Payment
2492	228	59.00	2025-11-15	Subscription Payment
2493	228	59.00	2025-10-16	Subscription Payment
2494	229	59.00	2026-09-11	Subscription Payment
2495	229	59.00	2026-08-12	Subscription Payment
2496	229	59.00	2026-07-13	Subscription Payment
2497	229	59.00	2026-06-13	Subscription Payment
2498	229	59.00	2026-05-14	Subscription Payment
2499	229	59.00	2026-04-14	Subscription Payment
2500	229	59.00	2026-03-15	Subscription Payment
2501	229	59.00	2026-02-13	Subscription Payment
2502	229	59.00	2026-01-14	Subscription Payment
2503	229	59.00	2025-12-15	Subscription Payment
2504	230	99.00	2026-09-11	Subscription Payment
2505	230	99.00	2026-08-12	Subscription Payment
2506	230	99.00	2026-07-13	Subscription Payment
2507	230	99.00	2026-06-13	Subscription Payment
2508	230	99.00	2026-05-14	Subscription Payment
2509	230	99.00	2026-04-14	Subscription Payment
2510	230	99.00	2026-03-15	Subscription Payment
2511	230	99.00	2026-02-13	Subscription Payment
2512	230	99.00	2026-01-14	Subscription Payment
2513	230	99.00	2025-12-15	Subscription Payment
2514	230	99.00	2025-11-15	Subscription Payment
2515	230	99.00	2025-10-16	Subscription Payment
2516	231	59.00	2026-09-11	Subscription Payment
2517	231	59.00	2026-08-12	Subscription Payment
2518	231	59.00	2026-07-13	Subscription Payment
2519	231	59.00	2026-06-13	Subscription Payment
2520	231	59.00	2026-05-14	Subscription Payment
2521	231	59.00	2026-04-14	Subscription Payment
2522	231	59.00	2026-03-15	Subscription Payment
2523	231	59.00	2026-02-13	Subscription Payment
2524	231	59.00	2026-01-14	Subscription Payment
2525	231	59.00	2025-12-15	Subscription Payment
2526	231	59.00	2025-11-15	Subscription Payment
2527	231	59.00	2025-10-16	Subscription Payment
2528	232	99.00	2026-09-11	Subscription Payment
2529	232	99.00	2026-08-12	Subscription Payment
2530	232	99.00	2026-07-13	Subscription Payment
2531	232	99.00	2026-06-13	Subscription Payment
2532	232	99.00	2026-05-14	Subscription Payment
2533	232	99.00	2026-04-14	Subscription Payment
2534	232	99.00	2026-03-15	Subscription Payment
2535	232	99.00	2026-02-13	Subscription Payment
2536	232	99.00	2026-01-14	Subscription Payment
2537	232	99.00	2025-12-15	Subscription Payment
2538	232	99.00	2025-11-15	Subscription Payment
2539	232	99.00	2025-10-16	Subscription Payment
2540	233	29.00	2026-09-11	Subscription Payment
2541	233	29.00	2026-08-12	Subscription Payment
2542	233	29.00	2026-07-13	Subscription Payment
2543	233	29.00	2026-06-13	Subscription Payment
2544	233	29.00	2026-05-14	Subscription Payment
2545	233	29.00	2026-04-14	Subscription Payment
2546	233	29.00	2026-03-15	Subscription Payment
2547	233	29.00	2026-02-13	Subscription Payment
2548	233	29.00	2026-01-14	Subscription Payment
2549	233	29.00	2025-12-15	Subscription Payment
2550	233	29.00	2025-11-15	Subscription Payment
2551	233	29.00	2025-10-16	Subscription Payment
2552	234	29.00	2026-09-11	Subscription Payment
2553	234	29.00	2026-08-12	Subscription Payment
2554	234	29.00	2026-07-13	Subscription Payment
2555	234	29.00	2026-06-13	Subscription Payment
2556	234	29.00	2026-05-14	Subscription Payment
2557	234	29.00	2026-04-14	Subscription Payment
2558	234	29.00	2026-03-15	Subscription Payment
2559	234	29.00	2026-02-13	Subscription Payment
2560	234	29.00	2026-01-14	Subscription Payment
2561	234	29.00	2025-12-15	Subscription Payment
2562	234	29.00	2025-11-15	Subscription Payment
2563	234	29.00	2025-10-16	Subscription Payment
2564	235	59.00	2026-09-11	Subscription Payment
2565	235	59.00	2026-08-12	Subscription Payment
2566	235	59.00	2026-07-13	Subscription Payment
2567	235	59.00	2026-06-13	Subscription Payment
2568	235	59.00	2026-05-14	Subscription Payment
2569	235	59.00	2026-04-14	Subscription Payment
2570	235	59.00	2026-03-15	Subscription Payment
2571	235	59.00	2026-02-13	Subscription Payment
2572	235	59.00	2026-01-14	Subscription Payment
2573	235	59.00	2025-12-15	Subscription Payment
2574	236	29.00	2026-09-11	Subscription Payment
2575	236	29.00	2026-08-12	Subscription Payment
2576	236	29.00	2026-07-13	Subscription Payment
2577	236	29.00	2026-06-13	Subscription Payment
2578	236	29.00	2026-05-14	Subscription Payment
2579	236	29.00	2026-04-14	Subscription Payment
2580	236	29.00	2026-03-15	Subscription Payment
2581	236	29.00	2026-02-13	Subscription Payment
2582	236	29.00	2026-01-14	Subscription Payment
2583	236	29.00	2025-12-15	Subscription Payment
2584	236	29.00	2025-11-15	Subscription Payment
2585	236	29.00	2025-10-16	Subscription Payment
2586	237	99.00	2026-09-11	Subscription Payment
2587	237	99.00	2026-08-12	Subscription Payment
2588	237	99.00	2026-07-13	Subscription Payment
2589	237	99.00	2026-06-13	Subscription Payment
2590	237	99.00	2026-05-14	Subscription Payment
2591	237	99.00	2026-04-14	Subscription Payment
2592	237	99.00	2026-03-15	Subscription Payment
2593	237	99.00	2026-02-13	Subscription Payment
2594	237	99.00	2026-01-14	Subscription Payment
2595	237	99.00	2025-12-15	Subscription Payment
2596	237	99.00	2025-11-15	Subscription Payment
2597	237	99.00	2025-10-16	Subscription Payment
2598	238	59.00	2026-09-11	Subscription Payment
2599	238	59.00	2026-08-12	Subscription Payment
2600	238	59.00	2026-07-13	Subscription Payment
2601	238	59.00	2026-06-13	Subscription Payment
2602	238	59.00	2026-05-14	Subscription Payment
2603	238	59.00	2026-04-14	Subscription Payment
2604	238	59.00	2026-03-15	Subscription Payment
2605	238	59.00	2026-02-13	Subscription Payment
2606	238	59.00	2026-01-14	Subscription Payment
2607	238	59.00	2025-12-15	Subscription Payment
2608	238	59.00	2025-11-15	Subscription Payment
2609	238	59.00	2025-10-16	Subscription Payment
2610	239	99.00	2026-09-11	Subscription Payment
2611	239	99.00	2026-08-12	Subscription Payment
2612	239	99.00	2026-07-13	Subscription Payment
2613	239	99.00	2026-06-13	Subscription Payment
2614	239	99.00	2026-05-14	Subscription Payment
2615	239	99.00	2026-04-14	Subscription Payment
2616	239	99.00	2026-03-15	Subscription Payment
2617	239	99.00	2026-02-13	Subscription Payment
2618	239	99.00	2026-01-14	Subscription Payment
2619	239	99.00	2025-12-15	Subscription Payment
2620	239	99.00	2025-11-15	Subscription Payment
2621	239	99.00	2025-10-16	Subscription Payment
2622	240	59.00	2026-09-11	Subscription Payment
2623	240	59.00	2026-08-12	Subscription Payment
2624	240	59.00	2026-07-13	Subscription Payment
2625	240	59.00	2026-06-13	Subscription Payment
2626	240	59.00	2026-05-14	Subscription Payment
2627	240	59.00	2026-04-14	Subscription Payment
2628	240	59.00	2026-03-15	Subscription Payment
2629	240	59.00	2026-02-13	Subscription Payment
2630	240	59.00	2026-01-14	Subscription Payment
2631	240	59.00	2025-12-15	Subscription Payment
2632	240	59.00	2025-11-15	Subscription Payment
2633	240	59.00	2025-10-16	Subscription Payment
2634	241	29.00	2026-09-11	Subscription Payment
2635	241	29.00	2026-08-12	Subscription Payment
2636	241	29.00	2026-07-13	Subscription Payment
2637	241	29.00	2026-06-13	Subscription Payment
2638	241	29.00	2026-05-14	Subscription Payment
2639	241	29.00	2026-04-14	Subscription Payment
2640	241	29.00	2026-03-15	Subscription Payment
2641	241	29.00	2026-02-13	Subscription Payment
2642	241	29.00	2026-01-14	Subscription Payment
2643	241	29.00	2025-12-15	Subscription Payment
2644	241	29.00	2025-11-15	Subscription Payment
2645	241	29.00	2025-10-16	Subscription Payment
2646	242	59.00	2026-09-11	Subscription Payment
2647	242	59.00	2026-08-12	Subscription Payment
2648	242	59.00	2026-07-13	Subscription Payment
2649	242	59.00	2026-06-13	Subscription Payment
2650	242	59.00	2026-05-14	Subscription Payment
2651	242	59.00	2026-04-14	Subscription Payment
2652	242	59.00	2026-03-15	Subscription Payment
2653	242	59.00	2026-02-13	Subscription Payment
2654	242	59.00	2026-01-14	Subscription Payment
2655	242	59.00	2025-12-15	Subscription Payment
2656	242	59.00	2025-11-15	Subscription Payment
2657	242	59.00	2025-10-16	Subscription Payment
2658	243	29.00	2026-09-11	Subscription Payment
2659	243	29.00	2026-08-12	Subscription Payment
2660	243	29.00	2026-07-13	Subscription Payment
2661	243	29.00	2026-06-13	Subscription Payment
2662	243	29.00	2026-05-14	Subscription Payment
2663	243	29.00	2026-04-14	Subscription Payment
2664	243	29.00	2026-03-15	Subscription Payment
2665	244	59.00	2026-09-11	Subscription Payment
2666	244	59.00	2026-08-12	Subscription Payment
2667	244	59.00	2026-07-13	Subscription Payment
2668	244	59.00	2026-06-13	Subscription Payment
2669	244	59.00	2026-05-14	Subscription Payment
2670	244	59.00	2026-04-14	Subscription Payment
2671	244	59.00	2026-03-15	Subscription Payment
2672	244	59.00	2026-02-13	Subscription Payment
2673	244	59.00	2026-01-14	Subscription Payment
2674	244	59.00	2025-12-15	Subscription Payment
2675	245	29.00	2026-09-11	Subscription Payment
2676	245	29.00	2026-08-12	Subscription Payment
2677	245	29.00	2026-07-13	Subscription Payment
2678	245	29.00	2026-06-13	Subscription Payment
2679	245	29.00	2026-05-14	Subscription Payment
2680	245	29.00	2026-04-14	Subscription Payment
2681	245	29.00	2026-03-15	Subscription Payment
2682	245	29.00	2026-02-13	Subscription Payment
2683	245	29.00	2026-01-14	Subscription Payment
2684	245	29.00	2025-12-15	Subscription Payment
2685	245	29.00	2025-11-15	Subscription Payment
2686	245	29.00	2025-10-16	Subscription Payment
2687	246	29.00	2026-09-11	Subscription Payment
2688	246	29.00	2026-08-12	Subscription Payment
2689	246	29.00	2026-07-13	Subscription Payment
2690	246	29.00	2026-06-13	Subscription Payment
2691	246	29.00	2026-05-14	Subscription Payment
2692	246	29.00	2026-04-14	Subscription Payment
2693	246	29.00	2026-03-15	Subscription Payment
2694	246	29.00	2026-02-13	Subscription Payment
2695	246	29.00	2026-01-14	Subscription Payment
2696	246	29.00	2025-12-15	Subscription Payment
2697	246	29.00	2025-11-15	Subscription Payment
2698	246	29.00	2025-10-16	Subscription Payment
2699	247	29.00	2026-09-11	Subscription Payment
2700	247	29.00	2026-08-12	Subscription Payment
2701	247	29.00	2026-07-13	Subscription Payment
2702	247	29.00	2026-06-13	Subscription Payment
2703	247	29.00	2026-05-14	Subscription Payment
2704	247	29.00	2026-04-14	Subscription Payment
2705	247	29.00	2026-03-15	Subscription Payment
2706	247	29.00	2026-02-13	Subscription Payment
2707	247	29.00	2026-01-14	Subscription Payment
2708	247	29.00	2025-12-15	Subscription Payment
2709	247	29.00	2025-11-15	Subscription Payment
2710	247	29.00	2025-10-16	Subscription Payment
2711	248	59.00	2026-09-11	Subscription Payment
2712	248	59.00	2026-08-12	Subscription Payment
2713	248	59.00	2026-07-13	Subscription Payment
2714	248	59.00	2026-06-13	Subscription Payment
2715	248	59.00	2026-05-14	Subscription Payment
2716	248	59.00	2026-04-14	Subscription Payment
2717	248	59.00	2026-03-15	Subscription Payment
2718	248	59.00	2026-02-13	Subscription Payment
2719	248	59.00	2026-01-14	Subscription Payment
2720	248	59.00	2025-12-15	Subscription Payment
2721	248	59.00	2025-11-15	Subscription Payment
2722	248	59.00	2025-10-16	Subscription Payment
2723	249	99.00	2026-09-11	Subscription Payment
2724	249	99.00	2026-08-12	Subscription Payment
2725	249	99.00	2026-07-13	Subscription Payment
2726	249	99.00	2026-06-13	Subscription Payment
2727	249	99.00	2026-05-14	Subscription Payment
2728	249	99.00	2026-04-14	Subscription Payment
2729	250	29.00	2026-09-11	Subscription Payment
2730	250	29.00	2026-08-12	Subscription Payment
2731	250	29.00	2026-07-13	Subscription Payment
2732	250	29.00	2026-06-13	Subscription Payment
2733	250	29.00	2026-05-14	Subscription Payment
2734	250	29.00	2026-04-14	Subscription Payment
2735	250	29.00	2026-03-15	Subscription Payment
2736	250	29.00	2026-02-13	Subscription Payment
2737	250	29.00	2026-01-14	Subscription Payment
2738	250	29.00	2025-12-15	Subscription Payment
2739	250	29.00	2025-11-15	Subscription Payment
2740	250	29.00	2025-10-16	Subscription Payment
2741	251	29.00	2026-09-11	Subscription Payment
2742	251	29.00	2026-08-12	Subscription Payment
2743	251	29.00	2026-07-13	Subscription Payment
2744	251	29.00	2026-06-13	Subscription Payment
2745	251	29.00	2026-05-14	Subscription Payment
2746	251	29.00	2026-04-14	Subscription Payment
2747	251	29.00	2026-03-15	Subscription Payment
2748	251	29.00	2026-02-13	Subscription Payment
2749	251	29.00	2026-01-14	Subscription Payment
2750	251	29.00	2025-12-15	Subscription Payment
2751	251	29.00	2025-11-15	Subscription Payment
2752	251	29.00	2025-10-16	Subscription Payment
2753	252	99.00	2026-09-11	Subscription Payment
2754	252	99.00	2026-08-12	Subscription Payment
2755	252	99.00	2026-07-13	Subscription Payment
2756	252	99.00	2026-06-13	Subscription Payment
2757	252	99.00	2026-05-14	Subscription Payment
2758	252	99.00	2026-04-14	Subscription Payment
2759	252	99.00	2026-03-15	Subscription Payment
2760	252	99.00	2026-02-13	Subscription Payment
2761	252	99.00	2026-01-14	Subscription Payment
2762	252	99.00	2025-12-15	Subscription Payment
2763	252	99.00	2025-11-15	Subscription Payment
2764	252	99.00	2025-10-16	Subscription Payment
2765	253	59.00	2026-09-11	Subscription Payment
2766	253	59.00	2026-08-12	Subscription Payment
2767	253	59.00	2026-07-13	Subscription Payment
2768	253	59.00	2026-06-13	Subscription Payment
2769	253	59.00	2026-05-14	Subscription Payment
2770	253	59.00	2026-04-14	Subscription Payment
2771	253	59.00	2026-03-15	Subscription Payment
2772	253	59.00	2026-02-13	Subscription Payment
2773	253	59.00	2026-01-14	Subscription Payment
2774	253	59.00	2025-12-15	Subscription Payment
2775	253	59.00	2025-11-15	Subscription Payment
2776	253	59.00	2025-10-16	Subscription Payment
2777	254	29.00	2026-09-11	Subscription Payment
2778	254	29.00	2026-08-12	Subscription Payment
2779	254	29.00	2026-07-13	Subscription Payment
2780	254	29.00	2026-06-13	Subscription Payment
2781	254	29.00	2026-05-14	Subscription Payment
2782	254	29.00	2026-04-14	Subscription Payment
2783	254	29.00	2026-03-15	Subscription Payment
2784	254	29.00	2026-02-13	Subscription Payment
2785	254	29.00	2026-01-14	Subscription Payment
2786	254	29.00	2025-12-15	Subscription Payment
2787	254	29.00	2025-11-15	Subscription Payment
2788	254	29.00	2025-10-16	Subscription Payment
2789	255	29.00	2026-09-11	Subscription Payment
2790	255	29.00	2026-08-12	Subscription Payment
2791	255	29.00	2026-07-13	Subscription Payment
2792	255	29.00	2026-06-13	Subscription Payment
2793	255	29.00	2026-05-14	Subscription Payment
2794	255	29.00	2026-04-14	Subscription Payment
2795	255	29.00	2026-03-15	Subscription Payment
2796	255	29.00	2026-02-13	Subscription Payment
2797	255	29.00	2026-01-14	Subscription Payment
2798	255	29.00	2025-12-15	Subscription Payment
2799	255	29.00	2025-11-15	Subscription Payment
2800	255	29.00	2025-10-16	Subscription Payment
2801	256	29.00	2026-09-11	Subscription Payment
2802	256	29.00	2026-08-12	Subscription Payment
2803	256	29.00	2026-07-13	Subscription Payment
2804	256	29.00	2026-06-13	Subscription Payment
2805	256	29.00	2026-05-14	Subscription Payment
2806	256	29.00	2026-04-14	Subscription Payment
2807	257	29.00	2026-09-11	Subscription Payment
2808	257	29.00	2026-08-12	Subscription Payment
2809	257	29.00	2026-07-13	Subscription Payment
2810	257	29.00	2026-06-13	Subscription Payment
2811	257	29.00	2026-05-14	Subscription Payment
2812	257	29.00	2026-04-14	Subscription Payment
2813	257	29.00	2026-03-15	Subscription Payment
2814	257	29.00	2026-02-13	Subscription Payment
2815	257	29.00	2026-01-14	Subscription Payment
2816	257	29.00	2025-12-15	Subscription Payment
2817	257	29.00	2025-11-15	Subscription Payment
2818	257	29.00	2025-10-16	Subscription Payment
2819	258	59.00	2026-09-11	Subscription Payment
2820	258	59.00	2026-08-12	Subscription Payment
2821	258	59.00	2026-07-13	Subscription Payment
2822	258	59.00	2026-06-13	Subscription Payment
2823	258	59.00	2026-05-14	Subscription Payment
2824	258	59.00	2026-04-14	Subscription Payment
2825	259	99.00	2026-09-11	Subscription Payment
2826	259	99.00	2026-08-12	Subscription Payment
2827	259	99.00	2026-07-13	Subscription Payment
2828	259	99.00	2026-06-13	Subscription Payment
2829	259	99.00	2026-05-14	Subscription Payment
2830	259	99.00	2026-04-14	Subscription Payment
2831	259	99.00	2026-03-15	Subscription Payment
2832	259	99.00	2026-02-13	Subscription Payment
2833	259	99.00	2026-01-14	Subscription Payment
2834	259	99.00	2025-12-15	Subscription Payment
2835	259	99.00	2025-11-15	Subscription Payment
2836	259	99.00	2025-10-16	Subscription Payment
2837	260	99.00	2026-09-11	Subscription Payment
2838	260	99.00	2026-08-12	Subscription Payment
2839	260	99.00	2026-07-13	Subscription Payment
2840	260	99.00	2026-06-13	Subscription Payment
2841	260	99.00	2026-05-14	Subscription Payment
2842	260	99.00	2026-04-14	Subscription Payment
2843	260	99.00	2026-03-15	Subscription Payment
2844	260	99.00	2026-02-13	Subscription Payment
2845	260	99.00	2026-01-14	Subscription Payment
2846	260	99.00	2025-12-15	Subscription Payment
2847	260	99.00	2025-11-15	Subscription Payment
2848	260	99.00	2025-10-16	Subscription Payment
2849	261	59.00	2026-09-11	Subscription Payment
2850	261	59.00	2026-08-12	Subscription Payment
2851	261	59.00	2026-07-13	Subscription Payment
2852	261	59.00	2026-06-13	Subscription Payment
2853	261	59.00	2026-05-14	Subscription Payment
2854	261	59.00	2026-04-14	Subscription Payment
2855	261	59.00	2026-03-15	Subscription Payment
2856	261	59.00	2026-02-13	Subscription Payment
2857	261	59.00	2026-01-14	Subscription Payment
2858	261	59.00	2025-12-15	Subscription Payment
2859	261	59.00	2025-11-15	Subscription Payment
2860	261	59.00	2025-10-16	Subscription Payment
2861	262	99.00	2026-09-11	Subscription Payment
2862	262	99.00	2026-08-12	Subscription Payment
2863	262	99.00	2026-07-13	Subscription Payment
2864	262	99.00	2026-06-13	Subscription Payment
2865	262	99.00	2026-05-14	Subscription Payment
2866	262	99.00	2026-04-14	Subscription Payment
2867	262	99.00	2026-03-15	Subscription Payment
2868	262	99.00	2026-02-13	Subscription Payment
2869	262	99.00	2026-01-14	Subscription Payment
2870	262	99.00	2025-12-15	Subscription Payment
2871	262	99.00	2025-11-15	Subscription Payment
2872	262	99.00	2025-10-16	Subscription Payment
2873	263	99.00	2026-09-11	Subscription Payment
2874	263	99.00	2026-08-12	Subscription Payment
2875	263	99.00	2026-07-13	Subscription Payment
2876	263	99.00	2026-06-13	Subscription Payment
2877	263	99.00	2026-05-14	Subscription Payment
2878	263	99.00	2026-04-14	Subscription Payment
2879	263	99.00	2026-03-15	Subscription Payment
2880	263	99.00	2026-02-13	Subscription Payment
2881	263	99.00	2026-01-14	Subscription Payment
2882	263	99.00	2025-12-15	Subscription Payment
2883	263	99.00	2025-11-15	Subscription Payment
2884	263	99.00	2025-10-16	Subscription Payment
2885	264	29.00	2026-09-11	Subscription Payment
2886	264	29.00	2026-08-12	Subscription Payment
2887	264	29.00	2026-07-13	Subscription Payment
2888	264	29.00	2026-06-13	Subscription Payment
2889	264	29.00	2026-05-14	Subscription Payment
2890	264	29.00	2026-04-14	Subscription Payment
2891	264	29.00	2026-03-15	Subscription Payment
2892	264	29.00	2026-02-13	Subscription Payment
2893	264	29.00	2026-01-14	Subscription Payment
2894	264	29.00	2025-12-15	Subscription Payment
2895	264	29.00	2025-11-15	Subscription Payment
2896	264	29.00	2025-10-16	Subscription Payment
2897	265	29.00	2026-09-11	Subscription Payment
2898	265	29.00	2026-08-12	Subscription Payment
2899	265	29.00	2026-07-13	Subscription Payment
2900	265	29.00	2026-06-13	Subscription Payment
2901	265	29.00	2026-05-14	Subscription Payment
2902	265	29.00	2026-04-14	Subscription Payment
2903	265	29.00	2026-03-15	Subscription Payment
2904	265	29.00	2026-02-13	Subscription Payment
2905	265	29.00	2026-01-14	Subscription Payment
2906	265	29.00	2025-12-15	Subscription Payment
2907	265	29.00	2025-11-15	Subscription Payment
2908	265	29.00	2025-10-16	Subscription Payment
2909	266	29.00	2026-09-11	Subscription Payment
2910	266	29.00	2026-08-12	Subscription Payment
2911	266	29.00	2026-07-13	Subscription Payment
2912	266	29.00	2026-06-13	Subscription Payment
2913	266	29.00	2026-05-14	Subscription Payment
2914	266	29.00	2026-04-14	Subscription Payment
2915	266	29.00	2026-03-15	Subscription Payment
2916	266	29.00	2026-02-13	Subscription Payment
2917	266	29.00	2026-01-14	Subscription Payment
2918	266	29.00	2025-12-15	Subscription Payment
2919	266	29.00	2025-11-15	Subscription Payment
2920	266	29.00	2025-10-16	Subscription Payment
2921	267	29.00	2026-09-11	Subscription Payment
2922	267	29.00	2026-08-12	Subscription Payment
2923	267	29.00	2026-07-13	Subscription Payment
2924	267	29.00	2026-06-13	Subscription Payment
2925	267	29.00	2026-05-14	Subscription Payment
2926	267	29.00	2026-04-14	Subscription Payment
2927	267	29.00	2026-03-15	Subscription Payment
2928	267	29.00	2026-02-13	Subscription Payment
2929	267	29.00	2026-01-14	Subscription Payment
2930	267	29.00	2025-12-15	Subscription Payment
2931	267	29.00	2025-11-15	Subscription Payment
2932	267	29.00	2025-10-16	Subscription Payment
2933	268	99.00	2026-09-11	Subscription Payment
2934	268	99.00	2026-08-12	Subscription Payment
2935	268	99.00	2026-07-13	Subscription Payment
2936	268	99.00	2026-06-13	Subscription Payment
2937	268	99.00	2026-05-14	Subscription Payment
2938	268	99.00	2026-04-14	Subscription Payment
2939	268	99.00	2026-03-15	Subscription Payment
2940	268	99.00	2026-02-13	Subscription Payment
2941	268	99.00	2026-01-14	Subscription Payment
2942	268	99.00	2025-12-15	Subscription Payment
2943	268	99.00	2025-11-15	Subscription Payment
2944	268	99.00	2025-10-16	Subscription Payment
2945	269	29.00	2026-09-11	Subscription Payment
2946	269	29.00	2026-08-12	Subscription Payment
2947	269	29.00	2026-07-13	Subscription Payment
2948	269	29.00	2026-06-13	Subscription Payment
2949	269	29.00	2026-05-14	Subscription Payment
2950	269	29.00	2026-04-14	Subscription Payment
2951	269	29.00	2026-03-15	Subscription Payment
2952	269	29.00	2026-02-13	Subscription Payment
2953	269	29.00	2026-01-14	Subscription Payment
2954	269	29.00	2025-12-15	Subscription Payment
2955	269	29.00	2025-11-15	Subscription Payment
2956	269	29.00	2025-10-16	Subscription Payment
2957	270	99.00	2026-09-11	Subscription Payment
2958	270	99.00	2026-08-12	Subscription Payment
2959	270	99.00	2026-07-13	Subscription Payment
2960	270	99.00	2026-06-13	Subscription Payment
2961	270	99.00	2026-05-14	Subscription Payment
2962	271	59.00	2026-09-11	Subscription Payment
2963	271	59.00	2026-08-12	Subscription Payment
2964	271	59.00	2026-07-13	Subscription Payment
2965	271	59.00	2026-06-13	Subscription Payment
2966	271	59.00	2026-05-14	Subscription Payment
2967	271	59.00	2026-04-14	Subscription Payment
2968	271	59.00	2026-03-15	Subscription Payment
2969	271	59.00	2026-02-13	Subscription Payment
2970	271	59.00	2026-01-14	Subscription Payment
2971	271	59.00	2025-12-15	Subscription Payment
2972	271	59.00	2025-11-15	Subscription Payment
2973	271	59.00	2025-10-16	Subscription Payment
2974	272	29.00	2026-09-11	Subscription Payment
2975	272	29.00	2026-08-12	Subscription Payment
2976	272	29.00	2026-07-13	Subscription Payment
2977	272	29.00	2026-06-13	Subscription Payment
2978	272	29.00	2026-05-14	Subscription Payment
2979	272	29.00	2026-04-14	Subscription Payment
2980	272	29.00	2026-03-15	Subscription Payment
2981	272	29.00	2026-02-13	Subscription Payment
2982	272	29.00	2026-01-14	Subscription Payment
2983	272	29.00	2025-12-15	Subscription Payment
2984	272	29.00	2025-11-15	Subscription Payment
2985	272	29.00	2025-10-16	Subscription Payment
2986	273	29.00	2026-09-11	Subscription Payment
2987	273	29.00	2026-08-12	Subscription Payment
2988	273	29.00	2026-07-13	Subscription Payment
2989	273	29.00	2026-06-13	Subscription Payment
2990	273	29.00	2026-05-14	Subscription Payment
2991	273	29.00	2026-04-14	Subscription Payment
2992	273	29.00	2026-03-15	Subscription Payment
2993	273	29.00	2026-02-13	Subscription Payment
2994	273	29.00	2026-01-14	Subscription Payment
2995	273	29.00	2025-12-15	Subscription Payment
2996	273	29.00	2025-11-15	Subscription Payment
2997	273	29.00	2025-10-16	Subscription Payment
2998	274	29.00	2026-09-11	Subscription Payment
2999	274	29.00	2026-08-12	Subscription Payment
3000	274	29.00	2026-07-13	Subscription Payment
3001	274	29.00	2026-06-13	Subscription Payment
3002	274	29.00	2026-05-14	Subscription Payment
3003	274	29.00	2026-04-14	Subscription Payment
3004	274	29.00	2026-03-15	Subscription Payment
3005	274	29.00	2026-02-13	Subscription Payment
3006	274	29.00	2026-01-14	Subscription Payment
3007	274	29.00	2025-12-15	Subscription Payment
3008	274	29.00	2025-11-15	Subscription Payment
3009	274	29.00	2025-10-16	Subscription Payment
3010	275	99.00	2026-09-11	Subscription Payment
3011	275	99.00	2026-08-12	Subscription Payment
3012	275	99.00	2026-07-13	Subscription Payment
3013	275	99.00	2026-06-13	Subscription Payment
3014	275	99.00	2026-05-14	Subscription Payment
3015	275	99.00	2026-04-14	Subscription Payment
3016	275	99.00	2026-03-15	Subscription Payment
3017	275	99.00	2026-02-13	Subscription Payment
3018	275	99.00	2026-01-14	Subscription Payment
3019	275	99.00	2025-12-15	Subscription Payment
3020	275	99.00	2025-11-15	Subscription Payment
3021	275	99.00	2025-10-16	Subscription Payment
3022	276	99.00	2026-09-11	Subscription Payment
3023	276	99.00	2026-08-12	Subscription Payment
3024	276	99.00	2026-07-13	Subscription Payment
3025	276	99.00	2026-06-13	Subscription Payment
3026	276	99.00	2026-05-14	Subscription Payment
3027	276	99.00	2026-04-14	Subscription Payment
3028	276	99.00	2026-03-15	Subscription Payment
3029	276	99.00	2026-02-13	Subscription Payment
3030	276	99.00	2026-01-14	Subscription Payment
3031	276	99.00	2025-12-15	Subscription Payment
3032	276	99.00	2025-11-15	Subscription Payment
3033	276	99.00	2025-10-16	Subscription Payment
3034	277	29.00	2026-09-11	Subscription Payment
3035	277	29.00	2026-08-12	Subscription Payment
3036	277	29.00	2026-07-13	Subscription Payment
3037	277	29.00	2026-06-13	Subscription Payment
3038	277	29.00	2026-05-14	Subscription Payment
3039	277	29.00	2026-04-14	Subscription Payment
3040	277	29.00	2026-03-15	Subscription Payment
3041	277	29.00	2026-02-13	Subscription Payment
3042	277	29.00	2026-01-14	Subscription Payment
3043	277	29.00	2025-12-15	Subscription Payment
3044	277	29.00	2025-11-15	Subscription Payment
3045	277	29.00	2025-10-16	Subscription Payment
3046	278	29.00	2026-09-11	Subscription Payment
3047	278	29.00	2026-08-12	Subscription Payment
3048	278	29.00	2026-07-13	Subscription Payment
3049	278	29.00	2026-06-13	Subscription Payment
3050	278	29.00	2026-05-14	Subscription Payment
3051	278	29.00	2026-04-14	Subscription Payment
3052	278	29.00	2026-03-15	Subscription Payment
3053	278	29.00	2026-02-13	Subscription Payment
3054	278	29.00	2026-01-14	Subscription Payment
3055	278	29.00	2025-12-15	Subscription Payment
3056	278	29.00	2025-11-15	Subscription Payment
3057	278	29.00	2025-10-16	Subscription Payment
3058	279	59.00	2026-09-11	Subscription Payment
3059	279	59.00	2026-08-12	Subscription Payment
3060	279	59.00	2026-07-13	Subscription Payment
3061	279	59.00	2026-06-13	Subscription Payment
3062	279	59.00	2026-05-14	Subscription Payment
3063	279	59.00	2026-04-14	Subscription Payment
3064	280	99.00	2026-09-11	Subscription Payment
3065	280	99.00	2026-08-12	Subscription Payment
3066	280	99.00	2026-07-13	Subscription Payment
3067	280	99.00	2026-06-13	Subscription Payment
3068	280	99.00	2026-05-14	Subscription Payment
3069	280	99.00	2026-04-14	Subscription Payment
3070	280	99.00	2026-03-15	Subscription Payment
3071	280	99.00	2026-02-13	Subscription Payment
3072	280	99.00	2026-01-14	Subscription Payment
3073	280	99.00	2025-12-15	Subscription Payment
3074	280	99.00	2025-11-15	Subscription Payment
3075	280	99.00	2025-10-16	Subscription Payment
3076	281	29.00	2026-09-11	Subscription Payment
3077	281	29.00	2026-08-12	Subscription Payment
3078	281	29.00	2026-07-13	Subscription Payment
3079	281	29.00	2026-06-13	Subscription Payment
3080	281	29.00	2026-05-14	Subscription Payment
3081	281	29.00	2026-04-14	Subscription Payment
3082	281	29.00	2026-03-15	Subscription Payment
3083	281	29.00	2026-02-13	Subscription Payment
3084	281	29.00	2026-01-14	Subscription Payment
3085	281	29.00	2025-12-15	Subscription Payment
3086	281	29.00	2025-11-15	Subscription Payment
3087	281	29.00	2025-10-16	Subscription Payment
3088	282	99.00	2026-09-11	Subscription Payment
3089	282	99.00	2026-08-12	Subscription Payment
3090	282	99.00	2026-07-13	Subscription Payment
3091	282	99.00	2026-06-13	Subscription Payment
3092	282	99.00	2026-05-14	Subscription Payment
3093	282	99.00	2026-04-14	Subscription Payment
3094	282	99.00	2026-03-15	Subscription Payment
3095	282	99.00	2026-02-13	Subscription Payment
3096	282	99.00	2026-01-14	Subscription Payment
3097	282	99.00	2025-12-15	Subscription Payment
3098	282	99.00	2025-11-15	Subscription Payment
3099	282	99.00	2025-10-16	Subscription Payment
3100	283	29.00	2026-09-11	Subscription Payment
3101	283	29.00	2026-08-12	Subscription Payment
3102	283	29.00	2026-07-13	Subscription Payment
3103	283	29.00	2026-06-13	Subscription Payment
3104	283	29.00	2026-05-14	Subscription Payment
3105	283	29.00	2026-04-14	Subscription Payment
3106	283	29.00	2026-03-15	Subscription Payment
3107	283	29.00	2026-02-13	Subscription Payment
3108	283	29.00	2026-01-14	Subscription Payment
3109	283	29.00	2025-12-15	Subscription Payment
3110	283	29.00	2025-11-15	Subscription Payment
3111	283	29.00	2025-10-16	Subscription Payment
3112	284	29.00	2026-09-11	Subscription Payment
3113	284	29.00	2026-08-12	Subscription Payment
3114	284	29.00	2026-07-13	Subscription Payment
3115	284	29.00	2026-06-13	Subscription Payment
3116	284	29.00	2026-05-14	Subscription Payment
3117	284	29.00	2026-04-14	Subscription Payment
3118	284	29.00	2026-03-15	Subscription Payment
3119	284	29.00	2026-02-13	Subscription Payment
3120	284	29.00	2026-01-14	Subscription Payment
3121	284	29.00	2025-12-15	Subscription Payment
3122	284	29.00	2025-11-15	Subscription Payment
3123	284	29.00	2025-10-16	Subscription Payment
3124	285	99.00	2026-09-11	Subscription Payment
3125	285	99.00	2026-08-12	Subscription Payment
3126	285	99.00	2026-07-13	Subscription Payment
3127	285	99.00	2026-06-13	Subscription Payment
3128	285	99.00	2026-05-14	Subscription Payment
3129	285	99.00	2026-04-14	Subscription Payment
3130	285	99.00	2026-03-15	Subscription Payment
3131	285	99.00	2026-02-13	Subscription Payment
3132	285	99.00	2026-01-14	Subscription Payment
3133	285	99.00	2025-12-15	Subscription Payment
3134	285	99.00	2025-11-15	Subscription Payment
3135	285	99.00	2025-10-16	Subscription Payment
3136	286	29.00	2026-09-11	Subscription Payment
3137	286	29.00	2026-08-12	Subscription Payment
3138	286	29.00	2026-07-13	Subscription Payment
3139	286	29.00	2026-06-13	Subscription Payment
3140	286	29.00	2026-05-14	Subscription Payment
3141	286	29.00	2026-04-14	Subscription Payment
3142	286	29.00	2026-03-15	Subscription Payment
3143	286	29.00	2026-02-13	Subscription Payment
3144	286	29.00	2026-01-14	Subscription Payment
3145	286	29.00	2025-12-15	Subscription Payment
3146	286	29.00	2025-11-15	Subscription Payment
3147	286	29.00	2025-10-16	Subscription Payment
3148	287	29.00	2026-09-11	Subscription Payment
3149	287	29.00	2026-08-12	Subscription Payment
3150	287	29.00	2026-07-13	Subscription Payment
3151	287	29.00	2026-06-13	Subscription Payment
3152	287	29.00	2026-05-14	Subscription Payment
3153	287	29.00	2026-04-14	Subscription Payment
3154	287	29.00	2026-03-15	Subscription Payment
3155	287	29.00	2026-02-13	Subscription Payment
3156	287	29.00	2026-01-14	Subscription Payment
3157	287	29.00	2025-12-15	Subscription Payment
3158	287	29.00	2025-11-15	Subscription Payment
3159	287	29.00	2025-10-16	Subscription Payment
3160	288	29.00	2026-09-11	Subscription Payment
3161	288	29.00	2026-08-12	Subscription Payment
3162	288	29.00	2026-07-13	Subscription Payment
3163	288	29.00	2026-06-13	Subscription Payment
3164	288	29.00	2026-05-14	Subscription Payment
3165	288	29.00	2026-04-14	Subscription Payment
3166	288	29.00	2026-03-15	Subscription Payment
3167	288	29.00	2026-02-13	Subscription Payment
3168	288	29.00	2026-01-14	Subscription Payment
3169	288	29.00	2025-12-15	Subscription Payment
3170	288	29.00	2025-11-15	Subscription Payment
3171	288	29.00	2025-10-16	Subscription Payment
3172	289	29.00	2026-09-11	Subscription Payment
3173	289	29.00	2026-08-12	Subscription Payment
3174	289	29.00	2026-07-13	Subscription Payment
3175	289	29.00	2026-06-13	Subscription Payment
3176	289	29.00	2026-05-14	Subscription Payment
3177	289	29.00	2026-04-14	Subscription Payment
3178	289	29.00	2026-03-15	Subscription Payment
3179	289	29.00	2026-02-13	Subscription Payment
3180	289	29.00	2026-01-14	Subscription Payment
3181	290	59.00	2026-09-11	Subscription Payment
3182	290	59.00	2026-08-12	Subscription Payment
3183	290	59.00	2026-07-13	Subscription Payment
3184	290	59.00	2026-06-13	Subscription Payment
3185	290	59.00	2026-05-14	Subscription Payment
3186	290	59.00	2026-04-14	Subscription Payment
3187	290	59.00	2026-03-15	Subscription Payment
3188	290	59.00	2026-02-13	Subscription Payment
3189	290	59.00	2026-01-14	Subscription Payment
3190	290	59.00	2025-12-15	Subscription Payment
3191	290	59.00	2025-11-15	Subscription Payment
3192	290	59.00	2025-10-16	Subscription Payment
3193	291	99.00	2026-09-11	Subscription Payment
3194	291	99.00	2026-08-12	Subscription Payment
3195	291	99.00	2026-07-13	Subscription Payment
3196	291	99.00	2026-06-13	Subscription Payment
3197	291	99.00	2026-05-14	Subscription Payment
3198	291	99.00	2026-04-14	Subscription Payment
3199	291	99.00	2026-03-15	Subscription Payment
3200	291	99.00	2026-02-13	Subscription Payment
3201	292	59.00	2026-09-11	Subscription Payment
3202	292	59.00	2026-08-12	Subscription Payment
3203	292	59.00	2026-07-13	Subscription Payment
3204	292	59.00	2026-06-13	Subscription Payment
3205	292	59.00	2026-05-14	Subscription Payment
3206	292	59.00	2026-04-14	Subscription Payment
3207	292	59.00	2026-03-15	Subscription Payment
3208	292	59.00	2026-02-13	Subscription Payment
3209	292	59.00	2026-01-14	Subscription Payment
3210	292	59.00	2025-12-15	Subscription Payment
3211	292	59.00	2025-11-15	Subscription Payment
3212	292	59.00	2025-10-16	Subscription Payment
3213	293	99.00	2026-09-11	Subscription Payment
3214	293	99.00	2026-08-12	Subscription Payment
3215	293	99.00	2026-07-13	Subscription Payment
3216	293	99.00	2026-06-13	Subscription Payment
3217	293	99.00	2026-05-14	Subscription Payment
3218	293	99.00	2026-04-14	Subscription Payment
3219	293	99.00	2026-03-15	Subscription Payment
3220	293	99.00	2026-02-13	Subscription Payment
3221	293	99.00	2026-01-14	Subscription Payment
3222	293	99.00	2025-12-15	Subscription Payment
3223	293	99.00	2025-11-15	Subscription Payment
3224	293	99.00	2025-10-16	Subscription Payment
3225	294	59.00	2026-09-11	Subscription Payment
3226	294	59.00	2026-08-12	Subscription Payment
3227	294	59.00	2026-07-13	Subscription Payment
3228	294	59.00	2026-06-13	Subscription Payment
3229	294	59.00	2026-05-14	Subscription Payment
3230	294	59.00	2026-04-14	Subscription Payment
3231	294	59.00	2026-03-15	Subscription Payment
3232	294	59.00	2026-02-13	Subscription Payment
3233	294	59.00	2026-01-14	Subscription Payment
3234	294	59.00	2025-12-15	Subscription Payment
3235	294	59.00	2025-11-15	Subscription Payment
3236	294	59.00	2025-10-16	Subscription Payment
3237	295	29.00	2026-09-11	Subscription Payment
3238	295	29.00	2026-08-12	Subscription Payment
3239	295	29.00	2026-07-13	Subscription Payment
3240	295	29.00	2026-06-13	Subscription Payment
3241	295	29.00	2026-05-14	Subscription Payment
3242	295	29.00	2026-04-14	Subscription Payment
3243	296	29.00	2026-09-11	Subscription Payment
3244	296	29.00	2026-08-12	Subscription Payment
3245	296	29.00	2026-07-13	Subscription Payment
3246	296	29.00	2026-06-13	Subscription Payment
3247	296	29.00	2026-05-14	Subscription Payment
3248	296	29.00	2026-04-14	Subscription Payment
3249	296	29.00	2026-03-15	Subscription Payment
3250	296	29.00	2026-02-13	Subscription Payment
3251	296	29.00	2026-01-14	Subscription Payment
3252	296	29.00	2025-12-15	Subscription Payment
3253	296	29.00	2025-11-15	Subscription Payment
3254	296	29.00	2025-10-16	Subscription Payment
3255	297	29.00	2026-09-11	Subscription Payment
3256	297	29.00	2026-08-12	Subscription Payment
3257	297	29.00	2026-07-13	Subscription Payment
3258	297	29.00	2026-06-13	Subscription Payment
3259	297	29.00	2026-05-14	Subscription Payment
3260	297	29.00	2026-04-14	Subscription Payment
3261	297	29.00	2026-03-15	Subscription Payment
3262	298	29.00	2026-09-11	Subscription Payment
3263	298	29.00	2026-08-12	Subscription Payment
3264	298	29.00	2026-07-13	Subscription Payment
3265	298	29.00	2026-06-13	Subscription Payment
3266	298	29.00	2026-05-14	Subscription Payment
3267	298	29.00	2026-04-14	Subscription Payment
3268	298	29.00	2026-03-15	Subscription Payment
3269	298	29.00	2026-02-13	Subscription Payment
3270	298	29.00	2026-01-14	Subscription Payment
3271	298	29.00	2025-12-15	Subscription Payment
3272	298	29.00	2025-11-15	Subscription Payment
3273	298	29.00	2025-10-16	Subscription Payment
3274	299	99.00	2026-09-11	Subscription Payment
3275	299	99.00	2026-08-12	Subscription Payment
3276	299	99.00	2026-07-13	Subscription Payment
3277	299	99.00	2026-06-13	Subscription Payment
3278	299	99.00	2026-05-14	Subscription Payment
3279	299	99.00	2026-04-14	Subscription Payment
3280	299	99.00	2026-03-15	Subscription Payment
3281	299	99.00	2026-02-13	Subscription Payment
3282	299	99.00	2026-01-14	Subscription Payment
3283	299	99.00	2025-12-15	Subscription Payment
3284	299	99.00	2025-11-15	Subscription Payment
3285	299	99.00	2025-10-16	Subscription Payment
3286	300	99.00	2026-09-11	Subscription Payment
3287	300	99.00	2026-08-12	Subscription Payment
3288	300	99.00	2026-07-13	Subscription Payment
3289	300	99.00	2026-06-13	Subscription Payment
3290	300	99.00	2026-05-14	Subscription Payment
3291	300	99.00	2026-04-14	Subscription Payment
3292	300	99.00	2026-03-15	Subscription Payment
3293	300	99.00	2026-02-13	Subscription Payment
3294	300	99.00	2026-01-14	Subscription Payment
3295	300	99.00	2025-12-15	Subscription Payment
3296	300	99.00	2025-11-15	Subscription Payment
3297	300	99.00	2025-10-16	Subscription Payment
3298	301	59.00	2026-09-11	Subscription Payment
3299	301	59.00	2026-08-12	Subscription Payment
3300	301	59.00	2026-07-13	Subscription Payment
3301	301	59.00	2026-06-13	Subscription Payment
3302	301	59.00	2026-05-14	Subscription Payment
3303	301	59.00	2026-04-14	Subscription Payment
3304	301	59.00	2026-03-15	Subscription Payment
3305	301	59.00	2026-02-13	Subscription Payment
3306	301	59.00	2026-01-14	Subscription Payment
3307	301	59.00	2025-12-15	Subscription Payment
3308	301	59.00	2025-11-15	Subscription Payment
3309	302	59.00	2026-09-11	Subscription Payment
3310	302	59.00	2026-08-12	Subscription Payment
3311	302	59.00	2026-07-13	Subscription Payment
3312	302	59.00	2026-06-13	Subscription Payment
3313	302	59.00	2026-05-14	Subscription Payment
3314	302	59.00	2026-04-14	Subscription Payment
3315	302	59.00	2026-03-15	Subscription Payment
3316	302	59.00	2026-02-13	Subscription Payment
3317	302	59.00	2026-01-14	Subscription Payment
3318	302	59.00	2025-12-15	Subscription Payment
3319	302	59.00	2025-11-15	Subscription Payment
3320	302	59.00	2025-10-16	Subscription Payment
3321	303	59.00	2026-09-11	Subscription Payment
3322	303	59.00	2026-08-12	Subscription Payment
3323	303	59.00	2026-07-13	Subscription Payment
3324	303	59.00	2026-06-13	Subscription Payment
3325	303	59.00	2026-05-14	Subscription Payment
3326	303	59.00	2026-04-14	Subscription Payment
3327	303	59.00	2026-03-15	Subscription Payment
3328	303	59.00	2026-02-13	Subscription Payment
3329	303	59.00	2026-01-14	Subscription Payment
3330	303	59.00	2025-12-15	Subscription Payment
3331	303	59.00	2025-11-15	Subscription Payment
3332	303	59.00	2025-10-16	Subscription Payment
3333	304	59.00	2026-09-11	Subscription Payment
3334	304	59.00	2026-08-12	Subscription Payment
3335	304	59.00	2026-07-13	Subscription Payment
3336	304	59.00	2026-06-13	Subscription Payment
3337	304	59.00	2026-05-14	Subscription Payment
3338	304	59.00	2026-04-14	Subscription Payment
3339	304	59.00	2026-03-15	Subscription Payment
3340	304	59.00	2026-02-13	Subscription Payment
3341	304	59.00	2026-01-14	Subscription Payment
3342	304	59.00	2025-12-15	Subscription Payment
3343	304	59.00	2025-11-15	Subscription Payment
3344	304	59.00	2025-10-16	Subscription Payment
3345	305	59.00	2026-09-11	Subscription Payment
3346	305	59.00	2026-08-12	Subscription Payment
3347	305	59.00	2026-07-13	Subscription Payment
3348	305	59.00	2026-06-13	Subscription Payment
3349	305	59.00	2026-05-14	Subscription Payment
3350	305	59.00	2026-04-14	Subscription Payment
3351	305	59.00	2026-03-15	Subscription Payment
3352	305	59.00	2026-02-13	Subscription Payment
3353	305	59.00	2026-01-14	Subscription Payment
3354	305	59.00	2025-12-15	Subscription Payment
3355	305	59.00	2025-11-15	Subscription Payment
3356	306	99.00	2026-09-11	Subscription Payment
3357	306	99.00	2026-08-12	Subscription Payment
3358	306	99.00	2026-07-13	Subscription Payment
3359	306	99.00	2026-06-13	Subscription Payment
3360	306	99.00	2026-05-14	Subscription Payment
3361	306	99.00	2026-04-14	Subscription Payment
3362	306	99.00	2026-03-15	Subscription Payment
3363	307	29.00	2026-09-11	Subscription Payment
3364	307	29.00	2026-08-12	Subscription Payment
3365	307	29.00	2026-07-13	Subscription Payment
3366	307	29.00	2026-06-13	Subscription Payment
3367	307	29.00	2026-05-14	Subscription Payment
3368	307	29.00	2026-04-14	Subscription Payment
3369	307	29.00	2026-03-15	Subscription Payment
3370	307	29.00	2026-02-13	Subscription Payment
3371	307	29.00	2026-01-14	Subscription Payment
3372	307	29.00	2025-12-15	Subscription Payment
3373	307	29.00	2025-11-15	Subscription Payment
3374	307	29.00	2025-10-16	Subscription Payment
3375	308	29.00	2026-09-11	Subscription Payment
3376	308	29.00	2026-08-12	Subscription Payment
3377	308	29.00	2026-07-13	Subscription Payment
3378	308	29.00	2026-06-13	Subscription Payment
3379	309	29.00	2026-09-11	Subscription Payment
3380	309	29.00	2026-08-12	Subscription Payment
3381	309	29.00	2026-07-13	Subscription Payment
3382	309	29.00	2026-06-13	Subscription Payment
3383	309	29.00	2026-05-14	Subscription Payment
3384	309	29.00	2026-04-14	Subscription Payment
3385	309	29.00	2026-03-15	Subscription Payment
3386	309	29.00	2026-02-13	Subscription Payment
3387	309	29.00	2026-01-14	Subscription Payment
3388	309	29.00	2025-12-15	Subscription Payment
3389	309	29.00	2025-11-15	Subscription Payment
3390	309	29.00	2025-10-16	Subscription Payment
3391	310	59.00	2026-09-11	Subscription Payment
3392	310	59.00	2026-08-12	Subscription Payment
3393	310	59.00	2026-07-13	Subscription Payment
3394	310	59.00	2026-06-13	Subscription Payment
3395	310	59.00	2026-05-14	Subscription Payment
3396	310	59.00	2026-04-14	Subscription Payment
3397	310	59.00	2026-03-15	Subscription Payment
3398	310	59.00	2026-02-13	Subscription Payment
3399	310	59.00	2026-01-14	Subscription Payment
3400	310	59.00	2025-12-15	Subscription Payment
3401	310	59.00	2025-11-15	Subscription Payment
3402	310	59.00	2025-10-16	Subscription Payment
3403	311	99.00	2026-09-11	Subscription Payment
3404	311	99.00	2026-08-12	Subscription Payment
3405	311	99.00	2026-07-13	Subscription Payment
3406	311	99.00	2026-06-13	Subscription Payment
3407	311	99.00	2026-05-14	Subscription Payment
3408	311	99.00	2026-04-14	Subscription Payment
3409	311	99.00	2026-03-15	Subscription Payment
3410	311	99.00	2026-02-13	Subscription Payment
3411	311	99.00	2026-01-14	Subscription Payment
3412	311	99.00	2025-12-15	Subscription Payment
3413	311	99.00	2025-11-15	Subscription Payment
3414	311	99.00	2025-10-16	Subscription Payment
3415	312	99.00	2026-09-11	Subscription Payment
3416	312	99.00	2026-08-12	Subscription Payment
3417	312	99.00	2026-07-13	Subscription Payment
3418	312	99.00	2026-06-13	Subscription Payment
3419	312	99.00	2026-05-14	Subscription Payment
3420	312	99.00	2026-04-14	Subscription Payment
3421	312	99.00	2026-03-15	Subscription Payment
3422	312	99.00	2026-02-13	Subscription Payment
3423	312	99.00	2026-01-14	Subscription Payment
3424	312	99.00	2025-12-15	Subscription Payment
3425	312	99.00	2025-11-15	Subscription Payment
3426	312	99.00	2025-10-16	Subscription Payment
3427	313	59.00	2026-09-11	Subscription Payment
3428	313	59.00	2026-08-12	Subscription Payment
3429	313	59.00	2026-07-13	Subscription Payment
3430	313	59.00	2026-06-13	Subscription Payment
3431	313	59.00	2026-05-14	Subscription Payment
3432	313	59.00	2026-04-14	Subscription Payment
3433	313	59.00	2026-03-15	Subscription Payment
3434	313	59.00	2026-02-13	Subscription Payment
3435	313	59.00	2026-01-14	Subscription Payment
3436	313	59.00	2025-12-15	Subscription Payment
3437	313	59.00	2025-11-15	Subscription Payment
3438	313	59.00	2025-10-16	Subscription Payment
3439	314	99.00	2026-09-11	Subscription Payment
3440	314	99.00	2026-08-12	Subscription Payment
3441	314	99.00	2026-07-13	Subscription Payment
3442	314	99.00	2026-06-13	Subscription Payment
3443	314	99.00	2026-05-14	Subscription Payment
3444	314	99.00	2026-04-14	Subscription Payment
3445	314	99.00	2026-03-15	Subscription Payment
3446	314	99.00	2026-02-13	Subscription Payment
3447	314	99.00	2026-01-14	Subscription Payment
3448	314	99.00	2025-12-15	Subscription Payment
3449	314	99.00	2025-11-15	Subscription Payment
3450	314	99.00	2025-10-16	Subscription Payment
3451	315	99.00	2026-09-11	Subscription Payment
3452	315	99.00	2026-08-12	Subscription Payment
3453	315	99.00	2026-07-13	Subscription Payment
3454	315	99.00	2026-06-13	Subscription Payment
3455	315	99.00	2026-05-14	Subscription Payment
3456	315	99.00	2026-04-14	Subscription Payment
3457	315	99.00	2026-03-15	Subscription Payment
3458	315	99.00	2026-02-13	Subscription Payment
3459	315	99.00	2026-01-14	Subscription Payment
3460	315	99.00	2025-12-15	Subscription Payment
3461	315	99.00	2025-11-15	Subscription Payment
3462	315	99.00	2025-10-16	Subscription Payment
3463	316	29.00	2026-09-11	Subscription Payment
3464	316	29.00	2026-08-12	Subscription Payment
3465	316	29.00	2026-07-13	Subscription Payment
3466	316	29.00	2026-06-13	Subscription Payment
3467	316	29.00	2026-05-14	Subscription Payment
3468	316	29.00	2026-04-14	Subscription Payment
3469	316	29.00	2026-03-15	Subscription Payment
3470	316	29.00	2026-02-13	Subscription Payment
3471	316	29.00	2026-01-14	Subscription Payment
3472	316	29.00	2025-12-15	Subscription Payment
3473	316	29.00	2025-11-15	Subscription Payment
3474	316	29.00	2025-10-16	Subscription Payment
3475	317	99.00	2026-09-11	Subscription Payment
3476	317	99.00	2026-08-12	Subscription Payment
3477	317	99.00	2026-07-13	Subscription Payment
3478	317	99.00	2026-06-13	Subscription Payment
3479	317	99.00	2026-05-14	Subscription Payment
3480	317	99.00	2026-04-14	Subscription Payment
3481	317	99.00	2026-03-15	Subscription Payment
3482	318	29.00	2026-09-11	Subscription Payment
3483	318	29.00	2026-08-12	Subscription Payment
3484	318	29.00	2026-07-13	Subscription Payment
3485	318	29.00	2026-06-13	Subscription Payment
3486	318	29.00	2026-05-14	Subscription Payment
3487	318	29.00	2026-04-14	Subscription Payment
3488	318	29.00	2026-03-15	Subscription Payment
3489	318	29.00	2026-02-13	Subscription Payment
3490	318	29.00	2026-01-14	Subscription Payment
3491	318	29.00	2025-12-15	Subscription Payment
3492	318	29.00	2025-11-15	Subscription Payment
3493	318	29.00	2025-10-16	Subscription Payment
3494	319	59.00	2026-09-11	Subscription Payment
3495	319	59.00	2026-08-12	Subscription Payment
3496	319	59.00	2026-07-13	Subscription Payment
3497	319	59.00	2026-06-13	Subscription Payment
3498	319	59.00	2026-05-14	Subscription Payment
3499	319	59.00	2026-04-14	Subscription Payment
3500	319	59.00	2026-03-15	Subscription Payment
3501	319	59.00	2026-02-13	Subscription Payment
3502	319	59.00	2026-01-14	Subscription Payment
3503	319	59.00	2025-12-15	Subscription Payment
3504	319	59.00	2025-11-15	Subscription Payment
3505	319	59.00	2025-10-16	Subscription Payment
3506	320	29.00	2026-09-11	Subscription Payment
3507	320	29.00	2026-08-12	Subscription Payment
3508	320	29.00	2026-07-13	Subscription Payment
3509	320	29.00	2026-06-13	Subscription Payment
3510	320	29.00	2026-05-14	Subscription Payment
3511	320	29.00	2026-04-14	Subscription Payment
3512	320	29.00	2026-03-15	Subscription Payment
3513	320	29.00	2026-02-13	Subscription Payment
3514	320	29.00	2026-01-14	Subscription Payment
3515	320	29.00	2025-12-15	Subscription Payment
3516	320	29.00	2025-11-15	Subscription Payment
3517	320	29.00	2025-10-16	Subscription Payment
3518	321	59.00	2026-09-11	Subscription Payment
3519	321	59.00	2026-08-12	Subscription Payment
3520	321	59.00	2026-07-13	Subscription Payment
3521	321	59.00	2026-06-13	Subscription Payment
3522	321	59.00	2026-05-14	Subscription Payment
3523	321	59.00	2026-04-14	Subscription Payment
3524	321	59.00	2026-03-15	Subscription Payment
3525	321	59.00	2026-02-13	Subscription Payment
3526	321	59.00	2026-01-14	Subscription Payment
3527	321	59.00	2025-12-15	Subscription Payment
3528	321	59.00	2025-11-15	Subscription Payment
3529	321	59.00	2025-10-16	Subscription Payment
3530	322	29.00	2026-09-11	Subscription Payment
3531	322	29.00	2026-08-12	Subscription Payment
3532	322	29.00	2026-07-13	Subscription Payment
3533	322	29.00	2026-06-13	Subscription Payment
3534	322	29.00	2026-05-14	Subscription Payment
3535	322	29.00	2026-04-14	Subscription Payment
3536	322	29.00	2026-03-15	Subscription Payment
3537	322	29.00	2026-02-13	Subscription Payment
3538	322	29.00	2026-01-14	Subscription Payment
3539	322	29.00	2025-12-15	Subscription Payment
3540	322	29.00	2025-11-15	Subscription Payment
3541	322	29.00	2025-10-16	Subscription Payment
3542	323	99.00	2026-09-11	Subscription Payment
3543	323	99.00	2026-08-12	Subscription Payment
3544	323	99.00	2026-07-13	Subscription Payment
3545	323	99.00	2026-06-13	Subscription Payment
3546	323	99.00	2026-05-14	Subscription Payment
3547	323	99.00	2026-04-14	Subscription Payment
3548	323	99.00	2026-03-15	Subscription Payment
3549	323	99.00	2026-02-13	Subscription Payment
3550	323	99.00	2026-01-14	Subscription Payment
3551	323	99.00	2025-12-15	Subscription Payment
3552	323	99.00	2025-11-15	Subscription Payment
3553	323	99.00	2025-10-16	Subscription Payment
3554	324	29.00	2026-09-11	Subscription Payment
3555	324	29.00	2026-08-12	Subscription Payment
3556	324	29.00	2026-07-13	Subscription Payment
3557	324	29.00	2026-06-13	Subscription Payment
3558	324	29.00	2026-05-14	Subscription Payment
3559	324	29.00	2026-04-14	Subscription Payment
3560	324	29.00	2026-03-15	Subscription Payment
3561	324	29.00	2026-02-13	Subscription Payment
3562	324	29.00	2026-01-14	Subscription Payment
3563	324	29.00	2025-12-15	Subscription Payment
3564	324	29.00	2025-11-15	Subscription Payment
3565	324	29.00	2025-10-16	Subscription Payment
3566	325	59.00	2026-09-11	Subscription Payment
3567	325	59.00	2026-08-12	Subscription Payment
3568	325	59.00	2026-07-13	Subscription Payment
3569	325	59.00	2026-06-13	Subscription Payment
3570	325	59.00	2026-05-14	Subscription Payment
3571	325	59.00	2026-04-14	Subscription Payment
3572	325	59.00	2026-03-15	Subscription Payment
3573	325	59.00	2026-02-13	Subscription Payment
3574	325	59.00	2026-01-14	Subscription Payment
3575	325	59.00	2025-12-15	Subscription Payment
3576	325	59.00	2025-11-15	Subscription Payment
3577	325	59.00	2025-10-16	Subscription Payment
3578	326	59.00	2026-09-11	Subscription Payment
3579	326	59.00	2026-08-12	Subscription Payment
3580	326	59.00	2026-07-13	Subscription Payment
3581	326	59.00	2026-06-13	Subscription Payment
3582	326	59.00	2026-05-14	Subscription Payment
3583	326	59.00	2026-04-14	Subscription Payment
3584	326	59.00	2026-03-15	Subscription Payment
3585	326	59.00	2026-02-13	Subscription Payment
3586	326	59.00	2026-01-14	Subscription Payment
3587	326	59.00	2025-12-15	Subscription Payment
3588	326	59.00	2025-11-15	Subscription Payment
3589	326	59.00	2025-10-16	Subscription Payment
3590	327	29.00	2026-09-11	Subscription Payment
3591	327	29.00	2026-08-12	Subscription Payment
3592	327	29.00	2026-07-13	Subscription Payment
3593	327	29.00	2026-06-13	Subscription Payment
3594	327	29.00	2026-05-14	Subscription Payment
3595	327	29.00	2026-04-14	Subscription Payment
3596	327	29.00	2026-03-15	Subscription Payment
3597	327	29.00	2026-02-13	Subscription Payment
3598	327	29.00	2026-01-14	Subscription Payment
3599	327	29.00	2025-12-15	Subscription Payment
3600	327	29.00	2025-11-15	Subscription Payment
3601	327	29.00	2025-10-16	Subscription Payment
3602	328	59.00	2026-09-11	Subscription Payment
3603	328	59.00	2026-08-12	Subscription Payment
3604	328	59.00	2026-07-13	Subscription Payment
3605	329	29.00	2026-09-11	Subscription Payment
3606	329	29.00	2026-08-12	Subscription Payment
3607	329	29.00	2026-07-13	Subscription Payment
3608	329	29.00	2026-06-13	Subscription Payment
3609	329	29.00	2026-05-14	Subscription Payment
3610	329	29.00	2026-04-14	Subscription Payment
3611	329	29.00	2026-03-15	Subscription Payment
3612	329	29.00	2026-02-13	Subscription Payment
3613	329	29.00	2026-01-14	Subscription Payment
3614	329	29.00	2025-12-15	Subscription Payment
3615	329	29.00	2025-11-15	Subscription Payment
3616	329	29.00	2025-10-16	Subscription Payment
3617	330	29.00	2026-09-11	Subscription Payment
3618	330	29.00	2026-08-12	Subscription Payment
3619	330	29.00	2026-07-13	Subscription Payment
3620	330	29.00	2026-06-13	Subscription Payment
3621	330	29.00	2026-05-14	Subscription Payment
3622	330	29.00	2026-04-14	Subscription Payment
3623	330	29.00	2026-03-15	Subscription Payment
3624	330	29.00	2026-02-13	Subscription Payment
3625	330	29.00	2026-01-14	Subscription Payment
3626	330	29.00	2025-12-15	Subscription Payment
3627	330	29.00	2025-11-15	Subscription Payment
3628	330	29.00	2025-10-16	Subscription Payment
3629	331	29.00	2026-09-11	Subscription Payment
3630	331	29.00	2026-08-12	Subscription Payment
3631	331	29.00	2026-07-13	Subscription Payment
3632	331	29.00	2026-06-13	Subscription Payment
3633	331	29.00	2026-05-14	Subscription Payment
3634	331	29.00	2026-04-14	Subscription Payment
3635	331	29.00	2026-03-15	Subscription Payment
3636	331	29.00	2026-02-13	Subscription Payment
3637	331	29.00	2026-01-14	Subscription Payment
3638	331	29.00	2025-12-15	Subscription Payment
3639	331	29.00	2025-11-15	Subscription Payment
3640	331	29.00	2025-10-16	Subscription Payment
3641	332	29.00	2026-09-11	Subscription Payment
3642	332	29.00	2026-08-12	Subscription Payment
3643	332	29.00	2026-07-13	Subscription Payment
3644	332	29.00	2026-06-13	Subscription Payment
3645	332	29.00	2026-05-14	Subscription Payment
3646	332	29.00	2026-04-14	Subscription Payment
3647	332	29.00	2026-03-15	Subscription Payment
3648	332	29.00	2026-02-13	Subscription Payment
3649	332	29.00	2026-01-14	Subscription Payment
3650	332	29.00	2025-12-15	Subscription Payment
3651	332	29.00	2025-11-15	Subscription Payment
3652	332	29.00	2025-10-16	Subscription Payment
3653	333	29.00	2026-09-11	Subscription Payment
3654	333	29.00	2026-08-12	Subscription Payment
3655	333	29.00	2026-07-13	Subscription Payment
3656	333	29.00	2026-06-13	Subscription Payment
3657	333	29.00	2026-05-14	Subscription Payment
3658	333	29.00	2026-04-14	Subscription Payment
3659	333	29.00	2026-03-15	Subscription Payment
3660	333	29.00	2026-02-13	Subscription Payment
3661	333	29.00	2026-01-14	Subscription Payment
3662	333	29.00	2025-12-15	Subscription Payment
3663	333	29.00	2025-11-15	Subscription Payment
3664	333	29.00	2025-10-16	Subscription Payment
3665	334	59.00	2026-09-11	Subscription Payment
3666	334	59.00	2026-08-12	Subscription Payment
3667	334	59.00	2026-07-13	Subscription Payment
3668	334	59.00	2026-06-13	Subscription Payment
3669	334	59.00	2026-05-14	Subscription Payment
3670	334	59.00	2026-04-14	Subscription Payment
3671	334	59.00	2026-03-15	Subscription Payment
3672	334	59.00	2026-02-13	Subscription Payment
3673	334	59.00	2026-01-14	Subscription Payment
3674	334	59.00	2025-12-15	Subscription Payment
3675	334	59.00	2025-11-15	Subscription Payment
3676	334	59.00	2025-10-16	Subscription Payment
3677	335	29.00	2026-09-11	Subscription Payment
3678	335	29.00	2026-08-12	Subscription Payment
3679	335	29.00	2026-07-13	Subscription Payment
3680	335	29.00	2026-06-13	Subscription Payment
3681	335	29.00	2026-05-14	Subscription Payment
3682	335	29.00	2026-04-14	Subscription Payment
3683	335	29.00	2026-03-15	Subscription Payment
3684	335	29.00	2026-02-13	Subscription Payment
3685	335	29.00	2026-01-14	Subscription Payment
3686	335	29.00	2025-12-15	Subscription Payment
3687	335	29.00	2025-11-15	Subscription Payment
3688	335	29.00	2025-10-16	Subscription Payment
3689	336	29.00	2026-09-11	Subscription Payment
3690	336	29.00	2026-08-12	Subscription Payment
3691	336	29.00	2026-07-13	Subscription Payment
3692	336	29.00	2026-06-13	Subscription Payment
3693	336	29.00	2026-05-14	Subscription Payment
3694	336	29.00	2026-04-14	Subscription Payment
3695	336	29.00	2026-03-15	Subscription Payment
3696	336	29.00	2026-02-13	Subscription Payment
3697	336	29.00	2026-01-14	Subscription Payment
3698	336	29.00	2025-12-15	Subscription Payment
3699	336	29.00	2025-11-15	Subscription Payment
3700	336	29.00	2025-10-16	Subscription Payment
3701	337	99.00	2026-09-11	Subscription Payment
3702	337	99.00	2026-08-12	Subscription Payment
3703	337	99.00	2026-07-13	Subscription Payment
3704	337	99.00	2026-06-13	Subscription Payment
3705	337	99.00	2026-05-14	Subscription Payment
3706	337	99.00	2026-04-14	Subscription Payment
3707	337	99.00	2026-03-15	Subscription Payment
3708	337	99.00	2026-02-13	Subscription Payment
3709	337	99.00	2026-01-14	Subscription Payment
3710	337	99.00	2025-12-15	Subscription Payment
3711	337	99.00	2025-11-15	Subscription Payment
3712	337	99.00	2025-10-16	Subscription Payment
3713	338	29.00	2026-09-11	Subscription Payment
3714	338	29.00	2026-08-12	Subscription Payment
3715	338	29.00	2026-07-13	Subscription Payment
3716	338	29.00	2026-06-13	Subscription Payment
3717	338	29.00	2026-05-14	Subscription Payment
3718	339	59.00	2026-09-11	Subscription Payment
3719	339	59.00	2026-08-12	Subscription Payment
3720	339	59.00	2026-07-13	Subscription Payment
3721	339	59.00	2026-06-13	Subscription Payment
3722	339	59.00	2026-05-14	Subscription Payment
3723	339	59.00	2026-04-14	Subscription Payment
3724	339	59.00	2026-03-15	Subscription Payment
3725	339	59.00	2026-02-13	Subscription Payment
3726	339	59.00	2026-01-14	Subscription Payment
3727	339	59.00	2025-12-15	Subscription Payment
3728	339	59.00	2025-11-15	Subscription Payment
3729	339	59.00	2025-10-16	Subscription Payment
3730	340	59.00	2026-09-11	Subscription Payment
3731	340	59.00	2026-08-12	Subscription Payment
3732	340	59.00	2026-07-13	Subscription Payment
3733	340	59.00	2026-06-13	Subscription Payment
3734	340	59.00	2026-05-14	Subscription Payment
3735	340	59.00	2026-04-14	Subscription Payment
3736	340	59.00	2026-03-15	Subscription Payment
3737	340	59.00	2026-02-13	Subscription Payment
3738	340	59.00	2026-01-14	Subscription Payment
3739	340	59.00	2025-12-15	Subscription Payment
3740	340	59.00	2025-11-15	Subscription Payment
3741	340	59.00	2025-10-16	Subscription Payment
3742	341	29.00	2026-09-11	Subscription Payment
3743	341	29.00	2026-08-12	Subscription Payment
3744	341	29.00	2026-07-13	Subscription Payment
3745	341	29.00	2026-06-13	Subscription Payment
3746	341	29.00	2026-05-14	Subscription Payment
3747	341	29.00	2026-04-14	Subscription Payment
3748	341	29.00	2026-03-15	Subscription Payment
3749	341	29.00	2026-02-13	Subscription Payment
3750	341	29.00	2026-01-14	Subscription Payment
3751	341	29.00	2025-12-15	Subscription Payment
3752	341	29.00	2025-11-15	Subscription Payment
3753	341	29.00	2025-10-16	Subscription Payment
3754	342	29.00	2026-09-11	Subscription Payment
3755	342	29.00	2026-08-12	Subscription Payment
3756	342	29.00	2026-07-13	Subscription Payment
3757	342	29.00	2026-06-13	Subscription Payment
3758	342	29.00	2026-05-14	Subscription Payment
3759	342	29.00	2026-04-14	Subscription Payment
3760	342	29.00	2026-03-15	Subscription Payment
3761	342	29.00	2026-02-13	Subscription Payment
3762	342	29.00	2026-01-14	Subscription Payment
3763	342	29.00	2025-12-15	Subscription Payment
3764	342	29.00	2025-11-15	Subscription Payment
3765	342	29.00	2025-10-16	Subscription Payment
3766	343	29.00	2026-09-11	Subscription Payment
3767	343	29.00	2026-08-12	Subscription Payment
3768	343	29.00	2026-07-13	Subscription Payment
3769	343	29.00	2026-06-13	Subscription Payment
3770	343	29.00	2026-05-14	Subscription Payment
3771	343	29.00	2026-04-14	Subscription Payment
3772	343	29.00	2026-03-15	Subscription Payment
3773	343	29.00	2026-02-13	Subscription Payment
3774	343	29.00	2026-01-14	Subscription Payment
3775	343	29.00	2025-12-15	Subscription Payment
3776	343	29.00	2025-11-15	Subscription Payment
3777	343	29.00	2025-10-16	Subscription Payment
3778	344	99.00	2026-09-11	Subscription Payment
3779	344	99.00	2026-08-12	Subscription Payment
3780	344	99.00	2026-07-13	Subscription Payment
3781	344	99.00	2026-06-13	Subscription Payment
3782	344	99.00	2026-05-14	Subscription Payment
3783	344	99.00	2026-04-14	Subscription Payment
3784	344	99.00	2026-03-15	Subscription Payment
3785	344	99.00	2026-02-13	Subscription Payment
3786	344	99.00	2026-01-14	Subscription Payment
3787	344	99.00	2025-12-15	Subscription Payment
3788	344	99.00	2025-11-15	Subscription Payment
3789	344	99.00	2025-10-16	Subscription Payment
3790	345	29.00	2026-09-11	Subscription Payment
3791	345	29.00	2026-08-12	Subscription Payment
3792	345	29.00	2026-07-13	Subscription Payment
3793	345	29.00	2026-06-13	Subscription Payment
3794	345	29.00	2026-05-14	Subscription Payment
3795	345	29.00	2026-04-14	Subscription Payment
3796	345	29.00	2026-03-15	Subscription Payment
3797	345	29.00	2026-02-13	Subscription Payment
3798	345	29.00	2026-01-14	Subscription Payment
3799	345	29.00	2025-12-15	Subscription Payment
3800	345	29.00	2025-11-15	Subscription Payment
3801	345	29.00	2025-10-16	Subscription Payment
3802	346	29.00	2026-09-11	Subscription Payment
3803	346	29.00	2026-08-12	Subscription Payment
3804	346	29.00	2026-07-13	Subscription Payment
3805	346	29.00	2026-06-13	Subscription Payment
3806	346	29.00	2026-05-14	Subscription Payment
3807	346	29.00	2026-04-14	Subscription Payment
3808	346	29.00	2026-03-15	Subscription Payment
3809	346	29.00	2026-02-13	Subscription Payment
3810	346	29.00	2026-01-14	Subscription Payment
3811	346	29.00	2025-12-15	Subscription Payment
3812	346	29.00	2025-11-15	Subscription Payment
3813	346	29.00	2025-10-16	Subscription Payment
3814	347	59.00	2026-09-11	Subscription Payment
3815	347	59.00	2026-08-12	Subscription Payment
3816	347	59.00	2026-07-13	Subscription Payment
3817	347	59.00	2026-06-13	Subscription Payment
3818	347	59.00	2026-05-14	Subscription Payment
3819	347	59.00	2026-04-14	Subscription Payment
3820	347	59.00	2026-03-15	Subscription Payment
3821	347	59.00	2026-02-13	Subscription Payment
3822	347	59.00	2026-01-14	Subscription Payment
3823	347	59.00	2025-12-15	Subscription Payment
3824	347	59.00	2025-11-15	Subscription Payment
3825	347	59.00	2025-10-16	Subscription Payment
3826	348	59.00	2026-09-11	Subscription Payment
3827	348	59.00	2026-08-12	Subscription Payment
3828	348	59.00	2026-07-13	Subscription Payment
3829	348	59.00	2026-06-13	Subscription Payment
3830	348	59.00	2026-05-14	Subscription Payment
3831	348	59.00	2026-04-14	Subscription Payment
3832	348	59.00	2026-03-15	Subscription Payment
3833	348	59.00	2026-02-13	Subscription Payment
3834	348	59.00	2026-01-14	Subscription Payment
3835	348	59.00	2025-12-15	Subscription Payment
3836	348	59.00	2025-11-15	Subscription Payment
3837	348	59.00	2025-10-16	Subscription Payment
3838	349	29.00	2026-09-11	Subscription Payment
3839	349	29.00	2026-08-12	Subscription Payment
3840	349	29.00	2026-07-13	Subscription Payment
3841	349	29.00	2026-06-13	Subscription Payment
3842	349	29.00	2026-05-14	Subscription Payment
3843	349	29.00	2026-04-14	Subscription Payment
3844	349	29.00	2026-03-15	Subscription Payment
3845	349	29.00	2026-02-13	Subscription Payment
3846	349	29.00	2026-01-14	Subscription Payment
3847	349	29.00	2025-12-15	Subscription Payment
3848	349	29.00	2025-11-15	Subscription Payment
3849	349	29.00	2025-10-16	Subscription Payment
3850	350	59.00	2026-09-11	Subscription Payment
3851	350	59.00	2026-08-12	Subscription Payment
3852	350	59.00	2026-07-13	Subscription Payment
3853	350	59.00	2026-06-13	Subscription Payment
3854	350	59.00	2026-05-14	Subscription Payment
3855	350	59.00	2026-04-14	Subscription Payment
3856	350	59.00	2026-03-15	Subscription Payment
3857	350	59.00	2026-02-13	Subscription Payment
3858	350	59.00	2026-01-14	Subscription Payment
3859	350	59.00	2025-12-15	Subscription Payment
3860	350	59.00	2025-11-15	Subscription Payment
3861	350	59.00	2025-10-16	Subscription Payment
3862	351	29.00	2026-09-11	Subscription Payment
3863	351	29.00	2026-08-12	Subscription Payment
3864	351	29.00	2026-07-13	Subscription Payment
3865	351	29.00	2026-06-13	Subscription Payment
3866	351	29.00	2026-05-14	Subscription Payment
3867	351	29.00	2026-04-14	Subscription Payment
3868	351	29.00	2026-03-15	Subscription Payment
3869	351	29.00	2026-02-13	Subscription Payment
3870	351	29.00	2026-01-14	Subscription Payment
3871	351	29.00	2025-12-15	Subscription Payment
3872	351	29.00	2025-11-15	Subscription Payment
3873	351	29.00	2025-10-16	Subscription Payment
3874	352	29.00	2026-09-11	Subscription Payment
3875	352	29.00	2026-08-12	Subscription Payment
3876	352	29.00	2026-07-13	Subscription Payment
3877	352	29.00	2026-06-13	Subscription Payment
3878	352	29.00	2026-05-14	Subscription Payment
3879	352	29.00	2026-04-14	Subscription Payment
3880	352	29.00	2026-03-15	Subscription Payment
3881	352	29.00	2026-02-13	Subscription Payment
3882	352	29.00	2026-01-14	Subscription Payment
3883	352	29.00	2025-12-15	Subscription Payment
3884	353	99.00	2026-09-11	Subscription Payment
3885	353	99.00	2026-08-12	Subscription Payment
3886	353	99.00	2026-07-13	Subscription Payment
3887	353	99.00	2026-06-13	Subscription Payment
3888	353	99.00	2026-05-14	Subscription Payment
3889	353	99.00	2026-04-14	Subscription Payment
3890	353	99.00	2026-03-15	Subscription Payment
3891	353	99.00	2026-02-13	Subscription Payment
3892	353	99.00	2026-01-14	Subscription Payment
3893	353	99.00	2025-12-15	Subscription Payment
3894	353	99.00	2025-11-15	Subscription Payment
3895	353	99.00	2025-10-16	Subscription Payment
3896	354	29.00	2026-09-11	Subscription Payment
3897	354	29.00	2026-08-12	Subscription Payment
3898	354	29.00	2026-07-13	Subscription Payment
3899	354	29.00	2026-06-13	Subscription Payment
3900	354	29.00	2026-05-14	Subscription Payment
3901	354	29.00	2026-04-14	Subscription Payment
3902	354	29.00	2026-03-15	Subscription Payment
3903	354	29.00	2026-02-13	Subscription Payment
3904	354	29.00	2026-01-14	Subscription Payment
3905	354	29.00	2025-12-15	Subscription Payment
3906	354	29.00	2025-11-15	Subscription Payment
3907	354	29.00	2025-10-16	Subscription Payment
3908	355	59.00	2026-09-11	Subscription Payment
3909	355	59.00	2026-08-12	Subscription Payment
3910	355	59.00	2026-07-13	Subscription Payment
3911	355	59.00	2026-06-13	Subscription Payment
3912	355	59.00	2026-05-14	Subscription Payment
3913	355	59.00	2026-04-14	Subscription Payment
3914	355	59.00	2026-03-15	Subscription Payment
3915	355	59.00	2026-02-13	Subscription Payment
3916	355	59.00	2026-01-14	Subscription Payment
3917	355	59.00	2025-12-15	Subscription Payment
3918	355	59.00	2025-11-15	Subscription Payment
3919	355	59.00	2025-10-16	Subscription Payment
3920	356	59.00	2026-09-11	Subscription Payment
3921	356	59.00	2026-08-12	Subscription Payment
3922	356	59.00	2026-07-13	Subscription Payment
3923	356	59.00	2026-06-13	Subscription Payment
3924	356	59.00	2026-05-14	Subscription Payment
3925	356	59.00	2026-04-14	Subscription Payment
3926	356	59.00	2026-03-15	Subscription Payment
3927	356	59.00	2026-02-13	Subscription Payment
3928	356	59.00	2026-01-14	Subscription Payment
3929	356	59.00	2025-12-15	Subscription Payment
3930	356	59.00	2025-11-15	Subscription Payment
3931	356	59.00	2025-10-16	Subscription Payment
3932	357	59.00	2026-09-11	Subscription Payment
3933	357	59.00	2026-08-12	Subscription Payment
3934	357	59.00	2026-07-13	Subscription Payment
3935	357	59.00	2026-06-13	Subscription Payment
3936	357	59.00	2026-05-14	Subscription Payment
3937	357	59.00	2026-04-14	Subscription Payment
3938	357	59.00	2026-03-15	Subscription Payment
3939	357	59.00	2026-02-13	Subscription Payment
3940	357	59.00	2026-01-14	Subscription Payment
3941	357	59.00	2025-12-15	Subscription Payment
3942	357	59.00	2025-11-15	Subscription Payment
3943	357	59.00	2025-10-16	Subscription Payment
3944	358	99.00	2026-09-11	Subscription Payment
3945	358	99.00	2026-08-12	Subscription Payment
3946	358	99.00	2026-07-13	Subscription Payment
3947	358	99.00	2026-06-13	Subscription Payment
3948	358	99.00	2026-05-14	Subscription Payment
3949	358	99.00	2026-04-14	Subscription Payment
3950	358	99.00	2026-03-15	Subscription Payment
3951	358	99.00	2026-02-13	Subscription Payment
3952	358	99.00	2026-01-14	Subscription Payment
3953	358	99.00	2025-12-15	Subscription Payment
3954	358	99.00	2025-11-15	Subscription Payment
3955	358	99.00	2025-10-16	Subscription Payment
3956	359	59.00	2026-09-11	Subscription Payment
3957	359	59.00	2026-08-12	Subscription Payment
3958	359	59.00	2026-07-13	Subscription Payment
3959	359	59.00	2026-06-13	Subscription Payment
3960	359	59.00	2026-05-14	Subscription Payment
3961	359	59.00	2026-04-14	Subscription Payment
3962	359	59.00	2026-03-15	Subscription Payment
3963	359	59.00	2026-02-13	Subscription Payment
3964	360	59.00	2026-09-11	Subscription Payment
3965	360	59.00	2026-08-12	Subscription Payment
3966	360	59.00	2026-07-13	Subscription Payment
3967	360	59.00	2026-06-13	Subscription Payment
3968	360	59.00	2026-05-14	Subscription Payment
3969	360	59.00	2026-04-14	Subscription Payment
3970	360	59.00	2026-03-15	Subscription Payment
3971	360	59.00	2026-02-13	Subscription Payment
3972	360	59.00	2026-01-14	Subscription Payment
3973	360	59.00	2025-12-15	Subscription Payment
3974	360	59.00	2025-11-15	Subscription Payment
3975	360	59.00	2025-10-16	Subscription Payment
3976	361	59.00	2026-09-11	Subscription Payment
3977	361	59.00	2026-08-12	Subscription Payment
3978	361	59.00	2026-07-13	Subscription Payment
3979	361	59.00	2026-06-13	Subscription Payment
3980	361	59.00	2026-05-14	Subscription Payment
3981	361	59.00	2026-04-14	Subscription Payment
3982	361	59.00	2026-03-15	Subscription Payment
3983	361	59.00	2026-02-13	Subscription Payment
3984	361	59.00	2026-01-14	Subscription Payment
3985	362	99.00	2026-09-11	Subscription Payment
3986	362	99.00	2026-08-12	Subscription Payment
3987	362	99.00	2026-07-13	Subscription Payment
3988	362	99.00	2026-06-13	Subscription Payment
3989	362	99.00	2026-05-14	Subscription Payment
3990	362	99.00	2026-04-14	Subscription Payment
3991	363	99.00	2026-09-11	Subscription Payment
3992	363	99.00	2026-08-12	Subscription Payment
3993	363	99.00	2026-07-13	Subscription Payment
3994	363	99.00	2026-06-13	Subscription Payment
3995	363	99.00	2026-05-14	Subscription Payment
3996	363	99.00	2026-04-14	Subscription Payment
3997	363	99.00	2026-03-15	Subscription Payment
3998	363	99.00	2026-02-13	Subscription Payment
3999	364	29.00	2026-09-11	Subscription Payment
4000	364	29.00	2026-08-12	Subscription Payment
4001	364	29.00	2026-07-13	Subscription Payment
4002	364	29.00	2026-06-13	Subscription Payment
4003	364	29.00	2026-05-14	Subscription Payment
4004	364	29.00	2026-04-14	Subscription Payment
4005	364	29.00	2026-03-15	Subscription Payment
4006	364	29.00	2026-02-13	Subscription Payment
4007	364	29.00	2026-01-14	Subscription Payment
4008	364	29.00	2025-12-15	Subscription Payment
4009	364	29.00	2025-11-15	Subscription Payment
4010	364	29.00	2025-10-16	Subscription Payment
4011	365	59.00	2026-09-11	Subscription Payment
4012	365	59.00	2026-08-12	Subscription Payment
4013	365	59.00	2026-07-13	Subscription Payment
4014	365	59.00	2026-06-13	Subscription Payment
4015	365	59.00	2026-05-14	Subscription Payment
4016	365	59.00	2026-04-14	Subscription Payment
4017	365	59.00	2026-03-15	Subscription Payment
4018	365	59.00	2026-02-13	Subscription Payment
4019	365	59.00	2026-01-14	Subscription Payment
4020	365	59.00	2025-12-15	Subscription Payment
4021	365	59.00	2025-11-15	Subscription Payment
4022	365	59.00	2025-10-16	Subscription Payment
4023	366	59.00	2026-09-11	Subscription Payment
4024	366	59.00	2026-08-12	Subscription Payment
4025	366	59.00	2026-07-13	Subscription Payment
4026	366	59.00	2026-06-13	Subscription Payment
4027	366	59.00	2026-05-14	Subscription Payment
4028	366	59.00	2026-04-14	Subscription Payment
4029	366	59.00	2026-03-15	Subscription Payment
4030	366	59.00	2026-02-13	Subscription Payment
4031	366	59.00	2026-01-14	Subscription Payment
4032	366	59.00	2025-12-15	Subscription Payment
4033	366	59.00	2025-11-15	Subscription Payment
4034	366	59.00	2025-10-16	Subscription Payment
4035	367	99.00	2026-09-11	Subscription Payment
4036	367	99.00	2026-08-12	Subscription Payment
4037	367	99.00	2026-07-13	Subscription Payment
4038	367	99.00	2026-06-13	Subscription Payment
4039	367	99.00	2026-05-14	Subscription Payment
4040	367	99.00	2026-04-14	Subscription Payment
4041	367	99.00	2026-03-15	Subscription Payment
4042	367	99.00	2026-02-13	Subscription Payment
4043	367	99.00	2026-01-14	Subscription Payment
4044	367	99.00	2025-12-15	Subscription Payment
4045	367	99.00	2025-11-15	Subscription Payment
4046	367	99.00	2025-10-16	Subscription Payment
4047	368	29.00	2026-09-11	Subscription Payment
4048	368	29.00	2026-08-12	Subscription Payment
4049	368	29.00	2026-07-13	Subscription Payment
4050	368	29.00	2026-06-13	Subscription Payment
4051	368	29.00	2026-05-14	Subscription Payment
4052	368	29.00	2026-04-14	Subscription Payment
4053	368	29.00	2026-03-15	Subscription Payment
4054	368	29.00	2026-02-13	Subscription Payment
4055	368	29.00	2026-01-14	Subscription Payment
4056	368	29.00	2025-12-15	Subscription Payment
4057	368	29.00	2025-11-15	Subscription Payment
4058	368	29.00	2025-10-16	Subscription Payment
4059	369	29.00	2026-09-11	Subscription Payment
4060	369	29.00	2026-08-12	Subscription Payment
4061	369	29.00	2026-07-13	Subscription Payment
4062	369	29.00	2026-06-13	Subscription Payment
4063	369	29.00	2026-05-14	Subscription Payment
4064	369	29.00	2026-04-14	Subscription Payment
4065	369	29.00	2026-03-15	Subscription Payment
4066	369	29.00	2026-02-13	Subscription Payment
4067	369	29.00	2026-01-14	Subscription Payment
4068	369	29.00	2025-12-15	Subscription Payment
4069	369	29.00	2025-11-15	Subscription Payment
4070	369	29.00	2025-10-16	Subscription Payment
4071	370	99.00	2026-09-11	Subscription Payment
4072	370	99.00	2026-08-12	Subscription Payment
4073	370	99.00	2026-07-13	Subscription Payment
4074	370	99.00	2026-06-13	Subscription Payment
4075	370	99.00	2026-05-14	Subscription Payment
4076	370	99.00	2026-04-14	Subscription Payment
4077	370	99.00	2026-03-15	Subscription Payment
4078	370	99.00	2026-02-13	Subscription Payment
4079	370	99.00	2026-01-14	Subscription Payment
4080	370	99.00	2025-12-15	Subscription Payment
4081	370	99.00	2025-11-15	Subscription Payment
4082	370	99.00	2025-10-16	Subscription Payment
4083	371	29.00	2026-09-11	Subscription Payment
4084	371	29.00	2026-08-12	Subscription Payment
4085	371	29.00	2026-07-13	Subscription Payment
4086	371	29.00	2026-06-13	Subscription Payment
4087	371	29.00	2026-05-14	Subscription Payment
4088	371	29.00	2026-04-14	Subscription Payment
4089	371	29.00	2026-03-15	Subscription Payment
4090	371	29.00	2026-02-13	Subscription Payment
4091	371	29.00	2026-01-14	Subscription Payment
4092	371	29.00	2025-12-15	Subscription Payment
4093	371	29.00	2025-11-15	Subscription Payment
4094	372	29.00	2026-09-11	Subscription Payment
4095	372	29.00	2026-08-12	Subscription Payment
4096	372	29.00	2026-07-13	Subscription Payment
4097	372	29.00	2026-06-13	Subscription Payment
4098	372	29.00	2026-05-14	Subscription Payment
4099	372	29.00	2026-04-14	Subscription Payment
4100	372	29.00	2026-03-15	Subscription Payment
4101	372	29.00	2026-02-13	Subscription Payment
4102	372	29.00	2026-01-14	Subscription Payment
4103	372	29.00	2025-12-15	Subscription Payment
4104	372	29.00	2025-11-15	Subscription Payment
4105	372	29.00	2025-10-16	Subscription Payment
4106	373	59.00	2026-09-11	Subscription Payment
4107	373	59.00	2026-08-12	Subscription Payment
4108	373	59.00	2026-07-13	Subscription Payment
4109	373	59.00	2026-06-13	Subscription Payment
4110	373	59.00	2026-05-14	Subscription Payment
4111	373	59.00	2026-04-14	Subscription Payment
4112	373	59.00	2026-03-15	Subscription Payment
4113	373	59.00	2026-02-13	Subscription Payment
4114	373	59.00	2026-01-14	Subscription Payment
4115	373	59.00	2025-12-15	Subscription Payment
4116	373	59.00	2025-11-15	Subscription Payment
4117	373	59.00	2025-10-16	Subscription Payment
4118	374	29.00	2026-09-11	Subscription Payment
4119	374	29.00	2026-08-12	Subscription Payment
4120	374	29.00	2026-07-13	Subscription Payment
4121	374	29.00	2026-06-13	Subscription Payment
4122	374	29.00	2026-05-14	Subscription Payment
4123	374	29.00	2026-04-14	Subscription Payment
4124	374	29.00	2026-03-15	Subscription Payment
4125	374	29.00	2026-02-13	Subscription Payment
4126	374	29.00	2026-01-14	Subscription Payment
4127	374	29.00	2025-12-15	Subscription Payment
4128	374	29.00	2025-11-15	Subscription Payment
4129	374	29.00	2025-10-16	Subscription Payment
4130	375	29.00	2026-09-11	Subscription Payment
4131	375	29.00	2026-08-12	Subscription Payment
4132	375	29.00	2026-07-13	Subscription Payment
4133	375	29.00	2026-06-13	Subscription Payment
4134	375	29.00	2026-05-14	Subscription Payment
4135	375	29.00	2026-04-14	Subscription Payment
4136	375	29.00	2026-03-15	Subscription Payment
4137	375	29.00	2026-02-13	Subscription Payment
4138	375	29.00	2026-01-14	Subscription Payment
4139	375	29.00	2025-12-15	Subscription Payment
4140	375	29.00	2025-11-15	Subscription Payment
4141	375	29.00	2025-10-16	Subscription Payment
4142	376	29.00	2026-09-11	Subscription Payment
4143	376	29.00	2026-08-12	Subscription Payment
4144	376	29.00	2026-07-13	Subscription Payment
4145	376	29.00	2026-06-13	Subscription Payment
4146	376	29.00	2026-05-14	Subscription Payment
4147	376	29.00	2026-04-14	Subscription Payment
4148	376	29.00	2026-03-15	Subscription Payment
4149	376	29.00	2026-02-13	Subscription Payment
4150	376	29.00	2026-01-14	Subscription Payment
4151	376	29.00	2025-12-15	Subscription Payment
4152	376	29.00	2025-11-15	Subscription Payment
4153	376	29.00	2025-10-16	Subscription Payment
4154	377	29.00	2026-09-11	Subscription Payment
4155	377	29.00	2026-08-12	Subscription Payment
4156	377	29.00	2026-07-13	Subscription Payment
4157	377	29.00	2026-06-13	Subscription Payment
4158	377	29.00	2026-05-14	Subscription Payment
4159	377	29.00	2026-04-14	Subscription Payment
4160	377	29.00	2026-03-15	Subscription Payment
4161	377	29.00	2026-02-13	Subscription Payment
4162	377	29.00	2026-01-14	Subscription Payment
4163	377	29.00	2025-12-15	Subscription Payment
4164	377	29.00	2025-11-15	Subscription Payment
4165	377	29.00	2025-10-16	Subscription Payment
4166	378	29.00	2026-09-11	Subscription Payment
4167	378	29.00	2026-08-12	Subscription Payment
4168	378	29.00	2026-07-13	Subscription Payment
4169	378	29.00	2026-06-13	Subscription Payment
4170	378	29.00	2026-05-14	Subscription Payment
4171	378	29.00	2026-04-14	Subscription Payment
4172	378	29.00	2026-03-15	Subscription Payment
4173	378	29.00	2026-02-13	Subscription Payment
4174	378	29.00	2026-01-14	Subscription Payment
4175	378	29.00	2025-12-15	Subscription Payment
4176	378	29.00	2025-11-15	Subscription Payment
4177	378	29.00	2025-10-16	Subscription Payment
4178	379	99.00	2026-09-11	Subscription Payment
4179	379	99.00	2026-08-12	Subscription Payment
4180	379	99.00	2026-07-13	Subscription Payment
4181	379	99.00	2026-06-13	Subscription Payment
4182	379	99.00	2026-05-14	Subscription Payment
4183	379	99.00	2026-04-14	Subscription Payment
4184	379	99.00	2026-03-15	Subscription Payment
4185	379	99.00	2026-02-13	Subscription Payment
4186	379	99.00	2026-01-14	Subscription Payment
4187	379	99.00	2025-12-15	Subscription Payment
4188	379	99.00	2025-11-15	Subscription Payment
4189	379	99.00	2025-10-16	Subscription Payment
4190	380	99.00	2026-09-11	Subscription Payment
4191	380	99.00	2026-08-12	Subscription Payment
4192	380	99.00	2026-07-13	Subscription Payment
4193	380	99.00	2026-06-13	Subscription Payment
4194	380	99.00	2026-05-14	Subscription Payment
4195	380	99.00	2026-04-14	Subscription Payment
4196	380	99.00	2026-03-15	Subscription Payment
4197	380	99.00	2026-02-13	Subscription Payment
4198	380	99.00	2026-01-14	Subscription Payment
4199	380	99.00	2025-12-15	Subscription Payment
4200	380	99.00	2025-11-15	Subscription Payment
4201	380	99.00	2025-10-16	Subscription Payment
4202	381	59.00	2026-09-11	Subscription Payment
4203	381	59.00	2026-08-12	Subscription Payment
4204	381	59.00	2026-07-13	Subscription Payment
4205	381	59.00	2026-06-13	Subscription Payment
4206	381	59.00	2026-05-14	Subscription Payment
4207	381	59.00	2026-04-14	Subscription Payment
4208	381	59.00	2026-03-15	Subscription Payment
4209	381	59.00	2026-02-13	Subscription Payment
4210	381	59.00	2026-01-14	Subscription Payment
4211	381	59.00	2025-12-15	Subscription Payment
4212	381	59.00	2025-11-15	Subscription Payment
4213	381	59.00	2025-10-16	Subscription Payment
4214	382	29.00	2026-09-11	Subscription Payment
4215	382	29.00	2026-08-12	Subscription Payment
4216	382	29.00	2026-07-13	Subscription Payment
4217	382	29.00	2026-06-13	Subscription Payment
4218	382	29.00	2026-05-14	Subscription Payment
4219	382	29.00	2026-04-14	Subscription Payment
4220	382	29.00	2026-03-15	Subscription Payment
4221	382	29.00	2026-02-13	Subscription Payment
4222	382	29.00	2026-01-14	Subscription Payment
4223	382	29.00	2025-12-15	Subscription Payment
4224	382	29.00	2025-11-15	Subscription Payment
4225	382	29.00	2025-10-16	Subscription Payment
4226	383	29.00	2026-09-11	Subscription Payment
4227	383	29.00	2026-08-12	Subscription Payment
4228	383	29.00	2026-07-13	Subscription Payment
4229	383	29.00	2026-06-13	Subscription Payment
4230	383	29.00	2026-05-14	Subscription Payment
4231	383	29.00	2026-04-14	Subscription Payment
4232	383	29.00	2026-03-15	Subscription Payment
4233	383	29.00	2026-02-13	Subscription Payment
4234	383	29.00	2026-01-14	Subscription Payment
4235	383	29.00	2025-12-15	Subscription Payment
4236	383	29.00	2025-11-15	Subscription Payment
4237	383	29.00	2025-10-16	Subscription Payment
4238	384	59.00	2026-09-11	Subscription Payment
4239	384	59.00	2026-08-12	Subscription Payment
4240	384	59.00	2026-07-13	Subscription Payment
4241	384	59.00	2026-06-13	Subscription Payment
4242	384	59.00	2026-05-14	Subscription Payment
4243	384	59.00	2026-04-14	Subscription Payment
4244	384	59.00	2026-03-15	Subscription Payment
4245	384	59.00	2026-02-13	Subscription Payment
4246	384	59.00	2026-01-14	Subscription Payment
4247	384	59.00	2025-12-15	Subscription Payment
4248	384	59.00	2025-11-15	Subscription Payment
4249	384	59.00	2025-10-16	Subscription Payment
4250	385	59.00	2026-09-11	Subscription Payment
4251	385	59.00	2026-08-12	Subscription Payment
4252	385	59.00	2026-07-13	Subscription Payment
4253	385	59.00	2026-06-13	Subscription Payment
4254	385	59.00	2026-05-14	Subscription Payment
4255	385	59.00	2026-04-14	Subscription Payment
4256	385	59.00	2026-03-15	Subscription Payment
4257	385	59.00	2026-02-13	Subscription Payment
4258	385	59.00	2026-01-14	Subscription Payment
4259	385	59.00	2025-12-15	Subscription Payment
4260	385	59.00	2025-11-15	Subscription Payment
4261	385	59.00	2025-10-16	Subscription Payment
4262	386	59.00	2026-09-11	Subscription Payment
4263	386	59.00	2026-08-12	Subscription Payment
4264	386	59.00	2026-07-13	Subscription Payment
4265	386	59.00	2026-06-13	Subscription Payment
4266	386	59.00	2026-05-14	Subscription Payment
4267	386	59.00	2026-04-14	Subscription Payment
4268	386	59.00	2026-03-15	Subscription Payment
4269	386	59.00	2026-02-13	Subscription Payment
4270	386	59.00	2026-01-14	Subscription Payment
4271	386	59.00	2025-12-15	Subscription Payment
4272	386	59.00	2025-11-15	Subscription Payment
4273	386	59.00	2025-10-16	Subscription Payment
4274	387	59.00	2026-09-11	Subscription Payment
4275	387	59.00	2026-08-12	Subscription Payment
4276	387	59.00	2026-07-13	Subscription Payment
4277	387	59.00	2026-06-13	Subscription Payment
4278	387	59.00	2026-05-14	Subscription Payment
4279	387	59.00	2026-04-14	Subscription Payment
4280	387	59.00	2026-03-15	Subscription Payment
4281	387	59.00	2026-02-13	Subscription Payment
4282	387	59.00	2026-01-14	Subscription Payment
4283	387	59.00	2025-12-15	Subscription Payment
4284	387	59.00	2025-11-15	Subscription Payment
4285	387	59.00	2025-10-16	Subscription Payment
4286	388	29.00	2026-09-11	Subscription Payment
4287	388	29.00	2026-08-12	Subscription Payment
4288	388	29.00	2026-07-13	Subscription Payment
4289	388	29.00	2026-06-13	Subscription Payment
4290	388	29.00	2026-05-14	Subscription Payment
4291	388	29.00	2026-04-14	Subscription Payment
4292	388	29.00	2026-03-15	Subscription Payment
4293	389	29.00	2026-09-11	Subscription Payment
4294	389	29.00	2026-08-12	Subscription Payment
4295	389	29.00	2026-07-13	Subscription Payment
4296	389	29.00	2026-06-13	Subscription Payment
4297	389	29.00	2026-05-14	Subscription Payment
4298	389	29.00	2026-04-14	Subscription Payment
4299	389	29.00	2026-03-15	Subscription Payment
4300	389	29.00	2026-02-13	Subscription Payment
4301	389	29.00	2026-01-14	Subscription Payment
4302	389	29.00	2025-12-15	Subscription Payment
4303	389	29.00	2025-11-15	Subscription Payment
4304	389	29.00	2025-10-16	Subscription Payment
4305	390	29.00	2026-09-11	Subscription Payment
4306	390	29.00	2026-08-12	Subscription Payment
4307	390	29.00	2026-07-13	Subscription Payment
4308	390	29.00	2026-06-13	Subscription Payment
4309	390	29.00	2026-05-14	Subscription Payment
4310	390	29.00	2026-04-14	Subscription Payment
4311	390	29.00	2026-03-15	Subscription Payment
4312	390	29.00	2026-02-13	Subscription Payment
4313	390	29.00	2026-01-14	Subscription Payment
4314	390	29.00	2025-12-15	Subscription Payment
4315	390	29.00	2025-11-15	Subscription Payment
4316	390	29.00	2025-10-16	Subscription Payment
4317	391	29.00	2026-09-11	Subscription Payment
4318	391	29.00	2026-08-12	Subscription Payment
4319	391	29.00	2026-07-13	Subscription Payment
4320	391	29.00	2026-06-13	Subscription Payment
4321	391	29.00	2026-05-14	Subscription Payment
4322	391	29.00	2026-04-14	Subscription Payment
4323	391	29.00	2026-03-15	Subscription Payment
4324	391	29.00	2026-02-13	Subscription Payment
4325	391	29.00	2026-01-14	Subscription Payment
4326	391	29.00	2025-12-15	Subscription Payment
4327	391	29.00	2025-11-15	Subscription Payment
4328	391	29.00	2025-10-16	Subscription Payment
4329	392	99.00	2026-09-11	Subscription Payment
4330	392	99.00	2026-08-12	Subscription Payment
4331	392	99.00	2026-07-13	Subscription Payment
4332	392	99.00	2026-06-13	Subscription Payment
4333	392	99.00	2026-05-14	Subscription Payment
4334	392	99.00	2026-04-14	Subscription Payment
4335	392	99.00	2026-03-15	Subscription Payment
4336	392	99.00	2026-02-13	Subscription Payment
4337	392	99.00	2026-01-14	Subscription Payment
4338	392	99.00	2025-12-15	Subscription Payment
4339	392	99.00	2025-11-15	Subscription Payment
4340	392	99.00	2025-10-16	Subscription Payment
4341	393	29.00	2026-09-11	Subscription Payment
4342	393	29.00	2026-08-12	Subscription Payment
4343	393	29.00	2026-07-13	Subscription Payment
4344	393	29.00	2026-06-13	Subscription Payment
4345	393	29.00	2026-05-14	Subscription Payment
4346	393	29.00	2026-04-14	Subscription Payment
4347	393	29.00	2026-03-15	Subscription Payment
4348	393	29.00	2026-02-13	Subscription Payment
4349	393	29.00	2026-01-14	Subscription Payment
4350	394	99.00	2026-09-11	Subscription Payment
4351	394	99.00	2026-08-12	Subscription Payment
4352	394	99.00	2026-07-13	Subscription Payment
4353	394	99.00	2026-06-13	Subscription Payment
4354	394	99.00	2026-05-14	Subscription Payment
4355	394	99.00	2026-04-14	Subscription Payment
4356	394	99.00	2026-03-15	Subscription Payment
4357	394	99.00	2026-02-13	Subscription Payment
4358	394	99.00	2026-01-14	Subscription Payment
4359	394	99.00	2025-12-15	Subscription Payment
4360	394	99.00	2025-11-15	Subscription Payment
4361	394	99.00	2025-10-16	Subscription Payment
4362	395	59.00	2026-09-11	Subscription Payment
4363	395	59.00	2026-08-12	Subscription Payment
4364	395	59.00	2026-07-13	Subscription Payment
4365	395	59.00	2026-06-13	Subscription Payment
4366	395	59.00	2026-05-14	Subscription Payment
4367	395	59.00	2026-04-14	Subscription Payment
4368	395	59.00	2026-03-15	Subscription Payment
4369	395	59.00	2026-02-13	Subscription Payment
4370	395	59.00	2026-01-14	Subscription Payment
4371	395	59.00	2025-12-15	Subscription Payment
4372	396	99.00	2026-09-11	Subscription Payment
4373	396	99.00	2026-08-12	Subscription Payment
4374	396	99.00	2026-07-13	Subscription Payment
4375	396	99.00	2026-06-13	Subscription Payment
4376	396	99.00	2026-05-14	Subscription Payment
4377	396	99.00	2026-04-14	Subscription Payment
4378	396	99.00	2026-03-15	Subscription Payment
4379	396	99.00	2026-02-13	Subscription Payment
4380	396	99.00	2026-01-14	Subscription Payment
4381	396	99.00	2025-12-15	Subscription Payment
4382	396	99.00	2025-11-15	Subscription Payment
4383	396	99.00	2025-10-16	Subscription Payment
4384	397	99.00	2026-09-11	Subscription Payment
4385	397	99.00	2026-08-12	Subscription Payment
4386	397	99.00	2026-07-13	Subscription Payment
4387	397	99.00	2026-06-13	Subscription Payment
4388	397	99.00	2026-05-14	Subscription Payment
4389	397	99.00	2026-04-14	Subscription Payment
4390	397	99.00	2026-03-15	Subscription Payment
4391	397	99.00	2026-02-13	Subscription Payment
4392	397	99.00	2026-01-14	Subscription Payment
4393	397	99.00	2025-12-15	Subscription Payment
4394	397	99.00	2025-11-15	Subscription Payment
4395	397	99.00	2025-10-16	Subscription Payment
4396	398	29.00	2026-09-11	Subscription Payment
4397	398	29.00	2026-08-12	Subscription Payment
4398	398	29.00	2026-07-13	Subscription Payment
4399	398	29.00	2026-06-13	Subscription Payment
4400	398	29.00	2026-05-14	Subscription Payment
4401	398	29.00	2026-04-14	Subscription Payment
4402	398	29.00	2026-03-15	Subscription Payment
4403	398	29.00	2026-02-13	Subscription Payment
4404	398	29.00	2026-01-14	Subscription Payment
4405	398	29.00	2025-12-15	Subscription Payment
4406	398	29.00	2025-11-15	Subscription Payment
4407	398	29.00	2025-10-16	Subscription Payment
4408	399	59.00	2026-09-11	Subscription Payment
4409	399	59.00	2026-08-12	Subscription Payment
4410	399	59.00	2026-07-13	Subscription Payment
4411	399	59.00	2026-06-13	Subscription Payment
4412	399	59.00	2026-05-14	Subscription Payment
4413	399	59.00	2026-04-14	Subscription Payment
4414	399	59.00	2026-03-15	Subscription Payment
4415	399	59.00	2026-02-13	Subscription Payment
4416	399	59.00	2026-01-14	Subscription Payment
4417	399	59.00	2025-12-15	Subscription Payment
4418	399	59.00	2025-11-15	Subscription Payment
4419	399	59.00	2025-10-16	Subscription Payment
4420	400	29.00	2026-09-11	Subscription Payment
4421	400	29.00	2026-08-12	Subscription Payment
4422	400	29.00	2026-07-13	Subscription Payment
4423	400	29.00	2026-06-13	Subscription Payment
4424	400	29.00	2026-05-14	Subscription Payment
4425	401	59.00	2026-09-11	Subscription Payment
4426	401	59.00	2026-08-12	Subscription Payment
4427	401	59.00	2026-07-13	Subscription Payment
4428	401	59.00	2026-06-13	Subscription Payment
4429	401	59.00	2026-05-14	Subscription Payment
4430	401	59.00	2026-04-14	Subscription Payment
4431	401	59.00	2026-03-15	Subscription Payment
4432	401	59.00	2026-02-13	Subscription Payment
4433	401	59.00	2026-01-14	Subscription Payment
4434	401	59.00	2025-12-15	Subscription Payment
4435	401	59.00	2025-11-15	Subscription Payment
4436	401	59.00	2025-10-16	Subscription Payment
4437	402	59.00	2026-09-11	Subscription Payment
4438	402	59.00	2026-08-12	Subscription Payment
4439	402	59.00	2026-07-13	Subscription Payment
4440	402	59.00	2026-06-13	Subscription Payment
4441	402	59.00	2026-05-14	Subscription Payment
4442	402	59.00	2026-04-14	Subscription Payment
4443	402	59.00	2026-03-15	Subscription Payment
4444	402	59.00	2026-02-13	Subscription Payment
4445	402	59.00	2026-01-14	Subscription Payment
4446	402	59.00	2025-12-15	Subscription Payment
4447	402	59.00	2025-11-15	Subscription Payment
4448	402	59.00	2025-10-16	Subscription Payment
4449	403	29.00	2026-09-11	Subscription Payment
4450	403	29.00	2026-08-12	Subscription Payment
4451	403	29.00	2026-07-13	Subscription Payment
4452	403	29.00	2026-06-13	Subscription Payment
4453	403	29.00	2026-05-14	Subscription Payment
4454	403	29.00	2026-04-14	Subscription Payment
4455	403	29.00	2026-03-15	Subscription Payment
4456	403	29.00	2026-02-13	Subscription Payment
4457	403	29.00	2026-01-14	Subscription Payment
4458	403	29.00	2025-12-15	Subscription Payment
4459	403	29.00	2025-11-15	Subscription Payment
4460	403	29.00	2025-10-16	Subscription Payment
4461	404	99.00	2026-09-11	Subscription Payment
4462	404	99.00	2026-08-12	Subscription Payment
4463	404	99.00	2026-07-13	Subscription Payment
4464	404	99.00	2026-06-13	Subscription Payment
4465	404	99.00	2026-05-14	Subscription Payment
4466	404	99.00	2026-04-14	Subscription Payment
4467	405	99.00	2026-09-11	Subscription Payment
4468	405	99.00	2026-08-12	Subscription Payment
4469	405	99.00	2026-07-13	Subscription Payment
4470	405	99.00	2026-06-13	Subscription Payment
4471	405	99.00	2026-05-14	Subscription Payment
4472	405	99.00	2026-04-14	Subscription Payment
4473	405	99.00	2026-03-15	Subscription Payment
4474	405	99.00	2026-02-13	Subscription Payment
4475	405	99.00	2026-01-14	Subscription Payment
4476	405	99.00	2025-12-15	Subscription Payment
4477	405	99.00	2025-11-15	Subscription Payment
4478	405	99.00	2025-10-16	Subscription Payment
4479	406	29.00	2026-09-11	Subscription Payment
4480	406	29.00	2026-08-12	Subscription Payment
4481	406	29.00	2026-07-13	Subscription Payment
4482	406	29.00	2026-06-13	Subscription Payment
4483	406	29.00	2026-05-14	Subscription Payment
4484	406	29.00	2026-04-14	Subscription Payment
4485	407	29.00	2026-09-11	Subscription Payment
4486	407	29.00	2026-08-12	Subscription Payment
4487	407	29.00	2026-07-13	Subscription Payment
4488	407	29.00	2026-06-13	Subscription Payment
4489	407	29.00	2026-05-14	Subscription Payment
4490	407	29.00	2026-04-14	Subscription Payment
4491	408	59.00	2026-09-11	Subscription Payment
4492	408	59.00	2026-08-12	Subscription Payment
4493	408	59.00	2026-07-13	Subscription Payment
4494	408	59.00	2026-06-13	Subscription Payment
4495	408	59.00	2026-05-14	Subscription Payment
4496	408	59.00	2026-04-14	Subscription Payment
4497	408	59.00	2026-03-15	Subscription Payment
4498	408	59.00	2026-02-13	Subscription Payment
4499	408	59.00	2026-01-14	Subscription Payment
4500	408	59.00	2025-12-15	Subscription Payment
4501	408	59.00	2025-11-15	Subscription Payment
4502	409	29.00	2026-09-11	Subscription Payment
4503	409	29.00	2026-08-12	Subscription Payment
4504	409	29.00	2026-07-13	Subscription Payment
4505	409	29.00	2026-06-13	Subscription Payment
4506	409	29.00	2026-05-14	Subscription Payment
4507	409	29.00	2026-04-14	Subscription Payment
4508	409	29.00	2026-03-15	Subscription Payment
4509	410	99.00	2026-09-11	Subscription Payment
4510	410	99.00	2026-08-12	Subscription Payment
4511	410	99.00	2026-07-13	Subscription Payment
4512	410	99.00	2026-06-13	Subscription Payment
4513	410	99.00	2026-05-14	Subscription Payment
4514	410	99.00	2026-04-14	Subscription Payment
4515	410	99.00	2026-03-15	Subscription Payment
4516	410	99.00	2026-02-13	Subscription Payment
4517	410	99.00	2026-01-14	Subscription Payment
4518	410	99.00	2025-12-15	Subscription Payment
4519	410	99.00	2025-11-15	Subscription Payment
4520	410	99.00	2025-10-16	Subscription Payment
4521	411	29.00	2026-09-11	Subscription Payment
4522	411	29.00	2026-08-12	Subscription Payment
4523	411	29.00	2026-07-13	Subscription Payment
4524	411	29.00	2026-06-13	Subscription Payment
4525	411	29.00	2026-05-14	Subscription Payment
4526	411	29.00	2026-04-14	Subscription Payment
4527	411	29.00	2026-03-15	Subscription Payment
4528	411	29.00	2026-02-13	Subscription Payment
4529	411	29.00	2026-01-14	Subscription Payment
4530	411	29.00	2025-12-15	Subscription Payment
4531	411	29.00	2025-11-15	Subscription Payment
4532	411	29.00	2025-10-16	Subscription Payment
4533	412	29.00	2026-09-11	Subscription Payment
4534	412	29.00	2026-08-12	Subscription Payment
4535	412	29.00	2026-07-13	Subscription Payment
4536	412	29.00	2026-06-13	Subscription Payment
4537	412	29.00	2026-05-14	Subscription Payment
4538	412	29.00	2026-04-14	Subscription Payment
4539	412	29.00	2026-03-15	Subscription Payment
4540	412	29.00	2026-02-13	Subscription Payment
4541	412	29.00	2026-01-14	Subscription Payment
4542	412	29.00	2025-12-15	Subscription Payment
4543	412	29.00	2025-11-15	Subscription Payment
4544	412	29.00	2025-10-16	Subscription Payment
4545	413	59.00	2026-09-11	Subscription Payment
4546	413	59.00	2026-08-12	Subscription Payment
4547	413	59.00	2026-07-13	Subscription Payment
4548	413	59.00	2026-06-13	Subscription Payment
4549	413	59.00	2026-05-14	Subscription Payment
4550	413	59.00	2026-04-14	Subscription Payment
4551	413	59.00	2026-03-15	Subscription Payment
4552	413	59.00	2026-02-13	Subscription Payment
4553	413	59.00	2026-01-14	Subscription Payment
4554	413	59.00	2025-12-15	Subscription Payment
4555	413	59.00	2025-11-15	Subscription Payment
4556	413	59.00	2025-10-16	Subscription Payment
4557	414	29.00	2026-09-11	Subscription Payment
4558	414	29.00	2026-08-12	Subscription Payment
4559	414	29.00	2026-07-13	Subscription Payment
4560	414	29.00	2026-06-13	Subscription Payment
4561	414	29.00	2026-05-14	Subscription Payment
4562	414	29.00	2026-04-14	Subscription Payment
4563	414	29.00	2026-03-15	Subscription Payment
4564	414	29.00	2026-02-13	Subscription Payment
4565	414	29.00	2026-01-14	Subscription Payment
4566	414	29.00	2025-12-15	Subscription Payment
4567	414	29.00	2025-11-15	Subscription Payment
4568	414	29.00	2025-10-16	Subscription Payment
4569	415	99.00	2026-09-11	Subscription Payment
4570	415	99.00	2026-08-12	Subscription Payment
4571	415	99.00	2026-07-13	Subscription Payment
4572	416	99.00	2026-09-11	Subscription Payment
4573	416	99.00	2026-08-12	Subscription Payment
4574	416	99.00	2026-07-13	Subscription Payment
4575	416	99.00	2026-06-13	Subscription Payment
4576	416	99.00	2026-05-14	Subscription Payment
4577	416	99.00	2026-04-14	Subscription Payment
4578	416	99.00	2026-03-15	Subscription Payment
4579	416	99.00	2026-02-13	Subscription Payment
4580	416	99.00	2026-01-14	Subscription Payment
4581	416	99.00	2025-12-15	Subscription Payment
4582	416	99.00	2025-11-15	Subscription Payment
4583	416	99.00	2025-10-16	Subscription Payment
4584	417	59.00	2026-09-11	Subscription Payment
4585	417	59.00	2026-08-12	Subscription Payment
4586	417	59.00	2026-07-13	Subscription Payment
4587	417	59.00	2026-06-13	Subscription Payment
4588	417	59.00	2026-05-14	Subscription Payment
4589	417	59.00	2026-04-14	Subscription Payment
4590	417	59.00	2026-03-15	Subscription Payment
4591	417	59.00	2026-02-13	Subscription Payment
4592	417	59.00	2026-01-14	Subscription Payment
4593	417	59.00	2025-12-15	Subscription Payment
4594	417	59.00	2025-11-15	Subscription Payment
4595	417	59.00	2025-10-16	Subscription Payment
4596	418	29.00	2026-09-11	Subscription Payment
4597	418	29.00	2026-08-12	Subscription Payment
4598	418	29.00	2026-07-13	Subscription Payment
4599	418	29.00	2026-06-13	Subscription Payment
4600	418	29.00	2026-05-14	Subscription Payment
4601	418	29.00	2026-04-14	Subscription Payment
4602	418	29.00	2026-03-15	Subscription Payment
4603	418	29.00	2026-02-13	Subscription Payment
4604	419	59.00	2026-09-11	Subscription Payment
4605	419	59.00	2026-08-12	Subscription Payment
4606	419	59.00	2026-07-13	Subscription Payment
4607	419	59.00	2026-06-13	Subscription Payment
4608	419	59.00	2026-05-14	Subscription Payment
4609	419	59.00	2026-04-14	Subscription Payment
4610	419	59.00	2026-03-15	Subscription Payment
4611	419	59.00	2026-02-13	Subscription Payment
4612	419	59.00	2026-01-14	Subscription Payment
4613	419	59.00	2025-12-15	Subscription Payment
4614	419	59.00	2025-11-15	Subscription Payment
4615	419	59.00	2025-10-16	Subscription Payment
4616	420	99.00	2026-09-11	Subscription Payment
4617	420	99.00	2026-08-12	Subscription Payment
4618	420	99.00	2026-07-13	Subscription Payment
4619	420	99.00	2026-06-13	Subscription Payment
4620	421	59.00	2026-09-11	Subscription Payment
4621	421	59.00	2026-08-12	Subscription Payment
4622	421	59.00	2026-07-13	Subscription Payment
4623	421	59.00	2026-06-13	Subscription Payment
4624	421	59.00	2026-05-14	Subscription Payment
4625	421	59.00	2026-04-14	Subscription Payment
4626	421	59.00	2026-03-15	Subscription Payment
4627	421	59.00	2026-02-13	Subscription Payment
4628	421	59.00	2026-01-14	Subscription Payment
4629	421	59.00	2025-12-15	Subscription Payment
4630	421	59.00	2025-11-15	Subscription Payment
4631	421	59.00	2025-10-16	Subscription Payment
4632	422	59.00	2026-09-11	Subscription Payment
4633	422	59.00	2026-08-12	Subscription Payment
4634	422	59.00	2026-07-13	Subscription Payment
4635	422	59.00	2026-06-13	Subscription Payment
4636	422	59.00	2026-05-14	Subscription Payment
4637	422	59.00	2026-04-14	Subscription Payment
4638	422	59.00	2026-03-15	Subscription Payment
4639	422	59.00	2026-02-13	Subscription Payment
4640	422	59.00	2026-01-14	Subscription Payment
4641	422	59.00	2025-12-15	Subscription Payment
4642	422	59.00	2025-11-15	Subscription Payment
4643	422	59.00	2025-10-16	Subscription Payment
4644	423	29.00	2026-09-11	Subscription Payment
4645	423	29.00	2026-08-12	Subscription Payment
4646	423	29.00	2026-07-13	Subscription Payment
4647	423	29.00	2026-06-13	Subscription Payment
4648	423	29.00	2026-05-14	Subscription Payment
4649	423	29.00	2026-04-14	Subscription Payment
4650	423	29.00	2026-03-15	Subscription Payment
4651	423	29.00	2026-02-13	Subscription Payment
4652	423	29.00	2026-01-14	Subscription Payment
4653	423	29.00	2025-12-15	Subscription Payment
4654	423	29.00	2025-11-15	Subscription Payment
4655	423	29.00	2025-10-16	Subscription Payment
4656	424	29.00	2026-09-11	Subscription Payment
4657	424	29.00	2026-08-12	Subscription Payment
4658	424	29.00	2026-07-13	Subscription Payment
4659	424	29.00	2026-06-13	Subscription Payment
4660	424	29.00	2026-05-14	Subscription Payment
4661	424	29.00	2026-04-14	Subscription Payment
4662	424	29.00	2026-03-15	Subscription Payment
4663	424	29.00	2026-02-13	Subscription Payment
4664	424	29.00	2026-01-14	Subscription Payment
4665	424	29.00	2025-12-15	Subscription Payment
4666	424	29.00	2025-11-15	Subscription Payment
4667	424	29.00	2025-10-16	Subscription Payment
4668	425	59.00	2026-09-11	Subscription Payment
4669	425	59.00	2026-08-12	Subscription Payment
4670	425	59.00	2026-07-13	Subscription Payment
4671	425	59.00	2026-06-13	Subscription Payment
4672	425	59.00	2026-05-14	Subscription Payment
4673	425	59.00	2026-04-14	Subscription Payment
4674	425	59.00	2026-03-15	Subscription Payment
4675	425	59.00	2026-02-13	Subscription Payment
4676	425	59.00	2026-01-14	Subscription Payment
4677	425	59.00	2025-12-15	Subscription Payment
4678	425	59.00	2025-11-15	Subscription Payment
4679	425	59.00	2025-10-16	Subscription Payment
4680	426	99.00	2026-09-11	Subscription Payment
4681	426	99.00	2026-08-12	Subscription Payment
4682	426	99.00	2026-07-13	Subscription Payment
4683	426	99.00	2026-06-13	Subscription Payment
4684	426	99.00	2026-05-14	Subscription Payment
4685	426	99.00	2026-04-14	Subscription Payment
4686	426	99.00	2026-03-15	Subscription Payment
4687	426	99.00	2026-02-13	Subscription Payment
4688	426	99.00	2026-01-14	Subscription Payment
4689	426	99.00	2025-12-15	Subscription Payment
4690	427	29.00	2026-09-11	Subscription Payment
4691	427	29.00	2026-08-12	Subscription Payment
4692	427	29.00	2026-07-13	Subscription Payment
4693	427	29.00	2026-06-13	Subscription Payment
4694	427	29.00	2026-05-14	Subscription Payment
4695	427	29.00	2026-04-14	Subscription Payment
4696	427	29.00	2026-03-15	Subscription Payment
4697	427	29.00	2026-02-13	Subscription Payment
4698	427	29.00	2026-01-14	Subscription Payment
4699	427	29.00	2025-12-15	Subscription Payment
4700	427	29.00	2025-11-15	Subscription Payment
4701	427	29.00	2025-10-16	Subscription Payment
4702	428	59.00	2026-09-11	Subscription Payment
4703	428	59.00	2026-08-12	Subscription Payment
4704	428	59.00	2026-07-13	Subscription Payment
4705	428	59.00	2026-06-13	Subscription Payment
4706	428	59.00	2026-05-14	Subscription Payment
4707	428	59.00	2026-04-14	Subscription Payment
4708	428	59.00	2026-03-15	Subscription Payment
4709	428	59.00	2026-02-13	Subscription Payment
4710	428	59.00	2026-01-14	Subscription Payment
4711	428	59.00	2025-12-15	Subscription Payment
4712	428	59.00	2025-11-15	Subscription Payment
4713	428	59.00	2025-10-16	Subscription Payment
4714	429	29.00	2026-09-11	Subscription Payment
4715	429	29.00	2026-08-12	Subscription Payment
4716	429	29.00	2026-07-13	Subscription Payment
4717	429	29.00	2026-06-13	Subscription Payment
4718	429	29.00	2026-05-14	Subscription Payment
4719	429	29.00	2026-04-14	Subscription Payment
4720	429	29.00	2026-03-15	Subscription Payment
4721	429	29.00	2026-02-13	Subscription Payment
4722	430	59.00	2026-09-11	Subscription Payment
4723	430	59.00	2026-08-12	Subscription Payment
4724	430	59.00	2026-07-13	Subscription Payment
4725	430	59.00	2026-06-13	Subscription Payment
4726	430	59.00	2026-05-14	Subscription Payment
4727	430	59.00	2026-04-14	Subscription Payment
4728	430	59.00	2026-03-15	Subscription Payment
4729	430	59.00	2026-02-13	Subscription Payment
4730	430	59.00	2026-01-14	Subscription Payment
4731	430	59.00	2025-12-15	Subscription Payment
4732	430	59.00	2025-11-15	Subscription Payment
4733	430	59.00	2025-10-16	Subscription Payment
4734	431	59.00	2026-09-11	Subscription Payment
4735	431	59.00	2026-08-12	Subscription Payment
4736	431	59.00	2026-07-13	Subscription Payment
4737	431	59.00	2026-06-13	Subscription Payment
4738	431	59.00	2026-05-14	Subscription Payment
4739	431	59.00	2026-04-14	Subscription Payment
4740	431	59.00	2026-03-15	Subscription Payment
4741	431	59.00	2026-02-13	Subscription Payment
4742	431	59.00	2026-01-14	Subscription Payment
4743	431	59.00	2025-12-15	Subscription Payment
4744	431	59.00	2025-11-15	Subscription Payment
4745	431	59.00	2025-10-16	Subscription Payment
4746	432	59.00	2026-09-11	Subscription Payment
4747	432	59.00	2026-08-12	Subscription Payment
4748	432	59.00	2026-07-13	Subscription Payment
4749	432	59.00	2026-06-13	Subscription Payment
4750	432	59.00	2026-05-14	Subscription Payment
4751	432	59.00	2026-04-14	Subscription Payment
4752	432	59.00	2026-03-15	Subscription Payment
4753	432	59.00	2026-02-13	Subscription Payment
4754	432	59.00	2026-01-14	Subscription Payment
4755	432	59.00	2025-12-15	Subscription Payment
4756	432	59.00	2025-11-15	Subscription Payment
4757	432	59.00	2025-10-16	Subscription Payment
4758	433	99.00	2026-09-11	Subscription Payment
4759	433	99.00	2026-08-12	Subscription Payment
4760	433	99.00	2026-07-13	Subscription Payment
4761	433	99.00	2026-06-13	Subscription Payment
4762	434	29.00	2026-09-11	Subscription Payment
4763	434	29.00	2026-08-12	Subscription Payment
4764	434	29.00	2026-07-13	Subscription Payment
4765	434	29.00	2026-06-13	Subscription Payment
4766	434	29.00	2026-05-14	Subscription Payment
4767	434	29.00	2026-04-14	Subscription Payment
4768	434	29.00	2026-03-15	Subscription Payment
4769	434	29.00	2026-02-13	Subscription Payment
4770	435	29.00	2026-09-11	Subscription Payment
4771	435	29.00	2026-08-12	Subscription Payment
4772	435	29.00	2026-07-13	Subscription Payment
4773	435	29.00	2026-06-13	Subscription Payment
4774	435	29.00	2026-05-14	Subscription Payment
4775	435	29.00	2026-04-14	Subscription Payment
4776	435	29.00	2026-03-15	Subscription Payment
4777	435	29.00	2026-02-13	Subscription Payment
4778	435	29.00	2026-01-14	Subscription Payment
4779	435	29.00	2025-12-15	Subscription Payment
4780	435	29.00	2025-11-15	Subscription Payment
4781	436	59.00	2026-09-11	Subscription Payment
4782	436	59.00	2026-08-12	Subscription Payment
4783	436	59.00	2026-07-13	Subscription Payment
4784	436	59.00	2026-06-13	Subscription Payment
4785	436	59.00	2026-05-14	Subscription Payment
4786	437	99.00	2026-09-11	Subscription Payment
4787	437	99.00	2026-08-12	Subscription Payment
4788	437	99.00	2026-07-13	Subscription Payment
4789	437	99.00	2026-06-13	Subscription Payment
4790	437	99.00	2026-05-14	Subscription Payment
4791	437	99.00	2026-04-14	Subscription Payment
4792	437	99.00	2026-03-15	Subscription Payment
4793	437	99.00	2026-02-13	Subscription Payment
4794	437	99.00	2026-01-14	Subscription Payment
4795	437	99.00	2025-12-15	Subscription Payment
4796	437	99.00	2025-11-15	Subscription Payment
4797	437	99.00	2025-10-16	Subscription Payment
4798	438	59.00	2026-09-11	Subscription Payment
4799	438	59.00	2026-08-12	Subscription Payment
4800	438	59.00	2026-07-13	Subscription Payment
4801	438	59.00	2026-06-13	Subscription Payment
4802	438	59.00	2026-05-14	Subscription Payment
4803	438	59.00	2026-04-14	Subscription Payment
4804	438	59.00	2026-03-15	Subscription Payment
4805	438	59.00	2026-02-13	Subscription Payment
4806	438	59.00	2026-01-14	Subscription Payment
4807	438	59.00	2025-12-15	Subscription Payment
4808	438	59.00	2025-11-15	Subscription Payment
4809	438	59.00	2025-10-16	Subscription Payment
4810	439	99.00	2026-09-11	Subscription Payment
4811	439	99.00	2026-08-12	Subscription Payment
4812	439	99.00	2026-07-13	Subscription Payment
4813	439	99.00	2026-06-13	Subscription Payment
4814	439	99.00	2026-05-14	Subscription Payment
4815	439	99.00	2026-04-14	Subscription Payment
4816	439	99.00	2026-03-15	Subscription Payment
4817	439	99.00	2026-02-13	Subscription Payment
4818	439	99.00	2026-01-14	Subscription Payment
4819	439	99.00	2025-12-15	Subscription Payment
4820	439	99.00	2025-11-15	Subscription Payment
4821	439	99.00	2025-10-16	Subscription Payment
4822	440	29.00	2026-09-11	Subscription Payment
4823	440	29.00	2026-08-12	Subscription Payment
4824	440	29.00	2026-07-13	Subscription Payment
4825	440	29.00	2026-06-13	Subscription Payment
4826	440	29.00	2026-05-14	Subscription Payment
4827	440	29.00	2026-04-14	Subscription Payment
4828	440	29.00	2026-03-15	Subscription Payment
4829	440	29.00	2026-02-13	Subscription Payment
4830	440	29.00	2026-01-14	Subscription Payment
4831	440	29.00	2025-12-15	Subscription Payment
4832	440	29.00	2025-11-15	Subscription Payment
4833	440	29.00	2025-10-16	Subscription Payment
4834	441	59.00	2026-09-11	Subscription Payment
4835	441	59.00	2026-08-12	Subscription Payment
4836	441	59.00	2026-07-13	Subscription Payment
4837	441	59.00	2026-06-13	Subscription Payment
4838	441	59.00	2026-05-14	Subscription Payment
4839	441	59.00	2026-04-14	Subscription Payment
4840	441	59.00	2026-03-15	Subscription Payment
4841	441	59.00	2026-02-13	Subscription Payment
4842	441	59.00	2026-01-14	Subscription Payment
4843	441	59.00	2025-12-15	Subscription Payment
4844	441	59.00	2025-11-15	Subscription Payment
4845	441	59.00	2025-10-16	Subscription Payment
4846	442	59.00	2026-09-11	Subscription Payment
4847	442	59.00	2026-08-12	Subscription Payment
4848	442	59.00	2026-07-13	Subscription Payment
4849	442	59.00	2026-06-13	Subscription Payment
4850	442	59.00	2026-05-14	Subscription Payment
4851	442	59.00	2026-04-14	Subscription Payment
4852	442	59.00	2026-03-15	Subscription Payment
4853	442	59.00	2026-02-13	Subscription Payment
4854	442	59.00	2026-01-14	Subscription Payment
4855	442	59.00	2025-12-15	Subscription Payment
4856	442	59.00	2025-11-15	Subscription Payment
4857	442	59.00	2025-10-16	Subscription Payment
4858	443	59.00	2026-09-11	Subscription Payment
4859	443	59.00	2026-08-12	Subscription Payment
4860	443	59.00	2026-07-13	Subscription Payment
4861	443	59.00	2026-06-13	Subscription Payment
4862	443	59.00	2026-05-14	Subscription Payment
4863	443	59.00	2026-04-14	Subscription Payment
4864	443	59.00	2026-03-15	Subscription Payment
4865	443	59.00	2026-02-13	Subscription Payment
4866	443	59.00	2026-01-14	Subscription Payment
4867	443	59.00	2025-12-15	Subscription Payment
4868	443	59.00	2025-11-15	Subscription Payment
4869	443	59.00	2025-10-16	Subscription Payment
4870	444	29.00	2026-09-11	Subscription Payment
4871	444	29.00	2026-08-12	Subscription Payment
4872	444	29.00	2026-07-13	Subscription Payment
4873	444	29.00	2026-06-13	Subscription Payment
4874	444	29.00	2026-05-14	Subscription Payment
4875	444	29.00	2026-04-14	Subscription Payment
4876	444	29.00	2026-03-15	Subscription Payment
4877	444	29.00	2026-02-13	Subscription Payment
4878	444	29.00	2026-01-14	Subscription Payment
4879	444	29.00	2025-12-15	Subscription Payment
4880	444	29.00	2025-11-15	Subscription Payment
4881	444	29.00	2025-10-16	Subscription Payment
4882	445	99.00	2026-09-11	Subscription Payment
4883	445	99.00	2026-08-12	Subscription Payment
4884	445	99.00	2026-07-13	Subscription Payment
4885	445	99.00	2026-06-13	Subscription Payment
4886	445	99.00	2026-05-14	Subscription Payment
4887	445	99.00	2026-04-14	Subscription Payment
4888	445	99.00	2026-03-15	Subscription Payment
4889	445	99.00	2026-02-13	Subscription Payment
4890	445	99.00	2026-01-14	Subscription Payment
4891	445	99.00	2025-12-15	Subscription Payment
4892	445	99.00	2025-11-15	Subscription Payment
4893	445	99.00	2025-10-16	Subscription Payment
4894	446	29.00	2026-09-11	Subscription Payment
4895	446	29.00	2026-08-12	Subscription Payment
4896	446	29.00	2026-07-13	Subscription Payment
4897	446	29.00	2026-06-13	Subscription Payment
4898	446	29.00	2026-05-14	Subscription Payment
4899	446	29.00	2026-04-14	Subscription Payment
4900	446	29.00	2026-03-15	Subscription Payment
4901	446	29.00	2026-02-13	Subscription Payment
4902	446	29.00	2026-01-14	Subscription Payment
4903	446	29.00	2025-12-15	Subscription Payment
4904	446	29.00	2025-11-15	Subscription Payment
4905	446	29.00	2025-10-16	Subscription Payment
4906	447	29.00	2026-09-11	Subscription Payment
4907	447	29.00	2026-08-12	Subscription Payment
4908	447	29.00	2026-07-13	Subscription Payment
4909	447	29.00	2026-06-13	Subscription Payment
4910	447	29.00	2026-05-14	Subscription Payment
4911	447	29.00	2026-04-14	Subscription Payment
4912	447	29.00	2026-03-15	Subscription Payment
4913	447	29.00	2026-02-13	Subscription Payment
4914	447	29.00	2026-01-14	Subscription Payment
4915	447	29.00	2025-12-15	Subscription Payment
4916	447	29.00	2025-11-15	Subscription Payment
4917	447	29.00	2025-10-16	Subscription Payment
4918	448	59.00	2026-09-11	Subscription Payment
4919	448	59.00	2026-08-12	Subscription Payment
4920	448	59.00	2026-07-13	Subscription Payment
4921	448	59.00	2026-06-13	Subscription Payment
4922	448	59.00	2026-05-14	Subscription Payment
4923	448	59.00	2026-04-14	Subscription Payment
4924	448	59.00	2026-03-15	Subscription Payment
4925	448	59.00	2026-02-13	Subscription Payment
4926	448	59.00	2026-01-14	Subscription Payment
4927	448	59.00	2025-12-15	Subscription Payment
4928	448	59.00	2025-11-15	Subscription Payment
4929	448	59.00	2025-10-16	Subscription Payment
4930	449	99.00	2026-09-11	Subscription Payment
4931	449	99.00	2026-08-12	Subscription Payment
4932	449	99.00	2026-07-13	Subscription Payment
4933	449	99.00	2026-06-13	Subscription Payment
4934	449	99.00	2026-05-14	Subscription Payment
4935	449	99.00	2026-04-14	Subscription Payment
4936	449	99.00	2026-03-15	Subscription Payment
4937	449	99.00	2026-02-13	Subscription Payment
4938	449	99.00	2026-01-14	Subscription Payment
4939	450	99.00	2026-09-11	Subscription Payment
4940	450	99.00	2026-08-12	Subscription Payment
4941	450	99.00	2026-07-13	Subscription Payment
4942	450	99.00	2026-06-13	Subscription Payment
4943	450	99.00	2026-05-14	Subscription Payment
4944	450	99.00	2026-04-14	Subscription Payment
4945	450	99.00	2026-03-15	Subscription Payment
4946	450	99.00	2026-02-13	Subscription Payment
4947	450	99.00	2026-01-14	Subscription Payment
4948	450	99.00	2025-12-15	Subscription Payment
4949	450	99.00	2025-11-15	Subscription Payment
4950	450	99.00	2025-10-16	Subscription Payment
4951	451	59.00	2026-09-11	Subscription Payment
4952	451	59.00	2026-08-12	Subscription Payment
4953	451	59.00	2026-07-13	Subscription Payment
4954	451	59.00	2026-06-13	Subscription Payment
4955	451	59.00	2026-05-14	Subscription Payment
4956	451	59.00	2026-04-14	Subscription Payment
4957	451	59.00	2026-03-15	Subscription Payment
4958	451	59.00	2026-02-13	Subscription Payment
4959	451	59.00	2026-01-14	Subscription Payment
4960	451	59.00	2025-12-15	Subscription Payment
4961	451	59.00	2025-11-15	Subscription Payment
4962	451	59.00	2025-10-16	Subscription Payment
4963	452	59.00	2026-09-11	Subscription Payment
4964	452	59.00	2026-08-12	Subscription Payment
4965	452	59.00	2026-07-13	Subscription Payment
4966	452	59.00	2026-06-13	Subscription Payment
4967	452	59.00	2026-05-14	Subscription Payment
4968	452	59.00	2026-04-14	Subscription Payment
4969	452	59.00	2026-03-15	Subscription Payment
4970	452	59.00	2026-02-13	Subscription Payment
4971	452	59.00	2026-01-14	Subscription Payment
4972	452	59.00	2025-12-15	Subscription Payment
4973	452	59.00	2025-11-15	Subscription Payment
4974	452	59.00	2025-10-16	Subscription Payment
4975	453	59.00	2026-09-11	Subscription Payment
4976	453	59.00	2026-08-12	Subscription Payment
4977	453	59.00	2026-07-13	Subscription Payment
4978	453	59.00	2026-06-13	Subscription Payment
4979	453	59.00	2026-05-14	Subscription Payment
4980	453	59.00	2026-04-14	Subscription Payment
4981	453	59.00	2026-03-15	Subscription Payment
4982	453	59.00	2026-02-13	Subscription Payment
4983	453	59.00	2026-01-14	Subscription Payment
4984	453	59.00	2025-12-15	Subscription Payment
4985	453	59.00	2025-11-15	Subscription Payment
4986	453	59.00	2025-10-16	Subscription Payment
4987	454	99.00	2026-09-11	Subscription Payment
4988	454	99.00	2026-08-12	Subscription Payment
4989	454	99.00	2026-07-13	Subscription Payment
4990	454	99.00	2026-06-13	Subscription Payment
4991	454	99.00	2026-05-14	Subscription Payment
4992	454	99.00	2026-04-14	Subscription Payment
4993	454	99.00	2026-03-15	Subscription Payment
4994	454	99.00	2026-02-13	Subscription Payment
4995	454	99.00	2026-01-14	Subscription Payment
4996	454	99.00	2025-12-15	Subscription Payment
4997	454	99.00	2025-11-15	Subscription Payment
4998	454	99.00	2025-10-16	Subscription Payment
4999	455	99.00	2026-09-11	Subscription Payment
5000	455	99.00	2026-08-12	Subscription Payment
5001	455	99.00	2026-07-13	Subscription Payment
5002	455	99.00	2026-06-13	Subscription Payment
5003	455	99.00	2026-05-14	Subscription Payment
5004	455	99.00	2026-04-14	Subscription Payment
5005	455	99.00	2026-03-15	Subscription Payment
5006	455	99.00	2026-02-13	Subscription Payment
5007	455	99.00	2026-01-14	Subscription Payment
5008	455	99.00	2025-12-15	Subscription Payment
5009	455	99.00	2025-11-15	Subscription Payment
5010	456	29.00	2026-09-11	Subscription Payment
5011	456	29.00	2026-08-12	Subscription Payment
5012	456	29.00	2026-07-13	Subscription Payment
5013	456	29.00	2026-06-13	Subscription Payment
5014	456	29.00	2026-05-14	Subscription Payment
5015	456	29.00	2026-04-14	Subscription Payment
5016	456	29.00	2026-03-15	Subscription Payment
5017	456	29.00	2026-02-13	Subscription Payment
5018	456	29.00	2026-01-14	Subscription Payment
5019	457	59.00	2026-09-11	Subscription Payment
5020	457	59.00	2026-08-12	Subscription Payment
5021	457	59.00	2026-07-13	Subscription Payment
5022	457	59.00	2026-06-13	Subscription Payment
5023	457	59.00	2026-05-14	Subscription Payment
5024	457	59.00	2026-04-14	Subscription Payment
5025	457	59.00	2026-03-15	Subscription Payment
5026	457	59.00	2026-02-13	Subscription Payment
5027	457	59.00	2026-01-14	Subscription Payment
5028	457	59.00	2025-12-15	Subscription Payment
5029	457	59.00	2025-11-15	Subscription Payment
5030	457	59.00	2025-10-16	Subscription Payment
5031	458	59.00	2026-09-11	Subscription Payment
5032	458	59.00	2026-08-12	Subscription Payment
5033	458	59.00	2026-07-13	Subscription Payment
5034	458	59.00	2026-06-13	Subscription Payment
5035	458	59.00	2026-05-14	Subscription Payment
5036	458	59.00	2026-04-14	Subscription Payment
5037	458	59.00	2026-03-15	Subscription Payment
5038	458	59.00	2026-02-13	Subscription Payment
5039	458	59.00	2026-01-14	Subscription Payment
5040	458	59.00	2025-12-15	Subscription Payment
5041	458	59.00	2025-11-15	Subscription Payment
5042	458	59.00	2025-10-16	Subscription Payment
5043	459	99.00	2026-09-11	Subscription Payment
5044	459	99.00	2026-08-12	Subscription Payment
5045	459	99.00	2026-07-13	Subscription Payment
5046	459	99.00	2026-06-13	Subscription Payment
5047	459	99.00	2026-05-14	Subscription Payment
5048	459	99.00	2026-04-14	Subscription Payment
5049	459	99.00	2026-03-15	Subscription Payment
5050	459	99.00	2026-02-13	Subscription Payment
5051	459	99.00	2026-01-14	Subscription Payment
5052	459	99.00	2025-12-15	Subscription Payment
5053	459	99.00	2025-11-15	Subscription Payment
5054	459	99.00	2025-10-16	Subscription Payment
5055	460	59.00	2026-09-11	Subscription Payment
5056	460	59.00	2026-08-12	Subscription Payment
5057	460	59.00	2026-07-13	Subscription Payment
5058	460	59.00	2026-06-13	Subscription Payment
5059	460	59.00	2026-05-14	Subscription Payment
5060	460	59.00	2026-04-14	Subscription Payment
5061	460	59.00	2026-03-15	Subscription Payment
5062	460	59.00	2026-02-13	Subscription Payment
5063	460	59.00	2026-01-14	Subscription Payment
5064	460	59.00	2025-12-15	Subscription Payment
5065	460	59.00	2025-11-15	Subscription Payment
5066	460	59.00	2025-10-16	Subscription Payment
5067	461	29.00	2026-09-11	Subscription Payment
5068	461	29.00	2026-08-12	Subscription Payment
5069	461	29.00	2026-07-13	Subscription Payment
5070	461	29.00	2026-06-13	Subscription Payment
5071	461	29.00	2026-05-14	Subscription Payment
5072	461	29.00	2026-04-14	Subscription Payment
5073	461	29.00	2026-03-15	Subscription Payment
5074	461	29.00	2026-02-13	Subscription Payment
5075	461	29.00	2026-01-14	Subscription Payment
5076	461	29.00	2025-12-15	Subscription Payment
5077	461	29.00	2025-11-15	Subscription Payment
5078	461	29.00	2025-10-16	Subscription Payment
5079	462	59.00	2026-09-11	Subscription Payment
5080	462	59.00	2026-08-12	Subscription Payment
5081	462	59.00	2026-07-13	Subscription Payment
5082	462	59.00	2026-06-13	Subscription Payment
5083	462	59.00	2026-05-14	Subscription Payment
5084	462	59.00	2026-04-14	Subscription Payment
5085	462	59.00	2026-03-15	Subscription Payment
5086	462	59.00	2026-02-13	Subscription Payment
5087	462	59.00	2026-01-14	Subscription Payment
5088	462	59.00	2025-12-15	Subscription Payment
5089	462	59.00	2025-11-15	Subscription Payment
5090	462	59.00	2025-10-16	Subscription Payment
5091	463	99.00	2026-09-11	Subscription Payment
5092	463	99.00	2026-08-12	Subscription Payment
5093	463	99.00	2026-07-13	Subscription Payment
5094	463	99.00	2026-06-13	Subscription Payment
5095	463	99.00	2026-05-14	Subscription Payment
5096	463	99.00	2026-04-14	Subscription Payment
5097	463	99.00	2026-03-15	Subscription Payment
5098	463	99.00	2026-02-13	Subscription Payment
5099	463	99.00	2026-01-14	Subscription Payment
5100	464	29.00	2026-09-11	Subscription Payment
5101	464	29.00	2026-08-12	Subscription Payment
5102	464	29.00	2026-07-13	Subscription Payment
5103	464	29.00	2026-06-13	Subscription Payment
5104	464	29.00	2026-05-14	Subscription Payment
5105	464	29.00	2026-04-14	Subscription Payment
5106	464	29.00	2026-03-15	Subscription Payment
5107	464	29.00	2026-02-13	Subscription Payment
5108	464	29.00	2026-01-14	Subscription Payment
5109	464	29.00	2025-12-15	Subscription Payment
5110	464	29.00	2025-11-15	Subscription Payment
5111	464	29.00	2025-10-16	Subscription Payment
5112	465	59.00	2026-09-11	Subscription Payment
5113	465	59.00	2026-08-12	Subscription Payment
5114	465	59.00	2026-07-13	Subscription Payment
5115	466	99.00	2026-09-11	Subscription Payment
5116	466	99.00	2026-08-12	Subscription Payment
5117	466	99.00	2026-07-13	Subscription Payment
5118	466	99.00	2026-06-13	Subscription Payment
5119	466	99.00	2026-05-14	Subscription Payment
5120	466	99.00	2026-04-14	Subscription Payment
5121	466	99.00	2026-03-15	Subscription Payment
5122	466	99.00	2026-02-13	Subscription Payment
5123	466	99.00	2026-01-14	Subscription Payment
5124	466	99.00	2025-12-15	Subscription Payment
5125	466	99.00	2025-11-15	Subscription Payment
5126	466	99.00	2025-10-16	Subscription Payment
5127	467	29.00	2026-09-11	Subscription Payment
5128	467	29.00	2026-08-12	Subscription Payment
5129	467	29.00	2026-07-13	Subscription Payment
5130	467	29.00	2026-06-13	Subscription Payment
5131	467	29.00	2026-05-14	Subscription Payment
5132	467	29.00	2026-04-14	Subscription Payment
5133	467	29.00	2026-03-15	Subscription Payment
5134	467	29.00	2026-02-13	Subscription Payment
5135	467	29.00	2026-01-14	Subscription Payment
5136	467	29.00	2025-12-15	Subscription Payment
5137	467	29.00	2025-11-15	Subscription Payment
5138	467	29.00	2025-10-16	Subscription Payment
5139	468	59.00	2026-09-11	Subscription Payment
5140	468	59.00	2026-08-12	Subscription Payment
5141	468	59.00	2026-07-13	Subscription Payment
5142	468	59.00	2026-06-13	Subscription Payment
5143	468	59.00	2026-05-14	Subscription Payment
5144	468	59.00	2026-04-14	Subscription Payment
5145	468	59.00	2026-03-15	Subscription Payment
5146	468	59.00	2026-02-13	Subscription Payment
5147	468	59.00	2026-01-14	Subscription Payment
5148	468	59.00	2025-12-15	Subscription Payment
5149	468	59.00	2025-11-15	Subscription Payment
5150	468	59.00	2025-10-16	Subscription Payment
5151	469	29.00	2026-09-11	Subscription Payment
5152	469	29.00	2026-08-12	Subscription Payment
5153	469	29.00	2026-07-13	Subscription Payment
5154	469	29.00	2026-06-13	Subscription Payment
5155	469	29.00	2026-05-14	Subscription Payment
5156	469	29.00	2026-04-14	Subscription Payment
5157	469	29.00	2026-03-15	Subscription Payment
5158	469	29.00	2026-02-13	Subscription Payment
5159	469	29.00	2026-01-14	Subscription Payment
5160	469	29.00	2025-12-15	Subscription Payment
5161	469	29.00	2025-11-15	Subscription Payment
5162	469	29.00	2025-10-16	Subscription Payment
5163	470	59.00	2026-09-11	Subscription Payment
5164	470	59.00	2026-08-12	Subscription Payment
5165	470	59.00	2026-07-13	Subscription Payment
5166	470	59.00	2026-06-13	Subscription Payment
5167	470	59.00	2026-05-14	Subscription Payment
5168	470	59.00	2026-04-14	Subscription Payment
5169	470	59.00	2026-03-15	Subscription Payment
5170	470	59.00	2026-02-13	Subscription Payment
5171	470	59.00	2026-01-14	Subscription Payment
5172	470	59.00	2025-12-15	Subscription Payment
5173	470	59.00	2025-11-15	Subscription Payment
5174	470	59.00	2025-10-16	Subscription Payment
5175	471	59.00	2026-09-11	Subscription Payment
5176	471	59.00	2026-08-12	Subscription Payment
5177	471	59.00	2026-07-13	Subscription Payment
5178	471	59.00	2026-06-13	Subscription Payment
5179	471	59.00	2026-05-14	Subscription Payment
5180	471	59.00	2026-04-14	Subscription Payment
5181	471	59.00	2026-03-15	Subscription Payment
5182	471	59.00	2026-02-13	Subscription Payment
5183	471	59.00	2026-01-14	Subscription Payment
5184	471	59.00	2025-12-15	Subscription Payment
5185	471	59.00	2025-11-15	Subscription Payment
5186	471	59.00	2025-10-16	Subscription Payment
5187	472	59.00	2026-09-11	Subscription Payment
5188	472	59.00	2026-08-12	Subscription Payment
5189	472	59.00	2026-07-13	Subscription Payment
5190	472	59.00	2026-06-13	Subscription Payment
5191	472	59.00	2026-05-14	Subscription Payment
5192	472	59.00	2026-04-14	Subscription Payment
5193	472	59.00	2026-03-15	Subscription Payment
5194	472	59.00	2026-02-13	Subscription Payment
5195	472	59.00	2026-01-14	Subscription Payment
5196	472	59.00	2025-12-15	Subscription Payment
5197	472	59.00	2025-11-15	Subscription Payment
5198	473	99.00	2026-09-11	Subscription Payment
5199	473	99.00	2026-08-12	Subscription Payment
5200	473	99.00	2026-07-13	Subscription Payment
5201	473	99.00	2026-06-13	Subscription Payment
5202	473	99.00	2026-05-14	Subscription Payment
5203	473	99.00	2026-04-14	Subscription Payment
5204	473	99.00	2026-03-15	Subscription Payment
5205	473	99.00	2026-02-13	Subscription Payment
5206	473	99.00	2026-01-14	Subscription Payment
5207	473	99.00	2025-12-15	Subscription Payment
5208	473	99.00	2025-11-15	Subscription Payment
5209	473	99.00	2025-10-16	Subscription Payment
5210	474	99.00	2026-09-11	Subscription Payment
5211	474	99.00	2026-08-12	Subscription Payment
5212	474	99.00	2026-07-13	Subscription Payment
5213	474	99.00	2026-06-13	Subscription Payment
5214	474	99.00	2026-05-14	Subscription Payment
5215	474	99.00	2026-04-14	Subscription Payment
5216	474	99.00	2026-03-15	Subscription Payment
5217	474	99.00	2026-02-13	Subscription Payment
5218	474	99.00	2026-01-14	Subscription Payment
5219	474	99.00	2025-12-15	Subscription Payment
5220	474	99.00	2025-11-15	Subscription Payment
5221	474	99.00	2025-10-16	Subscription Payment
5222	475	99.00	2026-09-11	Subscription Payment
5223	475	99.00	2026-08-12	Subscription Payment
5224	475	99.00	2026-07-13	Subscription Payment
5225	475	99.00	2026-06-13	Subscription Payment
5226	475	99.00	2026-05-14	Subscription Payment
5227	475	99.00	2026-04-14	Subscription Payment
5228	475	99.00	2026-03-15	Subscription Payment
5229	475	99.00	2026-02-13	Subscription Payment
5230	475	99.00	2026-01-14	Subscription Payment
5231	475	99.00	2025-12-15	Subscription Payment
5232	475	99.00	2025-11-15	Subscription Payment
5233	475	99.00	2025-10-16	Subscription Payment
5234	476	29.00	2026-09-11	Subscription Payment
5235	476	29.00	2026-08-12	Subscription Payment
5236	476	29.00	2026-07-13	Subscription Payment
5237	476	29.00	2026-06-13	Subscription Payment
5238	476	29.00	2026-05-14	Subscription Payment
5239	476	29.00	2026-04-14	Subscription Payment
5240	476	29.00	2026-03-15	Subscription Payment
5241	476	29.00	2026-02-13	Subscription Payment
5242	476	29.00	2026-01-14	Subscription Payment
5243	476	29.00	2025-12-15	Subscription Payment
5244	476	29.00	2025-11-15	Subscription Payment
5245	476	29.00	2025-10-16	Subscription Payment
5246	477	59.00	2026-09-11	Subscription Payment
5247	477	59.00	2026-08-12	Subscription Payment
5248	477	59.00	2026-07-13	Subscription Payment
5249	477	59.00	2026-06-13	Subscription Payment
5250	477	59.00	2026-05-14	Subscription Payment
5251	477	59.00	2026-04-14	Subscription Payment
5252	477	59.00	2026-03-15	Subscription Payment
5253	477	59.00	2026-02-13	Subscription Payment
5254	477	59.00	2026-01-14	Subscription Payment
5255	477	59.00	2025-12-15	Subscription Payment
5256	477	59.00	2025-11-15	Subscription Payment
5257	477	59.00	2025-10-16	Subscription Payment
5258	478	29.00	2026-09-11	Subscription Payment
5259	478	29.00	2026-08-12	Subscription Payment
5260	478	29.00	2026-07-13	Subscription Payment
5261	478	29.00	2026-06-13	Subscription Payment
5262	478	29.00	2026-05-14	Subscription Payment
5263	479	29.00	2026-09-11	Subscription Payment
5264	479	29.00	2026-08-12	Subscription Payment
5265	479	29.00	2026-07-13	Subscription Payment
5266	479	29.00	2026-06-13	Subscription Payment
5267	479	29.00	2026-05-14	Subscription Payment
5268	479	29.00	2026-04-14	Subscription Payment
5269	479	29.00	2026-03-15	Subscription Payment
5270	479	29.00	2026-02-13	Subscription Payment
5271	479	29.00	2026-01-14	Subscription Payment
5272	479	29.00	2025-12-15	Subscription Payment
5273	479	29.00	2025-11-15	Subscription Payment
5274	479	29.00	2025-10-16	Subscription Payment
5275	480	99.00	2026-09-11	Subscription Payment
5276	480	99.00	2026-08-12	Subscription Payment
5277	480	99.00	2026-07-13	Subscription Payment
5278	480	99.00	2026-06-13	Subscription Payment
5279	480	99.00	2026-05-14	Subscription Payment
5280	480	99.00	2026-04-14	Subscription Payment
5281	480	99.00	2026-03-15	Subscription Payment
5282	480	99.00	2026-02-13	Subscription Payment
5283	480	99.00	2026-01-14	Subscription Payment
5284	480	99.00	2025-12-15	Subscription Payment
5285	480	99.00	2025-11-15	Subscription Payment
5286	480	99.00	2025-10-16	Subscription Payment
5287	481	59.00	2026-09-11	Subscription Payment
5288	481	59.00	2026-08-12	Subscription Payment
5289	481	59.00	2026-07-13	Subscription Payment
5290	481	59.00	2026-06-13	Subscription Payment
5291	481	59.00	2026-05-14	Subscription Payment
5292	481	59.00	2026-04-14	Subscription Payment
5293	481	59.00	2026-03-15	Subscription Payment
5294	481	59.00	2026-02-13	Subscription Payment
5295	481	59.00	2026-01-14	Subscription Payment
5296	481	59.00	2025-12-15	Subscription Payment
5297	481	59.00	2025-11-15	Subscription Payment
5298	481	59.00	2025-10-16	Subscription Payment
5299	482	99.00	2026-09-11	Subscription Payment
5300	482	99.00	2026-08-12	Subscription Payment
5301	482	99.00	2026-07-13	Subscription Payment
5302	482	99.00	2026-06-13	Subscription Payment
5303	482	99.00	2026-05-14	Subscription Payment
5304	482	99.00	2026-04-14	Subscription Payment
5305	482	99.00	2026-03-15	Subscription Payment
5306	482	99.00	2026-02-13	Subscription Payment
5307	482	99.00	2026-01-14	Subscription Payment
5308	482	99.00	2025-12-15	Subscription Payment
5309	482	99.00	2025-11-15	Subscription Payment
5310	482	99.00	2025-10-16	Subscription Payment
5311	483	29.00	2026-09-11	Subscription Payment
5312	483	29.00	2026-08-12	Subscription Payment
5313	483	29.00	2026-07-13	Subscription Payment
5314	483	29.00	2026-06-13	Subscription Payment
5315	483	29.00	2026-05-14	Subscription Payment
5316	483	29.00	2026-04-14	Subscription Payment
5317	483	29.00	2026-03-15	Subscription Payment
5318	483	29.00	2026-02-13	Subscription Payment
5319	483	29.00	2026-01-14	Subscription Payment
5320	483	29.00	2025-12-15	Subscription Payment
5321	483	29.00	2025-11-15	Subscription Payment
5322	483	29.00	2025-10-16	Subscription Payment
5323	484	29.00	2026-09-11	Subscription Payment
5324	484	29.00	2026-08-12	Subscription Payment
5325	484	29.00	2026-07-13	Subscription Payment
5326	484	29.00	2026-06-13	Subscription Payment
5327	484	29.00	2026-05-14	Subscription Payment
5328	484	29.00	2026-04-14	Subscription Payment
5329	484	29.00	2026-03-15	Subscription Payment
5330	484	29.00	2026-02-13	Subscription Payment
5331	484	29.00	2026-01-14	Subscription Payment
5332	484	29.00	2025-12-15	Subscription Payment
5333	484	29.00	2025-11-15	Subscription Payment
5334	484	29.00	2025-10-16	Subscription Payment
5335	485	29.00	2026-09-11	Subscription Payment
5336	485	29.00	2026-08-12	Subscription Payment
5337	485	29.00	2026-07-13	Subscription Payment
5338	485	29.00	2026-06-13	Subscription Payment
5339	485	29.00	2026-05-14	Subscription Payment
5340	485	29.00	2026-04-14	Subscription Payment
5341	485	29.00	2026-03-15	Subscription Payment
5342	485	29.00	2026-02-13	Subscription Payment
5343	485	29.00	2026-01-14	Subscription Payment
5344	485	29.00	2025-12-15	Subscription Payment
5345	485	29.00	2025-11-15	Subscription Payment
5346	485	29.00	2025-10-16	Subscription Payment
5347	486	29.00	2026-09-11	Subscription Payment
5348	486	29.00	2026-08-12	Subscription Payment
5349	486	29.00	2026-07-13	Subscription Payment
5350	486	29.00	2026-06-13	Subscription Payment
5351	486	29.00	2026-05-14	Subscription Payment
5352	486	29.00	2026-04-14	Subscription Payment
5353	486	29.00	2026-03-15	Subscription Payment
5354	486	29.00	2026-02-13	Subscription Payment
5355	486	29.00	2026-01-14	Subscription Payment
5356	486	29.00	2025-12-15	Subscription Payment
5357	486	29.00	2025-11-15	Subscription Payment
5358	486	29.00	2025-10-16	Subscription Payment
5359	487	59.00	2026-09-11	Subscription Payment
5360	487	59.00	2026-08-12	Subscription Payment
5361	487	59.00	2026-07-13	Subscription Payment
5362	487	59.00	2026-06-13	Subscription Payment
5363	487	59.00	2026-05-14	Subscription Payment
5364	487	59.00	2026-04-14	Subscription Payment
5365	487	59.00	2026-03-15	Subscription Payment
5366	487	59.00	2026-02-13	Subscription Payment
5367	487	59.00	2026-01-14	Subscription Payment
5368	487	59.00	2025-12-15	Subscription Payment
5369	487	59.00	2025-11-15	Subscription Payment
5370	487	59.00	2025-10-16	Subscription Payment
5371	488	59.00	2026-09-11	Subscription Payment
5372	488	59.00	2026-08-12	Subscription Payment
5373	488	59.00	2026-07-13	Subscription Payment
5374	488	59.00	2026-06-13	Subscription Payment
5375	488	59.00	2026-05-14	Subscription Payment
5376	488	59.00	2026-04-14	Subscription Payment
5377	488	59.00	2026-03-15	Subscription Payment
5378	488	59.00	2026-02-13	Subscription Payment
5379	488	59.00	2026-01-14	Subscription Payment
5380	488	59.00	2025-12-15	Subscription Payment
5381	488	59.00	2025-11-15	Subscription Payment
5382	488	59.00	2025-10-16	Subscription Payment
5383	489	59.00	2026-09-11	Subscription Payment
5384	489	59.00	2026-08-12	Subscription Payment
5385	489	59.00	2026-07-13	Subscription Payment
5386	489	59.00	2026-06-13	Subscription Payment
5387	489	59.00	2026-05-14	Subscription Payment
5388	489	59.00	2026-04-14	Subscription Payment
5389	489	59.00	2026-03-15	Subscription Payment
5390	489	59.00	2026-02-13	Subscription Payment
5391	489	59.00	2026-01-14	Subscription Payment
5392	489	59.00	2025-12-15	Subscription Payment
5393	489	59.00	2025-11-15	Subscription Payment
5394	489	59.00	2025-10-16	Subscription Payment
5395	490	59.00	2026-09-11	Subscription Payment
5396	490	59.00	2026-08-12	Subscription Payment
5397	490	59.00	2026-07-13	Subscription Payment
5398	490	59.00	2026-06-13	Subscription Payment
5399	490	59.00	2026-05-14	Subscription Payment
5400	490	59.00	2026-04-14	Subscription Payment
5401	490	59.00	2026-03-15	Subscription Payment
5402	490	59.00	2026-02-13	Subscription Payment
5403	490	59.00	2026-01-14	Subscription Payment
5404	490	59.00	2025-12-15	Subscription Payment
5405	490	59.00	2025-11-15	Subscription Payment
5406	491	29.00	2026-09-11	Subscription Payment
5407	491	29.00	2026-08-12	Subscription Payment
5408	491	29.00	2026-07-13	Subscription Payment
5409	491	29.00	2026-06-13	Subscription Payment
5410	491	29.00	2026-05-14	Subscription Payment
5411	491	29.00	2026-04-14	Subscription Payment
5412	491	29.00	2026-03-15	Subscription Payment
5413	491	29.00	2026-02-13	Subscription Payment
5414	491	29.00	2026-01-14	Subscription Payment
5415	491	29.00	2025-12-15	Subscription Payment
5416	491	29.00	2025-11-15	Subscription Payment
5417	491	29.00	2025-10-16	Subscription Payment
5418	492	29.00	2026-09-11	Subscription Payment
5419	492	29.00	2026-08-12	Subscription Payment
5420	492	29.00	2026-07-13	Subscription Payment
5421	492	29.00	2026-06-13	Subscription Payment
5422	492	29.00	2026-05-14	Subscription Payment
5423	492	29.00	2026-04-14	Subscription Payment
5424	492	29.00	2026-03-15	Subscription Payment
5425	493	99.00	2026-09-11	Subscription Payment
5426	493	99.00	2026-08-12	Subscription Payment
5427	493	99.00	2026-07-13	Subscription Payment
5428	493	99.00	2026-06-13	Subscription Payment
5429	493	99.00	2026-05-14	Subscription Payment
5430	493	99.00	2026-04-14	Subscription Payment
5431	493	99.00	2026-03-15	Subscription Payment
5432	493	99.00	2026-02-13	Subscription Payment
5433	493	99.00	2026-01-14	Subscription Payment
5434	493	99.00	2025-12-15	Subscription Payment
5435	493	99.00	2025-11-15	Subscription Payment
5436	493	99.00	2025-10-16	Subscription Payment
5437	494	29.00	2026-09-11	Subscription Payment
5438	494	29.00	2026-08-12	Subscription Payment
5439	494	29.00	2026-07-13	Subscription Payment
5440	495	29.00	2026-09-11	Subscription Payment
5441	495	29.00	2026-08-12	Subscription Payment
5442	495	29.00	2026-07-13	Subscription Payment
5443	495	29.00	2026-06-13	Subscription Payment
5444	495	29.00	2026-05-14	Subscription Payment
5445	495	29.00	2026-04-14	Subscription Payment
5446	495	29.00	2026-03-15	Subscription Payment
5447	495	29.00	2026-02-13	Subscription Payment
5448	495	29.00	2026-01-14	Subscription Payment
5449	495	29.00	2025-12-15	Subscription Payment
5450	495	29.00	2025-11-15	Subscription Payment
5451	495	29.00	2025-10-16	Subscription Payment
5452	496	59.00	2026-09-11	Subscription Payment
5453	496	59.00	2026-08-12	Subscription Payment
5454	496	59.00	2026-07-13	Subscription Payment
5455	496	59.00	2026-06-13	Subscription Payment
5456	496	59.00	2026-05-14	Subscription Payment
5457	496	59.00	2026-04-14	Subscription Payment
5458	496	59.00	2026-03-15	Subscription Payment
5459	496	59.00	2026-02-13	Subscription Payment
5460	496	59.00	2026-01-14	Subscription Payment
5461	496	59.00	2025-12-15	Subscription Payment
5462	496	59.00	2025-11-15	Subscription Payment
5463	496	59.00	2025-10-16	Subscription Payment
5464	497	29.00	2026-09-11	Subscription Payment
5465	497	29.00	2026-08-12	Subscription Payment
5466	497	29.00	2026-07-13	Subscription Payment
5467	497	29.00	2026-06-13	Subscription Payment
5468	497	29.00	2026-05-14	Subscription Payment
5469	497	29.00	2026-04-14	Subscription Payment
5470	497	29.00	2026-03-15	Subscription Payment
5471	497	29.00	2026-02-13	Subscription Payment
5472	497	29.00	2026-01-14	Subscription Payment
5473	497	29.00	2025-12-15	Subscription Payment
5474	497	29.00	2025-11-15	Subscription Payment
5475	497	29.00	2025-10-16	Subscription Payment
5476	498	99.00	2026-09-11	Subscription Payment
5477	498	99.00	2026-08-12	Subscription Payment
5478	498	99.00	2026-07-13	Subscription Payment
5479	498	99.00	2026-06-13	Subscription Payment
5480	498	99.00	2026-05-14	Subscription Payment
5481	498	99.00	2026-04-14	Subscription Payment
5482	498	99.00	2026-03-15	Subscription Payment
5483	498	99.00	2026-02-13	Subscription Payment
5484	498	99.00	2026-01-14	Subscription Payment
5485	498	99.00	2025-12-15	Subscription Payment
5486	498	99.00	2025-11-15	Subscription Payment
5487	498	99.00	2025-10-16	Subscription Payment
5488	499	59.00	2026-09-11	Subscription Payment
5489	499	59.00	2026-08-12	Subscription Payment
5490	499	59.00	2026-07-13	Subscription Payment
5491	499	59.00	2026-06-13	Subscription Payment
5492	499	59.00	2026-05-14	Subscription Payment
5493	499	59.00	2026-04-14	Subscription Payment
5494	499	59.00	2026-03-15	Subscription Payment
5495	499	59.00	2026-02-13	Subscription Payment
5496	499	59.00	2026-01-14	Subscription Payment
5497	499	59.00	2025-12-15	Subscription Payment
5498	499	59.00	2025-11-15	Subscription Payment
5499	499	59.00	2025-10-16	Subscription Payment
5500	500	29.00	2026-09-11	Subscription Payment
5501	500	29.00	2026-08-12	Subscription Payment
5502	500	29.00	2026-07-13	Subscription Payment
5503	500	29.00	2026-06-13	Subscription Payment
5504	500	29.00	2026-05-14	Subscription Payment
5505	500	29.00	2026-04-14	Subscription Payment
5506	500	29.00	2026-03-15	Subscription Payment
5507	500	29.00	2026-02-13	Subscription Payment
5508	500	29.00	2026-01-14	Subscription Payment
5509	500	29.00	2025-12-15	Subscription Payment
5510	500	29.00	2025-11-15	Subscription Payment
5511	500	29.00	2025-10-16	Subscription Payment
\.


--
-- TOC entry 5067 (class 0 OID 0)
-- Dependencies: 219
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 500, true);


--
-- TOC entry 5068 (class 0 OID 0)
-- Dependencies: 227
-- Name: product_usage_usage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_usage_usage_id_seq', 1500, true);


--
-- TOC entry 5069 (class 0 OID 0)
-- Dependencies: 221
-- Name: subscriptions_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscriptions_subscription_id_seq', 500, true);


--
-- TOC entry 5070 (class 0 OID 0)
-- Dependencies: 225
-- Name: support_tickets_ticket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.support_tickets_ticket_id_seq', 1036, true);


--
-- TOC entry 5071 (class 0 OID 0)
-- Dependencies: 223
-- Name: transactions_transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transactions_transaction_id_seq', 5511, true);


-- Completed on 2026-09-18 21:49:19

--
-- PostgreSQL database dump complete
--

\unrestrict tfxyBRnPg5mvIeIb8psGUj9odpQfWg7swMnK9BWMd7BWIHVcrBtIYBDu2K8wQDg

