--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.18
-- Dumped by pg_dump version 10.4 (Ubuntu 10.4-2.pgdg16.04+1)

-- Started on 2018-10-04 17:26:31 -05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2183 (class 0 OID 16598)
-- Dependencies: 183
-- Data for Name: s_compania; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.s_compania VALUES (1, 'Dannasoft                ', 'Brian Eduardo Montenegro Tinaj', '1003677422001  ', 'El trbol, calle Caran N-250 y Echeverria          ', '0981747001     ', '062650786      ', 'www.ecuawebhosting.com   ', '               ', '                              ', 'brayanocpo@hotmail.es    ', '                         ');
INSERT INTO mod_administracion.s_compania VALUES (2, 'Florifrut                ', 'Pedro Luna                    ', '1001079126001  ', '                                                  ', '0978451260     ', '               ', '                         ', '               ', '                              ', 'asdasd@hotmail.es        ', '                         ');


--
-- TOC entry 2187 (class 0 OID 16622)
-- Dependencies: 187
-- Data for Name: s_perfil_usuario; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.s_perfil_usuario VALUES (1, 'Administrador                 ');
INSERT INTO mod_administracion.s_perfil_usuario VALUES (2, 'Usuario1                      ');
INSERT INTO mod_administracion.s_perfil_usuario VALUES (3, 'Usuario2                      ');
INSERT INTO mod_administracion.s_perfil_usuario VALUES (4, 'Usuario3                      ');


--
-- TOC entry 2185 (class 0 OID 16607)
-- Dependencies: 185
-- Data for Name: s_sucursal; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--



--
-- TOC entry 2181 (class 0 OID 16553)
-- Dependencies: 181
-- Data for Name: s_tablas_bdd; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.s_tablas_bdd VALUES (1, 'Usuarios                                ', 's_usuario                     ', 'codigo_usu                    ', 'nombre_usu                    ', '                                                  ', '                                                  ');
INSERT INTO mod_administracion.s_tablas_bdd VALUES (2, 'Ciudad                                  ', 'v_ciudad                      ', 'codigo_ciu                    ', 'nombre_ciu                    ', '                                                  ', '                                                  ');
INSERT INTO mod_administracion.s_tablas_bdd VALUES (3, 'Pais                                    ', 'v_pais                        ', 'codigo_pai                    ', 'nombre_pai                    ', '                                                  ', '                                                  ');
INSERT INTO mod_administracion.s_tablas_bdd VALUES (5, 'Perfil Usuario                          ', 's_perfil_usuario              ', 'codigo_per                    ', 'nombre_per                    ', '                                                  ', '                                                  ');
INSERT INTO mod_administracion.s_tablas_bdd VALUES (4, 'Tablas BDD                              ', 's_tablas_bdd                  ', 'codigo_tab                    ', 'nombre_tab                    ', '                                                  ', '                                                  ');
INSERT INTO mod_administracion.s_tablas_bdd VALUES (7, 'Tablas Campos                           ', 's_tablas_campos               ', 'codigo_tac                    ', 'nombre_tac                    ', '                                                  ', '                                                  ');
INSERT INTO mod_administracion.s_tablas_bdd VALUES (10, 'Tabla Campos Validaciones               ', 's_tablas_campos_val           ', 'codigo_tab                    ', 'nombre_tab                    ', '                                                  ', '                                                  ');


--
-- TOC entry 2191 (class 0 OID 16674)
-- Dependencies: 191
-- Data for Name: s_tablas_campos_val; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.s_tablas_campos_val VALUES (1, 'Números enteros               ', 'numeros-enteros                                                                                     ');
INSERT INTO mod_administracion.s_tablas_campos_val VALUES (2, 'Números decimales             ', 'numeros-decimal                                                                                     ');
INSERT INTO mod_administracion.s_tablas_campos_val VALUES (3, 'Solo letras con espacios      ', 'letras-y-espacios                                                                                   ');
INSERT INTO mod_administracion.s_tablas_campos_val VALUES (4, 'Alfanumérico con espacios     ', 'alfanumerico-y-espacios                                                                             ');
INSERT INTO mod_administracion.s_tablas_campos_val VALUES (5, 'Solo letras sin espacios      ', 'letras-sin-espacios                                                                                 ');
INSERT INTO mod_administracion.s_tablas_campos_val VALUES (6, 'Alfanumérico sin espacios     ', 'alfanumerico-sin-espacios                                                                           ');


--
-- TOC entry 2193 (class 0 OID 16684)
-- Dependencies: 193
-- Data for Name: s_tablas_campos; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--



--
-- TOC entry 2189 (class 0 OID 16631)
-- Dependencies: 189
-- Data for Name: s_usuario; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.s_usuario VALUES (5, 'asd                                               ', 'asdasd      ', 'asd         ', 1);


--
-- TOC entry 2175 (class 0 OID 16432)
-- Dependencies: 175
-- Data for Name: v_pais; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.v_pais VALUES (121, 'Ecuador             ', '                    ');
INSERT INTO mod_administracion.v_pais VALUES (122, 'Colombia            ', '                    ');
INSERT INTO mod_administracion.v_pais VALUES (113, 'Peru                ', 'sd                  ');
INSERT INTO mod_administracion.v_pais VALUES (123, 'Bolivia             ', '                    ');
INSERT INTO mod_administracion.v_pais VALUES (124, 'Argentina           ', '                    ');
INSERT INTO mod_administracion.v_pais VALUES (125, 'Venezuela           ', '                    ');
INSERT INTO mod_administracion.v_pais VALUES (126, 'Costa Rica          ', '                    ');
INSERT INTO mod_administracion.v_pais VALUES (127, 'Italia              ', '                    ');
INSERT INTO mod_administracion.v_pais VALUES (128, 'Rusia               ', '                    ');
INSERT INTO mod_administracion.v_pais VALUES (129, 'Mexico              ', '                    ');


--
-- TOC entry 2177 (class 0 OID 16441)
-- Dependencies: 177
-- Data for Name: v_ciudad; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.v_ciudad VALUES (171, 'Quito               ', 'UIO                 ', 121);
INSERT INTO mod_administracion.v_ciudad VALUES (172, 'Ambato              ', '                    ', 121);
INSERT INTO mod_administracion.v_ciudad VALUES (173, 'Loja                ', '                    ', 121);
INSERT INTO mod_administracion.v_ciudad VALUES (174, 'Ibarra              ', '                    ', 121);
INSERT INTO mod_administracion.v_ciudad VALUES (175, 'Cuenca              ', '                    ', 121);
INSERT INTO mod_administracion.v_ciudad VALUES (176, 'Latacunga           ', '                    ', 121);


--
-- TOC entry 2179 (class 0 OID 16492)
-- Dependencies: 179
-- Data for Name: v_estado; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.v_estado VALUES (106, 'Caranqui                                          ', 174);
INSERT INTO mod_administracion.v_estado VALUES (107, 'Urcuqui                                           ', 174);
INSERT INTO mod_administracion.v_estado VALUES (108, 'Alpachaca                                         ', 174);
INSERT INTO mod_administracion.v_estado VALUES (109, 'yacucalle                                         ', 174);
INSERT INTO mod_administracion.v_estado VALUES (110, 'los ciebos                                        ', 174);


--
-- TOC entry 2199 (class 0 OID 0)
-- Dependencies: 182
-- Name: s_compania_codigo_com_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_compania_codigo_com_seq', 2, true);


--
-- TOC entry 2200 (class 0 OID 0)
-- Dependencies: 186
-- Name: s_perfil_usuario_codigo_per_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_perfil_usuario_codigo_per_seq', 4, true);


--
-- TOC entry 2201 (class 0 OID 0)
-- Dependencies: 184
-- Name: s_sucursal_codigo_suc_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_sucursal_codigo_suc_seq', 1, false);


--
-- TOC entry 2202 (class 0 OID 0)
-- Dependencies: 180
-- Name: s_tablas_bdd_codigo_tab_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_tablas_bdd_codigo_tab_seq', 2, true);


--
-- TOC entry 2203 (class 0 OID 0)
-- Dependencies: 192
-- Name: s_tablas_campos_codigo_tac_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_tablas_campos_codigo_tac_seq', 1, false);


--
-- TOC entry 2204 (class 0 OID 0)
-- Dependencies: 190
-- Name: s_tablas_campos_val_codigo_tav_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_tablas_campos_val_codigo_tav_seq', 6, true);


--
-- TOC entry 2205 (class 0 OID 0)
-- Dependencies: 188
-- Name: s_usuario_codigo_usu_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_usuario_codigo_usu_seq', 5, true);


--
-- TOC entry 2206 (class 0 OID 0)
-- Dependencies: 176
-- Name: v_ciudad_codigo_ciu_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.v_ciudad_codigo_ciu_seq', 176, true);


--
-- TOC entry 2207 (class 0 OID 0)
-- Dependencies: 178
-- Name: v_estado_codigo_est_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.v_estado_codigo_est_seq', 110, true);


--
-- TOC entry 2208 (class 0 OID 0)
-- Dependencies: 174
-- Name: v_pais_codigo_pai_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.v_pais_codigo_pai_seq', 129, true);


-- Completed on 2018-10-04 17:26:31 -05

--
-- PostgreSQL database dump complete
--

