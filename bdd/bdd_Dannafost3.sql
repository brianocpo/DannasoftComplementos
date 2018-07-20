--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.18
-- Dumped by pg_dump version 10.4 (Ubuntu 10.4-2.pgdg16.04+1)

-- Started on 2018-07-20 15:38:38 -05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "Dannasoft";
--
-- TOC entry 2174 (class 1262 OID 16385)
-- Name: Dannasoft; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Dannasoft" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_EC.UTF-8' LC_CTYPE = 'es_EC.UTF-8';


ALTER DATABASE "Dannasoft" OWNER TO postgres;

\connect "Dannasoft"

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
-- TOC entry 8 (class 2615 OID 16386)
-- Name: mod_administracion; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mod_administracion;


ALTER SCHEMA mod_administracion OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 11935)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2177 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 187 (class 1259 OID 16468)
-- Name: s_compania; Type: TABLE; Schema: mod_administracion; Owner: postgres
--

CREATE TABLE mod_administracion.s_compania (
    codigo_com integer NOT NULL,
    nombre_com character(25),
    ruc_com character(15),
    direccion_com character(50),
    telefono1_com character(15),
    telefono2_com character(15),
    fax_com character(15),
    representante_com character(30),
    email1_com character(25),
    email2_com character(25)
);


ALTER TABLE mod_administracion.s_compania OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16466)
-- Name: s_compania_codigo_com_seq; Type: SEQUENCE; Schema: mod_administracion; Owner: postgres
--

CREATE SEQUENCE mod_administracion.s_compania_codigo_com_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mod_administracion.s_compania_codigo_com_seq OWNER TO postgres;

--
-- TOC entry 2178 (class 0 OID 0)
-- Dependencies: 186
-- Name: s_compania_codigo_com_seq; Type: SEQUENCE OWNED BY; Schema: mod_administracion; Owner: postgres
--

ALTER SEQUENCE mod_administracion.s_compania_codigo_com_seq OWNED BY mod_administracion.s_compania.codigo_com;


--
-- TOC entry 179 (class 1259 OID 16414)
-- Name: s_opcion; Type: TABLE; Schema: mod_administracion; Owner: postgres
--

CREATE TABLE mod_administracion.s_opcion (
    codigo_opc integer NOT NULL,
    nombre_opc character(40),
    tabla1_opc character(20),
    codigo1_opc character(20),
    campo1_ocp character(20),
    dropdown1_opc character(100),
    tabla2_opc character(20),
    codigo2_opc character(20),
    campo2_opc character(20),
    dropdown2_ocp character(100),
    tabla3_opc character(20),
    codigo3_opc character(20),
    campo3_opc character(20),
    dropdown3 character(100)
);


ALTER TABLE mod_administracion.s_opcion OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 16425)
-- Name: s_opcion_campos; Type: TABLE; Schema: mod_administracion; Owner: postgres
--

CREATE TABLE mod_administracion.s_opcion_campos (
    codigo_oca integer NOT NULL,
    codigo_opc integer,
    nombre_oca character(20),
    visible_oca boolean DEFAULT true NOT NULL,
    tabla_fk_oca character(20),
    nombre_fk_oca character(20),
    nombre_visible_fk_oca character(20),
    ordenamiento_oca integer
);


ALTER TABLE mod_administracion.s_opcion_campos OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 16423)
-- Name: s_opcion_campos_codigo_oca_seq; Type: SEQUENCE; Schema: mod_administracion; Owner: postgres
--

CREATE SEQUENCE mod_administracion.s_opcion_campos_codigo_oca_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mod_administracion.s_opcion_campos_codigo_oca_seq OWNER TO postgres;

--
-- TOC entry 2179 (class 0 OID 0)
-- Dependencies: 180
-- Name: s_opcion_campos_codigo_oca_seq; Type: SEQUENCE OWNED BY; Schema: mod_administracion; Owner: postgres
--

ALTER SEQUENCE mod_administracion.s_opcion_campos_codigo_oca_seq OWNED BY mod_administracion.s_opcion_campos.codigo_oca;


--
-- TOC entry 178 (class 1259 OID 16412)
-- Name: s_opcion_codigo_opc_seq; Type: SEQUENCE; Schema: mod_administracion; Owner: postgres
--

CREATE SEQUENCE mod_administracion.s_opcion_codigo_opc_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mod_administracion.s_opcion_codigo_opc_seq OWNER TO postgres;

--
-- TOC entry 2180 (class 0 OID 0)
-- Dependencies: 178
-- Name: s_opcion_codigo_opc_seq; Type: SEQUENCE OWNED BY; Schema: mod_administracion; Owner: postgres
--

ALTER SEQUENCE mod_administracion.s_opcion_codigo_opc_seq OWNED BY mod_administracion.s_opcion.codigo_opc;


--
-- TOC entry 175 (class 1259 OID 16392)
-- Name: s_perfil_usuario; Type: TABLE; Schema: mod_administracion; Owner: postgres
--

CREATE TABLE mod_administracion.s_perfil_usuario (
    codigo_per integer NOT NULL,
    nombre_per character(30)
);


ALTER TABLE mod_administracion.s_perfil_usuario OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 16390)
-- Name: s_perfil_usuario_codigo_per_seq; Type: SEQUENCE; Schema: mod_administracion; Owner: postgres
--

CREATE SEQUENCE mod_administracion.s_perfil_usuario_codigo_per_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mod_administracion.s_perfil_usuario_codigo_per_seq OWNER TO postgres;

--
-- TOC entry 2181 (class 0 OID 0)
-- Dependencies: 174
-- Name: s_perfil_usuario_codigo_per_seq; Type: SEQUENCE OWNED BY; Schema: mod_administracion; Owner: postgres
--

ALTER SEQUENCE mod_administracion.s_perfil_usuario_codigo_per_seq OWNED BY mod_administracion.s_perfil_usuario.codigo_per;


--
-- TOC entry 189 (class 1259 OID 16477)
-- Name: s_sucursal; Type: TABLE; Schema: mod_administracion; Owner: postgres
--

CREATE TABLE mod_administracion.s_sucursal (
    codigo_suc integer NOT NULL,
    codigo_com integer,
    nombre_suc character(25),
    ruc_suc character(15),
    direccion_suc character(50),
    telefono1_suc character(15),
    telefono2_suc character(15),
    email1_suc character(50),
    email2_suc character(50),
    fax_suc character(15)
);


ALTER TABLE mod_administracion.s_sucursal OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16475)
-- Name: s_sucursal_codigo_suc_seq; Type: SEQUENCE; Schema: mod_administracion; Owner: postgres
--

CREATE SEQUENCE mod_administracion.s_sucursal_codigo_suc_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mod_administracion.s_sucursal_codigo_suc_seq OWNER TO postgres;

--
-- TOC entry 2182 (class 0 OID 0)
-- Dependencies: 188
-- Name: s_sucursal_codigo_suc_seq; Type: SEQUENCE OWNED BY; Schema: mod_administracion; Owner: postgres
--

ALTER SEQUENCE mod_administracion.s_sucursal_codigo_suc_seq OWNED BY mod_administracion.s_sucursal.codigo_suc;


--
-- TOC entry 177 (class 1259 OID 16400)
-- Name: s_usuario; Type: TABLE; Schema: mod_administracion; Owner: postgres
--

CREATE TABLE mod_administracion.s_usuario (
    codigo_usu integer NOT NULL,
    nombre_usu character(50),
    usuario_usu character(12),
    clave_usu character(12),
    codigo_per integer
);


ALTER TABLE mod_administracion.s_usuario OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 16398)
-- Name: s_usuario_codigo_usu_seq; Type: SEQUENCE; Schema: mod_administracion; Owner: postgres
--

CREATE SEQUENCE mod_administracion.s_usuario_codigo_usu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mod_administracion.s_usuario_codigo_usu_seq OWNER TO postgres;

--
-- TOC entry 2183 (class 0 OID 0)
-- Dependencies: 176
-- Name: s_usuario_codigo_usu_seq; Type: SEQUENCE OWNED BY; Schema: mod_administracion; Owner: postgres
--

ALTER SEQUENCE mod_administracion.s_usuario_codigo_usu_seq OWNED BY mod_administracion.s_usuario.codigo_usu;


--
-- TOC entry 185 (class 1259 OID 16441)
-- Name: v_ciudad; Type: TABLE; Schema: mod_administracion; Owner: postgres
--

CREATE TABLE mod_administracion.v_ciudad (
    codigo_ciu integer NOT NULL,
    nombre_ciu character(20),
    alterno_ciu character(20),
    codigo_pai integer
);


ALTER TABLE mod_administracion.v_ciudad OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 16439)
-- Name: v_ciudad_codigo_ciu_seq; Type: SEQUENCE; Schema: mod_administracion; Owner: postgres
--

CREATE SEQUENCE mod_administracion.v_ciudad_codigo_ciu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mod_administracion.v_ciudad_codigo_ciu_seq OWNER TO postgres;

--
-- TOC entry 2184 (class 0 OID 0)
-- Dependencies: 184
-- Name: v_ciudad_codigo_ciu_seq; Type: SEQUENCE OWNED BY; Schema: mod_administracion; Owner: postgres
--

ALTER SEQUENCE mod_administracion.v_ciudad_codigo_ciu_seq OWNED BY mod_administracion.v_ciudad.codigo_ciu;


--
-- TOC entry 183 (class 1259 OID 16432)
-- Name: v_pais; Type: TABLE; Schema: mod_administracion; Owner: postgres
--

CREATE TABLE mod_administracion.v_pais (
    codigo_pai integer NOT NULL,
    nombre_pai character(20),
    alterno_pai character(20)
);


ALTER TABLE mod_administracion.v_pais OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 16430)
-- Name: v_pais_codigo_pai_seq; Type: SEQUENCE; Schema: mod_administracion; Owner: postgres
--

CREATE SEQUENCE mod_administracion.v_pais_codigo_pai_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mod_administracion.v_pais_codigo_pai_seq OWNER TO postgres;

--
-- TOC entry 2185 (class 0 OID 0)
-- Dependencies: 182
-- Name: v_pais_codigo_pai_seq; Type: SEQUENCE OWNED BY; Schema: mod_administracion; Owner: postgres
--

ALTER SEQUENCE mod_administracion.v_pais_codigo_pai_seq OWNED BY mod_administracion.v_pais.codigo_pai;


--
-- TOC entry 2010 (class 2604 OID 16471)
-- Name: s_compania codigo_com; Type: DEFAULT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_compania ALTER COLUMN codigo_com SET DEFAULT nextval('mod_administracion.s_compania_codigo_com_seq'::regclass);


--
-- TOC entry 2005 (class 2604 OID 16417)
-- Name: s_opcion codigo_opc; Type: DEFAULT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_opcion ALTER COLUMN codigo_opc SET DEFAULT nextval('mod_administracion.s_opcion_codigo_opc_seq'::regclass);


--
-- TOC entry 2006 (class 2604 OID 16428)
-- Name: s_opcion_campos codigo_oca; Type: DEFAULT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_opcion_campos ALTER COLUMN codigo_oca SET DEFAULT nextval('mod_administracion.s_opcion_campos_codigo_oca_seq'::regclass);


--
-- TOC entry 2003 (class 2604 OID 16395)
-- Name: s_perfil_usuario codigo_per; Type: DEFAULT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_perfil_usuario ALTER COLUMN codigo_per SET DEFAULT nextval('mod_administracion.s_perfil_usuario_codigo_per_seq'::regclass);


--
-- TOC entry 2011 (class 2604 OID 16480)
-- Name: s_sucursal codigo_suc; Type: DEFAULT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_sucursal ALTER COLUMN codigo_suc SET DEFAULT nextval('mod_administracion.s_sucursal_codigo_suc_seq'::regclass);


--
-- TOC entry 2004 (class 2604 OID 16403)
-- Name: s_usuario codigo_usu; Type: DEFAULT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_usuario ALTER COLUMN codigo_usu SET DEFAULT nextval('mod_administracion.s_usuario_codigo_usu_seq'::regclass);


--
-- TOC entry 2009 (class 2604 OID 16444)
-- Name: v_ciudad codigo_ciu; Type: DEFAULT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.v_ciudad ALTER COLUMN codigo_ciu SET DEFAULT nextval('mod_administracion.v_ciudad_codigo_ciu_seq'::regclass);


--
-- TOC entry 2008 (class 2604 OID 16435)
-- Name: v_pais codigo_pai; Type: DEFAULT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.v_pais ALTER COLUMN codigo_pai SET DEFAULT nextval('mod_administracion.v_pais_codigo_pai_seq'::regclass);


--
-- TOC entry 2166 (class 0 OID 16468)
-- Dependencies: 187
-- Data for Name: s_compania; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--



--
-- TOC entry 2158 (class 0 OID 16414)
-- Dependencies: 179
-- Data for Name: s_opcion; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.s_opcion VALUES (1, 'Usuarios                                ', 's_usuario           ', 'codigo_usu          ', 'nombre_usu          ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mod_administracion.s_opcion VALUES (2, 'Ciudad                                  ', 'v_ciudad            ', 'codigo_ciu          ', 'nombre_ciu          ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mod_administracion.s_opcion VALUES (3, 'Pais                                    ', 'v_pais              ', 'codigo_pai          ', 'nombre_pai          ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mod_administracion.s_opcion VALUES (4, 'Opcion                                  ', 's_opcion            ', 'codigo_opc          ', 'nombre_opc          ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO mod_administracion.s_opcion VALUES (5, 'Perfil Usuario                          ', 's_perfil_usuario    ', 'codigo_per          ', 'nombre_per          ', '                                                                                                    ', '                    ', '                    ', '                    ', '                                                                                                    ', '                    ', '                    ', '                    ', '                                                                                                    ');


--
-- TOC entry 2160 (class 0 OID 16425)
-- Dependencies: 181
-- Data for Name: s_opcion_campos; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--



--
-- TOC entry 2154 (class 0 OID 16392)
-- Dependencies: 175
-- Data for Name: s_perfil_usuario; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.s_perfil_usuario VALUES (1, 'Administrador                 ');


--
-- TOC entry 2168 (class 0 OID 16477)
-- Dependencies: 189
-- Data for Name: s_sucursal; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--



--
-- TOC entry 2156 (class 0 OID 16400)
-- Dependencies: 177
-- Data for Name: s_usuario; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.s_usuario VALUES (1, 'Administrador                                     ', '123123      ', '123         ', 1);
INSERT INTO mod_administracion.s_usuario VALUES (2, 'Usuario 1                                         ', '2222        ', '456         ', 1);


--
-- TOC entry 2164 (class 0 OID 16441)
-- Dependencies: 185
-- Data for Name: v_ciudad; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.v_ciudad VALUES (4, 'Buenos Aires 2      ', 'BUA                 ', 2);


--
-- TOC entry 2162 (class 0 OID 16432)
-- Dependencies: 183
-- Data for Name: v_pais; Type: TABLE DATA; Schema: mod_administracion; Owner: postgres
--

INSERT INTO mod_administracion.v_pais VALUES (2, 'Argentina           ', '                    ');
INSERT INTO mod_administracion.v_pais VALUES (3, 'Ecuador             ', NULL);
INSERT INTO mod_administracion.v_pais VALUES (4, 'Chile               ', NULL);


--
-- TOC entry 2186 (class 0 OID 0)
-- Dependencies: 186
-- Name: s_compania_codigo_com_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_compania_codigo_com_seq', 1, false);


--
-- TOC entry 2187 (class 0 OID 0)
-- Dependencies: 180
-- Name: s_opcion_campos_codigo_oca_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_opcion_campos_codigo_oca_seq', 1, false);


--
-- TOC entry 2188 (class 0 OID 0)
-- Dependencies: 178
-- Name: s_opcion_codigo_opc_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_opcion_codigo_opc_seq', 5, true);


--
-- TOC entry 2189 (class 0 OID 0)
-- Dependencies: 174
-- Name: s_perfil_usuario_codigo_per_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_perfil_usuario_codigo_per_seq', 9, true);


--
-- TOC entry 2190 (class 0 OID 0)
-- Dependencies: 188
-- Name: s_sucursal_codigo_suc_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_sucursal_codigo_suc_seq', 1, false);


--
-- TOC entry 2191 (class 0 OID 0)
-- Dependencies: 176
-- Name: s_usuario_codigo_usu_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.s_usuario_codigo_usu_seq', 1, true);


--
-- TOC entry 2192 (class 0 OID 0)
-- Dependencies: 184
-- Name: v_ciudad_codigo_ciu_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.v_ciudad_codigo_ciu_seq', 4, true);


--
-- TOC entry 2193 (class 0 OID 0)
-- Dependencies: 182
-- Name: v_pais_codigo_pai_seq; Type: SEQUENCE SET; Schema: mod_administracion; Owner: postgres
--

SELECT pg_catalog.setval('mod_administracion.v_pais_codigo_pai_seq', 4, true);


--
-- TOC entry 2034 (class 2606 OID 16473)
-- Name: s_compania FK_codigo_com; Type: CONSTRAINT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_compania
    ADD CONSTRAINT "FK_codigo_com" PRIMARY KEY (codigo_com);


--
-- TOC entry 2032 (class 2606 OID 16446)
-- Name: v_ciudad PK_codigo_ciu; Type: CONSTRAINT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.v_ciudad
    ADD CONSTRAINT "PK_codigo_ciu" PRIMARY KEY (codigo_ciu);


--
-- TOC entry 2024 (class 2606 OID 16455)
-- Name: s_opcion_campos PK_codigo_oca; Type: CONSTRAINT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_opcion_campos
    ADD CONSTRAINT "PK_codigo_oca" PRIMARY KEY (codigo_oca);


--
-- TOC entry 2021 (class 2606 OID 16422)
-- Name: s_opcion PK_codigo_opc; Type: CONSTRAINT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_opcion
    ADD CONSTRAINT "PK_codigo_opc" PRIMARY KEY (codigo_opc);


--
-- TOC entry 2028 (class 2606 OID 16437)
-- Name: v_pais PK_codigo_pai; Type: CONSTRAINT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.v_pais
    ADD CONSTRAINT "PK_codigo_pai" PRIMARY KEY (codigo_pai);


--
-- TOC entry 2039 (class 2606 OID 16482)
-- Name: s_sucursal PK_codigo_suc; Type: CONSTRAINT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_sucursal
    ADD CONSTRAINT "PK_codigo_suc" PRIMARY KEY (codigo_suc);


--
-- TOC entry 2014 (class 2606 OID 16397)
-- Name: s_perfil_usuario PK_s_perfil_usuario; Type: CONSTRAINT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_perfil_usuario
    ADD CONSTRAINT "PK_s_perfil_usuario" PRIMARY KEY (codigo_per);


--
-- TOC entry 2018 (class 2606 OID 16405)
-- Name: s_usuario PK_s_usuario; Type: CONSTRAINT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_usuario
    ADD CONSTRAINT "PK_s_usuario" PRIMARY KEY (codigo_usu);


--
-- TOC entry 2035 (class 1259 OID 16474)
-- Name: Index_s_compania_codigo_com; Type: INDEX; Schema: mod_administracion; Owner: postgres
--

CREATE INDEX "Index_s_compania_codigo_com" ON mod_administracion.s_compania USING btree (codigo_com);


--
-- TOC entry 2022 (class 1259 OID 16464)
-- Name: Index_s_opcion_campos_codigo_opc; Type: INDEX; Schema: mod_administracion; Owner: postgres
--

CREATE INDEX "Index_s_opcion_campos_codigo_opc" ON mod_administracion.s_opcion_campos USING btree (codigo_opc);


--
-- TOC entry 2019 (class 1259 OID 16465)
-- Name: Index_s_opcion_codigo_opc; Type: INDEX; Schema: mod_administracion; Owner: postgres
--

CREATE INDEX "Index_s_opcion_codigo_opc" ON mod_administracion.s_opcion USING btree (codigo_opc);


--
-- TOC entry 2012 (class 1259 OID 16463)
-- Name: Index_s_perfil_usuario_codigo_per; Type: INDEX; Schema: mod_administracion; Owner: postgres
--

CREATE INDEX "Index_s_perfil_usuario_codigo_per" ON mod_administracion.s_perfil_usuario USING btree (codigo_per);


--
-- TOC entry 2036 (class 1259 OID 16488)
-- Name: Index_s_sucursal_codigo_com; Type: INDEX; Schema: mod_administracion; Owner: postgres
--

CREATE INDEX "Index_s_sucursal_codigo_com" ON mod_administracion.s_sucursal USING btree (codigo_com);


--
-- TOC entry 2037 (class 1259 OID 16489)
-- Name: Index_s_sucursal_codigo_suc; Type: INDEX; Schema: mod_administracion; Owner: postgres
--

CREATE INDEX "Index_s_sucursal_codigo_suc" ON mod_administracion.s_sucursal USING btree (codigo_suc);


--
-- TOC entry 2015 (class 1259 OID 16411)
-- Name: Index_s_usuario_codigo_per; Type: INDEX; Schema: mod_administracion; Owner: postgres
--

CREATE INDEX "Index_s_usuario_codigo_per" ON mod_administracion.s_usuario USING btree (codigo_per);


--
-- TOC entry 2016 (class 1259 OID 16462)
-- Name: Index_s_usuario_codigo_usu; Type: INDEX; Schema: mod_administracion; Owner: postgres
--

CREATE INDEX "Index_s_usuario_codigo_usu" ON mod_administracion.s_usuario USING btree (codigo_usu);


--
-- TOC entry 2029 (class 1259 OID 16452)
-- Name: Index_v_ciudad_codigo_ciu; Type: INDEX; Schema: mod_administracion; Owner: postgres
--

CREATE INDEX "Index_v_ciudad_codigo_ciu" ON mod_administracion.v_ciudad USING btree (codigo_ciu);


--
-- TOC entry 2030 (class 1259 OID 16453)
-- Name: Index_v_ciudad_codigo_pai; Type: INDEX; Schema: mod_administracion; Owner: postgres
--

CREATE INDEX "Index_v_ciudad_codigo_pai" ON mod_administracion.v_ciudad USING btree (codigo_pai);


--
-- TOC entry 2026 (class 1259 OID 16438)
-- Name: Index_v_pais_codigo_pai; Type: INDEX; Schema: mod_administracion; Owner: postgres
--

CREATE INDEX "Index_v_pais_codigo_pai" ON mod_administracion.v_pais USING btree (codigo_pai);


--
-- TOC entry 2025 (class 1259 OID 16461)
-- Name: index_s_opcion_campos_codigo_oca; Type: INDEX; Schema: mod_administracion; Owner: postgres
--

CREATE INDEX index_s_opcion_campos_codigo_oca ON mod_administracion.s_opcion_campos USING btree (codigo_oca);


--
-- TOC entry 2041 (class 2606 OID 16456)
-- Name: s_opcion_campos FK_s_opcion_vs_s_opcion_campos; Type: FK CONSTRAINT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_opcion_campos
    ADD CONSTRAINT "FK_s_opcion_vs_s_opcion_campos" FOREIGN KEY (codigo_opc) REFERENCES mod_administracion.s_opcion(codigo_opc);


--
-- TOC entry 2043 (class 2606 OID 16483)
-- Name: s_sucursal FK_s_sucursal_vs_s_compania; Type: FK CONSTRAINT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_sucursal
    ADD CONSTRAINT "FK_s_sucursal_vs_s_compania" FOREIGN KEY (codigo_com) REFERENCES mod_administracion.s_compania(codigo_com);


--
-- TOC entry 2040 (class 2606 OID 16406)
-- Name: s_usuario FK_s_usuario_vs_s_perfil_usuario; Type: FK CONSTRAINT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.s_usuario
    ADD CONSTRAINT "FK_s_usuario_vs_s_perfil_usuario" FOREIGN KEY (codigo_per) REFERENCES mod_administracion.s_perfil_usuario(codigo_per);


--
-- TOC entry 2042 (class 2606 OID 16447)
-- Name: v_ciudad FK_v_ciudad_codigo_pai; Type: FK CONSTRAINT; Schema: mod_administracion; Owner: postgres
--

ALTER TABLE ONLY mod_administracion.v_ciudad
    ADD CONSTRAINT "FK_v_ciudad_codigo_pai" FOREIGN KEY (codigo_pai) REFERENCES mod_administracion.v_pais(codigo_pai);


--
-- TOC entry 2176 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-07-20 15:38:38 -05

--
-- PostgreSQL database dump complete
--

