--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.18
-- Dumped by pg_dump version 10.4 (Ubuntu 10.4-2.pgdg16.04+1)

-- Started on 2018-10-05 16:39:40 -05

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

INSERT INTO mod_administracion.s_compania (codigo_com, nombre_com, nombrerepresentante_com, ruc_com, direccion_com, telefono1_com, telefono2_com, paginaweb_com, fax_com, representante_com, email1_com, email2_com) VALUES (1, 'Dannasoft                ', 'Brian Eduardo Montenegro Tinaj', '1003677422001  ', 'El trbol, calle Caran N-250 y Echeverria                                                                                                              ', '0981747001     ', '062650786      ', 'www.ecuawebhosting.com   ', '               ', '                              ', 'brayanocpo@hotmail.es    ', '                         ');
INSERT INTO mod_administracion.s_compania (codigo_com, nombre_com, nombrerepresentante_com, ruc_com, direccion_com, telefono1_com, telefono2_com, paginaweb_com, fax_com, representante_com, email1_com, email2_com) VALUES (2, 'Florifrut                ', 'Pedro Luna                    ', '1001079126001  ', '                                                                                                                                                      ', '0978451260     ', '               ', '                         ', '               ', '                              ', 'asdasd@hotmail.es        ', '                         ');


--
-- TOC entry 2187 (class 0 OID 16622)
-- Dependencies: 187
-- Data for Name: s_perfil_usuario; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.s_perfil_usuario (codigo_per, nombre_per) VALUES (1, 'Administrador                 ');
INSERT INTO mod_administracion.s_perfil_usuario (codigo_per, nombre_per) VALUES (2, 'Usuario1                      ');
INSERT INTO mod_administracion.s_perfil_usuario (codigo_per, nombre_per) VALUES (3, 'Usuario2                      ');
INSERT INTO mod_administracion.s_perfil_usuario (codigo_per, nombre_per) VALUES (4, 'Usuario3                      ');


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

INSERT INTO mod_administracion.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, where_tab) VALUES (1, 'Usuarios                                ', 's_usuario                     ', 'codigo_usu                    ', 'nombre_usu                    ', '                                                  ', '                                                  ');
INSERT INTO mod_administracion.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, where_tab) VALUES (3, 'Pais                                    ', 'v_pais                        ', 'codigo_pai                    ', 'nombre_pai                    ', '                                                  ', '                                                  ');
INSERT INTO mod_administracion.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, where_tab) VALUES (5, 'Perfil Usuario                          ', 's_perfil_usuario              ', 'codigo_per                    ', 'nombre_per                    ', '                                                  ', '                                                  ');
INSERT INTO mod_administracion.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, where_tab) VALUES (4, 'Tablas BDD                              ', 's_tablas_bdd                  ', 'codigo_tab                    ', 'nombre_tab                    ', '                                                  ', '                                                  ');
INSERT INTO mod_administracion.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, where_tab) VALUES (12, 'Tabla Campos Validaciones               ', 's_tablas_campos_val           ', 'codigo_tav                    ', 'nombre_tav                    ', '                                                  ', '                                                  ');
INSERT INTO mod_administracion.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, where_tab) VALUES (7, 'Tablas Campos                           ', 's_tablas_campos               ', 'codigo_tac                    ', 'nombre_tac                    ', '                                                  ', '                                                  ');
INSERT INTO mod_administracion.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, where_tab) VALUES (2, 'Ciudad                                  ', 'v_ciudad                      ', 'codigo_ciu                    ', 'nombre_ciu                    ', '                                                  ', '                                                  ');


--
-- TOC entry 2191 (class 0 OID 16674)
-- Dependencies: 191
-- Data for Name: s_tablas_campos_val; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (1, 'Números enteros               ', 'numeros-enteros                                                                                     ');
INSERT INTO mod_administracion.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (2, 'Números decimales             ', 'numeros-decimal                                                                                     ');
INSERT INTO mod_administracion.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (3, 'Solo letras con espacios      ', 'letras-y-espacios                                                                                   ');
INSERT INTO mod_administracion.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (5, 'Solo letras sin espacios      ', 'letras-sin-espacios                                                                                 ');
INSERT INTO mod_administracion.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (4, 'Alfanumerico con espacios     ', 'alfanumerico-y-espacios                                                                             ');
INSERT INTO mod_administracion.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (6, 'Alfanumerico sin espacios     ', 'alfanumerico-sin-espacios                                                                           ');


--
-- TOC entry 2193 (class 0 OID 16747)
-- Dependencies: 193
-- Data for Name: s_tablas_campos; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength, orden_tac) VALUES (3, 2, 1, 'Alterno                       ', 'alterno_ciu                   ', '                                                  ', NULL, 2);
INSERT INTO mod_administracion.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength, orden_tac) VALUES (4, 2, 1, 'codigo_ciu                    ', 'codigo_ciu                    ', '                                                  ', NULL, 3);
INSERT INTO mod_administracion.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength, orden_tac) VALUES (6, 3, 1, 'Alterno                       ', 'alterno_pai                   ', '                                                  ', 3, 2);
INSERT INTO mod_administracion.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength, orden_tac) VALUES (5, 3, 4, 'Pais                          ', 'nombre_pai                    ', '                                                  ', 2, 1);
INSERT INTO mod_administracion.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength, orden_tac) VALUES (7, 3, 1, 'Codigo                        ', 'codigo_pai                    ', '                                                  ', NULL, 3);
INSERT INTO mod_administracion.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength, orden_tac) VALUES (2, 2, 4, 'Ciudad                        ', 'nombre_ciu                    ', '                                                  ', 2, 1);


--
-- TOC entry 2189 (class 0 OID 16631)
-- Dependencies: 189
-- Data for Name: s_usuario; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.s_usuario (codigo_usu, nombre_usu, usuario_usu, clave_usu, codigo_per) VALUES (7, 'Brian                                             ', 'Brian88     ', '12345       ', 1);


--
-- TOC entry 2175 (class 0 OID 16432)
-- Dependencies: 175
-- Data for Name: v_pais; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.v_pais (codigo_pai, nombre_pai, alterno_pai) VALUES (123, 'Bolivia             ', 'Prueba Bolivia      ');
INSERT INTO mod_administracion.v_pais (codigo_pai, nombre_pai, alterno_pai) VALUES (122, 'Colombia            ', 'Prueba Colombia     ');
INSERT INTO mod_administracion.v_pais (codigo_pai, nombre_pai, alterno_pai) VALUES (126, 'Costa Rica          ', 'Prueba Costarrica   ');
INSERT INTO mod_administracion.v_pais (codigo_pai, nombre_pai, alterno_pai) VALUES (121, 'Ecuador             ', 'Prueba Ecuador      ');
INSERT INTO mod_administracion.v_pais (codigo_pai, nombre_pai, alterno_pai) VALUES (130, 'Rusia               ', 'Prueba rusia        ');
INSERT INTO mod_administracion.v_pais (codigo_pai, nombre_pai, alterno_pai) VALUES (129, 'México              ', 'prueba Mexico       ');
INSERT INTO mod_administracion.v_pais (codigo_pai, nombre_pai, alterno_pai) VALUES (127, 'Italia              ', 'prueba italia       ');
INSERT INTO mod_administracion.v_pais (codigo_pai, nombre_pai, alterno_pai) VALUES (124, 'Argentina           ', 'prueba argentiana   ');
INSERT INTO mod_administracion.v_pais (codigo_pai, nombre_pai, alterno_pai) VALUES (131, 'p1                  ', 'p1                  ');


--
-- TOC entry 2177 (class 0 OID 16441)
-- Dependencies: 177
-- Data for Name: v_ciudad; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.v_ciudad (codigo_ciu, nombre_ciu, alterno_ciu, codigo_pai) VALUES (172, 'Ambato              ', '                    ', 121);
INSERT INTO mod_administracion.v_ciudad (codigo_ciu, nombre_ciu, alterno_ciu, codigo_pai) VALUES (174, 'Ibarra              ', '                    ', 121);
INSERT INTO mod_administracion.v_ciudad (codigo_ciu, nombre_ciu, alterno_ciu, codigo_pai) VALUES (175, 'Cuenca              ', '                    ', 121);
INSERT INTO mod_administracion.v_ciudad (codigo_ciu, nombre_ciu, alterno_ciu, codigo_pai) VALUES (177, 'La paz              ', '                    ', 124);
INSERT INTO mod_administracion.v_ciudad (codigo_ciu, nombre_ciu, alterno_ciu, codigo_pai) VALUES (178, 'Quito               ', '                    ', 121);
INSERT INTO mod_administracion.v_ciudad (codigo_ciu, nombre_ciu, alterno_ciu, codigo_pai) VALUES (179, 'Tulcan              ', '                    ', 121);


--
-- TOC entry 2179 (class 0 OID 16492)
-- Dependencies: 179
-- Data for Name: v_estado; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.v_estado (codigo_est, nombre_est, codigo_ciu) VALUES (106, 'Caranqui                                          ', 174);
INSERT INTO mod_administracion.v_estado (codigo_est, nombre_est, codigo_ciu) VALUES (107, 'Urcuqui                                           ', 174);
INSERT INTO mod_administracion.v_estado (codigo_est, nombre_est, codigo_ciu) VALUES (108, 'Alpachaca                                         ', 174);
INSERT INTO mod_administracion.v_estado (codigo_est, nombre_est, codigo_ciu) VALUES (109, 'yacucalle                                         ', 174);
INSERT INTO mod_administracion.v_estado (codigo_est, nombre_est, codigo_ciu) VALUES (110, 'los ciebos                                        ', 174);


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

SELECT pg_catalog.setval('mod_administracion.s_tablas_bdd_codigo_tab_seq', 12, true);


--
-- TOC entry 2203 (class 0 OID 0)
-- Dependencies: 192
-- Name: s_tablas_campos_codigo_tac_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_tablas_campos_codigo_tac_seq', 7, true);


--
-- TOC entry 2204 (class 0 OID 0)
-- Dependencies: 190
-- Name: s_tablas_campos_val_codigo_tav_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_tablas_campos_val_codigo_tav_seq', 7, true);


--
-- TOC entry 2205 (class 0 OID 0)
-- Dependencies: 188
-- Name: s_usuario_codigo_usu_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_usuario_codigo_usu_seq', 7, true);


--
-- TOC entry 2206 (class 0 OID 0)
-- Dependencies: 176
-- Name: v_ciudad_codigo_ciu_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.v_ciudad_codigo_ciu_seq', 180, true);


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

SELECT pg_catalog.setval('mod_administracion.v_pais_codigo_pai_seq', 131, true);


-- Completed on 2018-10-05 16:39:41 -05

--
-- PostgreSQL database dump complete
--

