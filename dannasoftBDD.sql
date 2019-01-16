--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.15
-- Dumped by pg_dump version 9.5.15

-- Started on 2019-01-08 16:58:40 -05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 16599)
-- Name: sistema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA sistema;


ALTER SCHEMA sistema OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 16600)
-- Name: p_atributo; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.p_atributo (
    codigo_atr integer NOT NULL,
    nombre_atr character(30),
    codigo_est integer
);


ALTER TABLE sistema.p_atributo OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16603)
-- Name: p_atributo_codigo_atr_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.p_atributo_codigo_atr_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.p_atributo_codigo_atr_seq OWNER TO postgres;

--
-- TOC entry 2411 (class 0 OID 0)
-- Dependencies: 183
-- Name: p_atributo_codigo_atr_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.p_atributo_codigo_atr_seq OWNED BY sistema.p_atributo.codigo_atr;


--
-- TOC entry 184 (class 1259 OID 16605)
-- Name: p_atributo_detalle; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.p_atributo_detalle (
    codigo_datr integer NOT NULL,
    nombre_datr character(30),
    codigo_est integer,
    codigo_atr integer NOT NULL
);


ALTER TABLE sistema.p_atributo_detalle OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16608)
-- Name: p_atributo_detalle_codigo_datr_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.p_atributo_detalle_codigo_datr_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.p_atributo_detalle_codigo_datr_seq OWNER TO postgres;

--
-- TOC entry 2412 (class 0 OID 0)
-- Dependencies: 185
-- Name: p_atributo_detalle_codigo_datr_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.p_atributo_detalle_codigo_datr_seq OWNED BY sistema.p_atributo_detalle.codigo_datr;


--
-- TOC entry 213 (class 1259 OID 16821)
-- Name: p_categoria; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.p_categoria (
    codigo_cat integer NOT NULL,
    nombre_cat character(30),
    padre_cat integer,
    codigo_tni integer,
    classicon_cat character(20)
);


ALTER TABLE sistema.p_categoria OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16819)
-- Name: p_categoria_codigo_cat_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.p_categoria_codigo_cat_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.p_categoria_codigo_cat_seq OWNER TO postgres;

--
-- TOC entry 2413 (class 0 OID 0)
-- Dependencies: 212
-- Name: p_categoria_codigo_cat_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.p_categoria_codigo_cat_seq OWNED BY sistema.p_categoria.codigo_cat;


--
-- TOC entry 186 (class 1259 OID 16610)
-- Name: p_producto; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.p_producto (
    codigo_pro integer NOT NULL,
    nombre_pro character(30),
    codigo_est integer
);


ALTER TABLE sistema.p_producto OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16613)
-- Name: p_producto_atributos; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.p_producto_atributos (
    codigo_dpro integer NOT NULL,
    nombre_dpro character(30),
    codigo_datr integer NOT NULL,
    codigo_est integer,
    codigo_pro integer NOT NULL
);


ALTER TABLE sistema.p_producto_atributos OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16616)
-- Name: p_producto_atributos_codigo_dpro_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.p_producto_atributos_codigo_dpro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.p_producto_atributos_codigo_dpro_seq OWNER TO postgres;

--
-- TOC entry 2414 (class 0 OID 0)
-- Dependencies: 188
-- Name: p_producto_atributos_codigo_dpro_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.p_producto_atributos_codigo_dpro_seq OWNED BY sistema.p_producto_atributos.codigo_dpro;


--
-- TOC entry 189 (class 1259 OID 16618)
-- Name: p_producto_codigo_pro_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.p_producto_codigo_pro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.p_producto_codigo_pro_seq OWNER TO postgres;

--
-- TOC entry 2415 (class 0 OID 0)
-- Dependencies: 189
-- Name: p_producto_codigo_pro_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.p_producto_codigo_pro_seq OWNED BY sistema.p_producto.codigo_pro;


--
-- TOC entry 190 (class 1259 OID 16620)
-- Name: s_compania; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_compania (
    codigo_com integer NOT NULL,
    nombre_com character(40) NOT NULL,
    ruc_com character(15) NOT NULL,
    direccion_com character(150),
    telefono1_com character(15) NOT NULL,
    telefono2_com character(15),
    paginaweb_com character(25),
    fax_com character(15),
    representante_com character(30),
    email1_com character(25) NOT NULL,
    email2_com character(25)
);


ALTER TABLE sistema.s_compania OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 16623)
-- Name: s_compania_codigo_com_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.s_compania_codigo_com_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.s_compania_codigo_com_seq OWNER TO postgres;

--
-- TOC entry 2416 (class 0 OID 0)
-- Dependencies: 191
-- Name: s_compania_codigo_com_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_compania_codigo_com_seq OWNED BY sistema.s_compania.codigo_com;


--
-- TOC entry 192 (class 1259 OID 16625)
-- Name: s_estado_dato; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_estado_dato (
    codigo_est integer NOT NULL,
    nombre_est character(10) NOT NULL
);


ALTER TABLE sistema.s_estado_dato OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 16628)
-- Name: s_estado_dato_codigo_est_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.s_estado_dato_codigo_est_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.s_estado_dato_codigo_est_seq OWNER TO postgres;

--
-- TOC entry 2417 (class 0 OID 0)
-- Dependencies: 193
-- Name: s_estado_dato_codigo_est_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_estado_dato_codigo_est_seq OWNED BY sistema.s_estado_dato.codigo_est;


--
-- TOC entry 194 (class 1259 OID 16630)
-- Name: s_modulos; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_modulos (
    codigo_mod integer NOT NULL,
    nombre_mod character(30) NOT NULL
);


ALTER TABLE sistema.s_modulos OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 16633)
-- Name: s_modulos_codigo_mod_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.s_modulos_codigo_mod_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.s_modulos_codigo_mod_seq OWNER TO postgres;

--
-- TOC entry 2418 (class 0 OID 0)
-- Dependencies: 195
-- Name: s_modulos_codigo_mod_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_modulos_codigo_mod_seq OWNED BY sistema.s_modulos.codigo_mod;


--
-- TOC entry 196 (class 1259 OID 16635)
-- Name: s_perfil_usuario; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_perfil_usuario (
    codigo_per integer NOT NULL,
    nombre_per character(30) NOT NULL,
    codigo_est integer
);


ALTER TABLE sistema.s_perfil_usuario OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16638)
-- Name: s_perfil_usuario_codigo_per_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.s_perfil_usuario_codigo_per_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.s_perfil_usuario_codigo_per_seq OWNER TO postgres;

--
-- TOC entry 2419 (class 0 OID 0)
-- Dependencies: 197
-- Name: s_perfil_usuario_codigo_per_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_perfil_usuario_codigo_per_seq OWNED BY sistema.s_perfil_usuario.codigo_per;


--
-- TOC entry 198 (class 1259 OID 16640)
-- Name: s_sucursal; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_sucursal (
    codigo_suc integer NOT NULL,
    nombre_suc character(25) NOT NULL,
    ruc_suc character(15),
    direccion_suc character(50),
    telefono1_suc character(15) NOT NULL,
    telefono2_suc character(15),
    email1_suc character(50) NOT NULL,
    email2_suc character(50),
    fax_suc character(15),
    codigo_com integer
);


ALTER TABLE sistema.s_sucursal OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16643)
-- Name: s_sucursal_codigo_suc_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.s_sucursal_codigo_suc_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.s_sucursal_codigo_suc_seq OWNER TO postgres;

--
-- TOC entry 2420 (class 0 OID 0)
-- Dependencies: 199
-- Name: s_sucursal_codigo_suc_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_sucursal_codigo_suc_seq OWNED BY sistema.s_sucursal.codigo_suc;


--
-- TOC entry 200 (class 1259 OID 16645)
-- Name: s_tablas_bdd; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_tablas_bdd (
    codigo_tab integer NOT NULL,
    nombre_tab character(40) NOT NULL,
    tabla_tab character(30) NOT NULL,
    codigopk_tab character(30) NOT NULL,
    campo_tab character(30) NOT NULL,
    orderby_tab character(50),
    condicion_tab character(50),
    codigo_mod integer
);


ALTER TABLE sistema.s_tablas_bdd OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16648)
-- Name: s_tablas_bdd_codigo_tab_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.s_tablas_bdd_codigo_tab_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.s_tablas_bdd_codigo_tab_seq OWNER TO postgres;

--
-- TOC entry 2421 (class 0 OID 0)
-- Dependencies: 201
-- Name: s_tablas_bdd_codigo_tab_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_tablas_bdd_codigo_tab_seq OWNED BY sistema.s_tablas_bdd.codigo_tab;


--
-- TOC entry 202 (class 1259 OID 16650)
-- Name: s_tablas_campos; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_tablas_campos (
    codigo_tac integer NOT NULL,
    codigo_tab integer NOT NULL,
    codigo_tav integer,
    nombre_tac character(30) NOT NULL,
    nombrecampobdd_tac character(30) NOT NULL,
    mascara_tac character(50),
    minlength_tac integer,
    orden_tac integer DEFAULT 0 NOT NULL
);


ALTER TABLE sistema.s_tablas_campos OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16654)
-- Name: s_tablas_campos_codigo_tac_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.s_tablas_campos_codigo_tac_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.s_tablas_campos_codigo_tac_seq OWNER TO postgres;

--
-- TOC entry 2422 (class 0 OID 0)
-- Dependencies: 203
-- Name: s_tablas_campos_codigo_tac_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_tablas_campos_codigo_tac_seq OWNED BY sistema.s_tablas_campos.codigo_tac;


--
-- TOC entry 204 (class 1259 OID 16656)
-- Name: s_tablas_campos_val; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_tablas_campos_val (
    codigo_tav integer NOT NULL,
    nombre_tav character(30) NOT NULL,
    expresion_tav character(100) NOT NULL
);


ALTER TABLE sistema.s_tablas_campos_val OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16659)
-- Name: s_tablas_campos_val_codigo_tav_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.s_tablas_campos_val_codigo_tav_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.s_tablas_campos_val_codigo_tav_seq OWNER TO postgres;

--
-- TOC entry 2423 (class 0 OID 0)
-- Dependencies: 205
-- Name: s_tablas_campos_val_codigo_tav_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_tablas_campos_val_codigo_tav_seq OWNED BY sistema.s_tablas_campos_val.codigo_tav;


--
-- TOC entry 211 (class 1259 OID 16813)
-- Name: s_tipo_nivel; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_tipo_nivel (
    codigo_tni integer NOT NULL,
    nombre_tni character(20)
);


ALTER TABLE sistema.s_tipo_nivel OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16811)
-- Name: s_tipo_nivel_codigo_tni_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.s_tipo_nivel_codigo_tni_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.s_tipo_nivel_codigo_tni_seq OWNER TO postgres;

--
-- TOC entry 2424 (class 0 OID 0)
-- Dependencies: 210
-- Name: s_tipo_nivel_codigo_tni_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_tipo_nivel_codigo_tni_seq OWNED BY sistema.s_tipo_nivel.codigo_tni;


--
-- TOC entry 206 (class 1259 OID 16661)
-- Name: s_usuario; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_usuario (
    codigo_usu integer NOT NULL,
    nombre_usu character(50) NOT NULL,
    usuario_usu character(12) NOT NULL,
    clave_usu character(12) NOT NULL,
    codigo_per integer NOT NULL,
    fechacaducidad_usu date,
    codigo_est integer
);


ALTER TABLE sistema.s_usuario OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16664)
-- Name: s_usuario_codigo_usu_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.s_usuario_codigo_usu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.s_usuario_codigo_usu_seq OWNER TO postgres;

--
-- TOC entry 2425 (class 0 OID 0)
-- Dependencies: 207
-- Name: s_usuario_codigo_usu_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_usuario_codigo_usu_seq OWNED BY sistema.s_usuario.codigo_usu;


--
-- TOC entry 208 (class 1259 OID 16666)
-- Name: s_variables; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_variables (
    codigo_var integer NOT NULL,
    nombre_var character(40) NOT NULL,
    descripcion_var character(100) NOT NULL,
    valor_var character(50) NOT NULL
);


ALTER TABLE sistema.s_variables OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16669)
-- Name: s_variables_codigo_var_seq; Type: SEQUENCE; Schema: sistema; Owner: postgres
--

CREATE SEQUENCE sistema.s_variables_codigo_var_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sistema.s_variables_codigo_var_seq OWNER TO postgres;

--
-- TOC entry 2426 (class 0 OID 0)
-- Dependencies: 209
-- Name: s_variables_codigo_var_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_variables_codigo_var_seq OWNED BY sistema.s_variables.codigo_var;


--
-- TOC entry 215 (class 1259 OID 16851)
-- Name: v_ciudad; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.v_ciudad (
    codigo_ciu integer NOT NULL,
    nombre_ciu character(20) NOT NULL,
    alterno_ciu character(20) NOT NULL,
    codigo_pai integer
);


ALTER TABLE sistema.v_ciudad OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16845)
-- Name: v_pais; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.v_pais (
    codigo_pai integer NOT NULL,
    nombre_pai character(20) NOT NULL,
    alterno_pai character(20)
);


ALTER TABLE sistema.v_pais OWNER TO postgres;

--
-- TOC entry 2158 (class 2604 OID 16671)
-- Name: codigo_atr; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo ALTER COLUMN codigo_atr SET DEFAULT nextval('sistema.p_atributo_codigo_atr_seq'::regclass);


--
-- TOC entry 2159 (class 2604 OID 16672)
-- Name: codigo_datr; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo_detalle ALTER COLUMN codigo_datr SET DEFAULT nextval('sistema.p_atributo_detalle_codigo_datr_seq'::regclass);


--
-- TOC entry 2174 (class 2604 OID 16824)
-- Name: codigo_cat; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_categoria ALTER COLUMN codigo_cat SET DEFAULT nextval('sistema.p_categoria_codigo_cat_seq'::regclass);


--
-- TOC entry 2160 (class 2604 OID 16673)
-- Name: codigo_pro; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto ALTER COLUMN codigo_pro SET DEFAULT nextval('sistema.p_producto_codigo_pro_seq'::regclass);


--
-- TOC entry 2161 (class 2604 OID 16674)
-- Name: codigo_dpro; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto_atributos ALTER COLUMN codigo_dpro SET DEFAULT nextval('sistema.p_producto_atributos_codigo_dpro_seq'::regclass);


--
-- TOC entry 2162 (class 2604 OID 16675)
-- Name: codigo_com; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_compania ALTER COLUMN codigo_com SET DEFAULT nextval('sistema.s_compania_codigo_com_seq'::regclass);


--
-- TOC entry 2163 (class 2604 OID 16676)
-- Name: codigo_est; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_estado_dato ALTER COLUMN codigo_est SET DEFAULT nextval('sistema.s_estado_dato_codigo_est_seq'::regclass);


--
-- TOC entry 2164 (class 2604 OID 16677)
-- Name: codigo_mod; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_modulos ALTER COLUMN codigo_mod SET DEFAULT nextval('sistema.s_modulos_codigo_mod_seq'::regclass);


--
-- TOC entry 2165 (class 2604 OID 16678)
-- Name: codigo_per; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_perfil_usuario ALTER COLUMN codigo_per SET DEFAULT nextval('sistema.s_perfil_usuario_codigo_per_seq'::regclass);


--
-- TOC entry 2166 (class 2604 OID 16679)
-- Name: codigo_suc; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_sucursal ALTER COLUMN codigo_suc SET DEFAULT nextval('sistema.s_sucursal_codigo_suc_seq'::regclass);


--
-- TOC entry 2167 (class 2604 OID 16680)
-- Name: codigo_tab; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_bdd ALTER COLUMN codigo_tab SET DEFAULT nextval('sistema.s_tablas_bdd_codigo_tab_seq'::regclass);


--
-- TOC entry 2169 (class 2604 OID 16681)
-- Name: codigo_tac; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_campos ALTER COLUMN codigo_tac SET DEFAULT nextval('sistema.s_tablas_campos_codigo_tac_seq'::regclass);


--
-- TOC entry 2170 (class 2604 OID 16682)
-- Name: codigo_tav; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_campos_val ALTER COLUMN codigo_tav SET DEFAULT nextval('sistema.s_tablas_campos_val_codigo_tav_seq'::regclass);


--
-- TOC entry 2173 (class 2604 OID 16816)
-- Name: codigo_tni; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tipo_nivel ALTER COLUMN codigo_tni SET DEFAULT nextval('sistema.s_tipo_nivel_codigo_tni_seq'::regclass);


--
-- TOC entry 2171 (class 2604 OID 16683)
-- Name: codigo_usu; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_usuario ALTER COLUMN codigo_usu SET DEFAULT nextval('sistema.s_usuario_codigo_usu_seq'::regclass);


--
-- TOC entry 2172 (class 2604 OID 16684)
-- Name: codigo_var; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_variables ALTER COLUMN codigo_var SET DEFAULT nextval('sistema.s_variables_codigo_var_seq'::regclass);


--
-- TOC entry 2372 (class 0 OID 16600)
-- Dependencies: 182
-- Data for Name: p_atributo; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.p_atributo (codigo_atr, nombre_atr, codigo_est) VALUES (39, 'Color                         ', 1);
INSERT INTO sistema.p_atributo (codigo_atr, nombre_atr, codigo_est) VALUES (40, 'Talla                         ', NULL);
INSERT INTO sistema.p_atributo (codigo_atr, nombre_atr, codigo_est) VALUES (41, 'Tallos                        ', NULL);


--
-- TOC entry 2427 (class 0 OID 0)
-- Dependencies: 183
-- Name: p_atributo_codigo_atr_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.p_atributo_codigo_atr_seq', 41, true);


--
-- TOC entry 2374 (class 0 OID 16605)
-- Dependencies: 184
-- Data for Name: p_atributo_detalle; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (11, 'Rojo                          ', 1, 39);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (12, 'Verde                         ', 1, 39);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (13, '35                            ', NULL, 40);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (14, '36                            ', NULL, 40);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (15, '12                            ', NULL, 41);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (16, '15                            ', NULL, 41);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (17, '20                            ', NULL, 41);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (18, '25                            ', NULL, 41);


--
-- TOC entry 2428 (class 0 OID 0)
-- Dependencies: 185
-- Name: p_atributo_detalle_codigo_datr_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.p_atributo_detalle_codigo_datr_seq', 18, true);


--
-- TOC entry 2403 (class 0 OID 16821)
-- Dependencies: 213
-- Data for Name: p_categoria; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.p_categoria (codigo_cat, nombre_cat, padre_cat, codigo_tni, classicon_cat) VALUES (6, 'Celulares                     ', NULL, 1, '                    ');
INSERT INTO sistema.p_categoria (codigo_cat, nombre_cat, padre_cat, codigo_tni, classicon_cat) VALUES (3, 'Zapatos                       ', NULL, 1, '                    ');
INSERT INTO sistema.p_categoria (codigo_cat, nombre_cat, padre_cat, codigo_tni, classicon_cat) VALUES (24, 'Muñeca                        ', 3, 2, '                    ');


--
-- TOC entry 2429 (class 0 OID 0)
-- Dependencies: 212
-- Name: p_categoria_codigo_cat_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.p_categoria_codigo_cat_seq', 24, true);


--
-- TOC entry 2376 (class 0 OID 16610)
-- Dependencies: 186
-- Data for Name: p_producto; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.p_producto (codigo_pro, nombre_pro, codigo_est) VALUES (3, 'Zapatos Muñeca                ', 1);


--
-- TOC entry 2377 (class 0 OID 16613)
-- Dependencies: 187
-- Data for Name: p_producto_atributos; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.p_producto_atributos (codigo_dpro, nombre_dpro, codigo_datr, codigo_est, codigo_pro) VALUES (13, '                              ', 13, 1, 3);
INSERT INTO sistema.p_producto_atributos (codigo_dpro, nombre_dpro, codigo_datr, codigo_est, codigo_pro) VALUES (12, '                              ', 11, 1, 3);


--
-- TOC entry 2430 (class 0 OID 0)
-- Dependencies: 188
-- Name: p_producto_atributos_codigo_dpro_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.p_producto_atributos_codigo_dpro_seq', 14, true);


--
-- TOC entry 2431 (class 0 OID 0)
-- Dependencies: 189
-- Name: p_producto_codigo_pro_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.p_producto_codigo_pro_seq', 3, true);


--
-- TOC entry 2380 (class 0 OID 16620)
-- Dependencies: 190
-- Data for Name: s_compania; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.s_compania (codigo_com, nombre_com, ruc_com, direccion_com, telefono1_com, telefono2_com, paginaweb_com, fax_com, representante_com, email1_com, email2_com) VALUES (1, 'Adecor                                  ', '1003677422     ', 'cayambe                                                                                                                                               ', '0628956        ', '               ', '                         ', '               ', '                              ', 'adecorr@hotmail.es       ', '                         ');


--
-- TOC entry 2432 (class 0 OID 0)
-- Dependencies: 191
-- Name: s_compania_codigo_com_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_compania_codigo_com_seq', 1, true);


--
-- TOC entry 2382 (class 0 OID 16625)
-- Dependencies: 192
-- Data for Name: s_estado_dato; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.s_estado_dato (codigo_est, nombre_est) VALUES (1, 'Activo    ');
INSERT INTO sistema.s_estado_dato (codigo_est, nombre_est) VALUES (2, 'Inactivo  ');


--
-- TOC entry 2433 (class 0 OID 0)
-- Dependencies: 193
-- Name: s_estado_dato_codigo_est_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_estado_dato_codigo_est_seq', 2, true);


--
-- TOC entry 2384 (class 0 OID 16630)
-- Dependencies: 194
-- Data for Name: s_modulos; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (1, 'Sistema                       ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (2, 'Postcosecha                   ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (3, 'General                       ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (4, 'Cultivo                       ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (5, 'Portcosecha                   ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (6, 'Ventas                        ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (7, 'Cuentas por cobrar            ');


--
-- TOC entry 2434 (class 0 OID 0)
-- Dependencies: 195
-- Name: s_modulos_codigo_mod_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_modulos_codigo_mod_seq', 7, true);


--
-- TOC entry 2386 (class 0 OID 16635)
-- Dependencies: 196
-- Data for Name: s_perfil_usuario; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.s_perfil_usuario (codigo_per, nombre_per, codigo_est) VALUES (1, 'Administrador                 ', 1);
INSERT INTO sistema.s_perfil_usuario (codigo_per, nombre_per, codigo_est) VALUES (2, 'Ecargado                      ', 1);


--
-- TOC entry 2435 (class 0 OID 0)
-- Dependencies: 197
-- Name: s_perfil_usuario_codigo_per_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_perfil_usuario_codigo_per_seq', 2, true);


--
-- TOC entry 2388 (class 0 OID 16640)
-- Dependencies: 198
-- Data for Name: s_sucursal; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.s_sucursal (codigo_suc, nombre_suc, ruc_suc, direccion_suc, telefono1_suc, telefono2_suc, email1_suc, email2_suc, fax_suc, codigo_com) VALUES (1, 'Ibarra                   ', '               ', '                                                  ', '06289562       ', '               ', 'eadecoibarra@gmail.com                            ', '                                                  ', '               ', 1);


--
-- TOC entry 2436 (class 0 OID 0)
-- Dependencies: 199
-- Name: s_sucursal_codigo_suc_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_sucursal_codigo_suc_seq', 1, true);


--
-- TOC entry 2390 (class 0 OID 16645)
-- Dependencies: 200
-- Data for Name: s_tablas_bdd; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (2, 's_estado_dato                           ', 's_estado_dato                 ', 'codigo_est                    ', 'nombre_est                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (3, 's_modulos                               ', 's_modulos                     ', 'codigo_mod                    ', 'nombre_mod                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (5, 's_sucursal                              ', 's_sucursal                    ', 'codigo_suc                    ', 'nombre_suc                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (6, 's_tablas_bdd                            ', 's_tablas_bdd                  ', 'codigo_tab                    ', 'nombre_tab                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (10, 's_tablas_campos                         ', 's_tablas_campos               ', 'codigo_tac                    ', 'nombre_tac                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (7, 's_tablas_campos_val                     ', 's_tablas_campos_val           ', 'codigo_tav                    ', 'nombre_tav                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (8, 's_usuario                               ', 's_usuario                     ', 'codigo_usu                    ', 'nombre_usu                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (9, 's_variables                             ', 's_variables                   ', 'codigo_var                    ', 'nombre_var                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (1, 's_compania                              ', 's_compania                    ', 'codigo_com                    ', 'nombre_com                    ', NULL, NULL, NULL);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (11, 'p_atributo                              ', 'p_atributo                    ', 'codigo_atr                    ', 'nombre_atr                    ', NULL, NULL, NULL);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (12, 'p_atributo_detalle                      ', 'p_atributo_detalle            ', 'codigo_datr                   ', 'nombre_datr                   ', NULL, NULL, NULL);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (13, 'p_producto                              ', 'p_producto                    ', 'codigo_pro                    ', 'nombre_pro                    ', NULL, NULL, NULL);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (14, 'p_producto_atributos                    ', 'p_producto_atributos          ', 'codigo_dpro                   ', 'nombre_dpro                   ', NULL, NULL, NULL);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (4, 'Perfiles Usuario                        ', 's_perfil_usuario              ', 'codigo_per                    ', 'nombre_per                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (15, 'p_categoria                             ', 'p_categoria                   ', 'codigo_cat                    ', 'nombre_cat                    ', NULL, NULL, NULL);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (16, 's_tipo_nivel                            ', 's_tipo_nivel                  ', 'codigo_tni                    ', 'nombre_tni                    ', NULL, NULL, NULL);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (17, 'v_ciudad                                ', 'v_ciudad                      ', 'codigo_ciu                    ', 'nombre_ciu                    ', NULL, NULL, NULL);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (18, 'v_pais                                  ', 'v_pais                        ', 'codigo_pai                    ', 'nombre_pai                    ', NULL, NULL, NULL);


--
-- TOC entry 2437 (class 0 OID 0)
-- Dependencies: 201
-- Name: s_tablas_bdd_codigo_tab_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_tablas_bdd_codigo_tab_seq', 18, true);


--
-- TOC entry 2392 (class 0 OID 16650)
-- Dependencies: 202
-- Data for Name: s_tablas_campos; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (1, 1, NULL, 'codigo_com                    ', 'codigo_com                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (2, 1, NULL, 'nombre_com                    ', 'nombre_com                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (3, 1, NULL, 'ruc_com                       ', 'ruc_com                       ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (4, 1, NULL, 'direccion_com                 ', 'direccion_com                 ', NULL, NULL, 4);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (5, 1, NULL, 'telefono1_com                 ', 'telefono1_com                 ', NULL, NULL, 5);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (6, 1, NULL, 'telefono2_com                 ', 'telefono2_com                 ', NULL, NULL, 6);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (7, 1, NULL, 'paginaweb_com                 ', 'paginaweb_com                 ', NULL, NULL, 7);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (8, 1, NULL, 'fax_com                       ', 'fax_com                       ', NULL, NULL, 8);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (9, 1, NULL, 'representante_com             ', 'representante_com             ', NULL, NULL, 9);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (10, 1, NULL, 'email1_com                    ', 'email1_com                    ', NULL, NULL, 10);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (11, 1, NULL, 'email2_com                    ', 'email2_com                    ', NULL, NULL, 11);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (12, 2, NULL, 'codigo_est                    ', 'codigo_est                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (13, 2, NULL, 'nombre_est                    ', 'nombre_est                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (14, 3, NULL, 'codigo_mod                    ', 'codigo_mod                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (15, 3, NULL, 'nombre_mod                    ', 'nombre_mod                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (16, 4, NULL, 'codigo_per                    ', 'codigo_per                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (18, 4, NULL, 'codigo_est                    ', 'codigo_est                    ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (19, 5, NULL, 'codigo_suc                    ', 'codigo_suc                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (20, 5, NULL, 'nombre_suc                    ', 'nombre_suc                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (21, 5, NULL, 'ruc_suc                       ', 'ruc_suc                       ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (22, 5, NULL, 'direccion_suc                 ', 'direccion_suc                 ', NULL, NULL, 4);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (23, 5, NULL, 'telefono1_suc                 ', 'telefono1_suc                 ', NULL, NULL, 5);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (24, 5, NULL, 'telefono2_suc                 ', 'telefono2_suc                 ', NULL, NULL, 6);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (25, 5, NULL, 'email1_suc                    ', 'email1_suc                    ', NULL, NULL, 7);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (26, 5, NULL, 'email2_suc                    ', 'email2_suc                    ', NULL, NULL, 8);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (27, 5, NULL, 'fax_suc                       ', 'fax_suc                       ', NULL, NULL, 9);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (28, 5, NULL, 'codigo_com                    ', 'codigo_com                    ', NULL, NULL, 10);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (29, 6, NULL, 'codigo_tab                    ', 'codigo_tab                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (30, 6, NULL, 'nombre_tab                    ', 'nombre_tab                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (31, 6, NULL, 'tabla_tab                     ', 'tabla_tab                     ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (32, 6, NULL, 'codigopk_tab                  ', 'codigopk_tab                  ', NULL, NULL, 4);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (33, 6, NULL, 'campo_tab                     ', 'campo_tab                     ', NULL, NULL, 5);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (34, 6, NULL, 'orderby_tab                   ', 'orderby_tab                   ', NULL, NULL, 6);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (35, 6, NULL, 'condicion_tab                 ', 'condicion_tab                 ', NULL, NULL, 7);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (36, 10, NULL, 'codigo_tac                    ', 'codigo_tac                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (37, 10, NULL, 'codigo_tab                    ', 'codigo_tab                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (44, 7, NULL, 'codigo_tav                    ', 'codigo_tav                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (45, 7, NULL, 'nombre_tav                    ', 'nombre_tav                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (46, 7, NULL, 'expresion_tav                 ', 'expresion_tav                 ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (47, 8, NULL, 'codigo_usu                    ', 'codigo_usu                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (54, 9, NULL, 'codigo_var                    ', 'codigo_var                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (55, 9, NULL, 'nombre_var                    ', 'nombre_var                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (56, 9, NULL, 'descripcion_var               ', 'descripcion_var               ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (57, 9, NULL, 'valor_var                     ', 'valor_var                     ', NULL, NULL, 4);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (58, 6, NULL, 'codigo_mod                    ', 'codigo_mod                    ', NULL, NULL, 8);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (59, 11, NULL, 'codigo_atr                    ', 'codigo_atr                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (60, 11, NULL, 'nombre_atr                    ', 'nombre_atr                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (61, 11, NULL, 'codigo_est                    ', 'codigo_est                    ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (62, 12, NULL, 'codigo_datr                   ', 'codigo_datr                   ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (63, 12, NULL, 'nombre_datr                   ', 'nombre_datr                   ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (64, 12, NULL, 'codigo_est                    ', 'codigo_est                    ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (65, 12, NULL, 'codigo_atr                    ', 'codigo_atr                    ', NULL, NULL, 4);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (66, 13, NULL, 'codigo_pro                    ', 'codigo_pro                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (67, 13, NULL, 'nombre_pro                    ', 'nombre_pro                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (68, 13, NULL, 'codigo_est                    ', 'codigo_est                    ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (69, 14, NULL, 'codigo_dpro                   ', 'codigo_dpro                   ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (73, 14, NULL, 'codigo_pro                    ', 'codigo_pro                    ', NULL, NULL, 5);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (38, 10, NULL, 'Validación                    ', 'codigo_tav                    ', NULL, NULL, 5);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (39, 10, NULL, 'Nombre                        ', 'nombre_tac                    ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (48, 8, NULL, 'Nombre                        ', 'nombre_usu                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (49, 8, 7, 'Usuarios                      ', 'usuario_usu                   ', NULL, 3, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (50, 8, 5, 'Clave                         ', 'clave_usu                     ', NULL, 4, 4);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (51, 8, NULL, 'Perfil                        ', 'codigo_per                    ', NULL, NULL, 5);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (52, 8, 11, 'Fecha Caducidad               ', 'fechacaducidad_usu            ', NULL, NULL, 6);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (53, 8, NULL, 'Estado                        ', 'codigo_est                    ', NULL, NULL, 7);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (17, 4, 7, 'nombre_per                    ', 'nombre_per                    ', NULL, 3, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (43, 10, NULL, 'Orden                         ', 'orden_tac                     ', NULL, NULL, 8);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (40, 10, NULL, 'Campo                         ', 'nombrecampobdd_tac            ', NULL, NULL, 4);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (42, 10, 1, 'Min Caracteres                ', 'minlength_tac                 ', NULL, NULL, 7);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (41, 10, 7, 'Mascara                       ', 'mascara_tac                   ', NULL, NULL, 6);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (74, 15, NULL, 'codigo_cat                    ', 'codigo_cat                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (75, 15, NULL, 'nombre_cat                    ', 'nombre_cat                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (70, 14, NULL, 'Descripción                   ', 'nombre_dpro                   ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (72, 14, NULL, 'Estado                        ', 'codigo_est                    ', NULL, NULL, 4);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (76, 15, NULL, 'padre_cat                     ', 'padre_cat                     ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (77, 15, NULL, 'codigo_tni                    ', 'codigo_tni                    ', NULL, NULL, 4);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (78, 15, NULL, 'classicon_cat                 ', 'classicon_cat                 ', NULL, NULL, 5);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (79, 16, NULL, 'codigo_tni                    ', 'codigo_tni                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (80, 16, NULL, 'nombre_tni                    ', 'nombre_tni                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (81, 17, NULL, 'codigo_ciu                    ', 'codigo_ciu                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (82, 17, NULL, 'nombre_ciu                    ', 'nombre_ciu                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (83, 17, NULL, 'alterno_ciu                   ', 'alterno_ciu                   ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (84, 17, NULL, 'codigo_pai                    ', 'codigo_pai                    ', NULL, NULL, 4);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (85, 18, NULL, 'codigo_pai                    ', 'codigo_pai                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (86, 18, NULL, 'nombre_pai                    ', 'nombre_pai                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (87, 18, NULL, 'alterno_pai                   ', 'alterno_pai                   ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (71, 14, 4, 'Atributo                      ', 'codigo_datr                   ', NULL, NULL, 2);


--
-- TOC entry 2438 (class 0 OID 0)
-- Dependencies: 203
-- Name: s_tablas_campos_codigo_tac_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_tablas_campos_codigo_tac_seq', 87, true);


--
-- TOC entry 2394 (class 0 OID 16656)
-- Dependencies: 204
-- Data for Name: s_tablas_campos_val; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (1, 'Enteros                       ', 'numeros-enteros                                                                                     ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (2, 'Decimales                     ', 'numeros-decimales                                                                                   ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (3, 'Letras y espacios             ', 'letras-y-espacios                                                                                   ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (4, 'Alfanúmerico y espacios       ', 'alfanumerico-y-espacios                                                                             ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (5, 'Password                      ', 'password                                                                                            ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (6, 'Letras sin espacios           ', 'letras-sin-espacios                                                                                 ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (7, 'Alfanúmericos sin espacios    ', 'alfanumerico-sin-espacios                                                                           ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (8, 'Tarjeta de crédito            ', 'tarjeta-credito                                                                                     ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (9, 'Precio                        ', 'precio                                                                                              ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (10, 'URL                           ', 'url                                                                                                 ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (11, 'Fecha                         ', 'fecha                                                                                               ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (12, 'Letras minúsculas             ', 'letras-minusculas                                                                                   ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (13, 'Letras mayúsculas             ', 'letras-mayusculas                                                                                   ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (14, 'Código postal                 ', 'codigo-postal                                                                                       ');
INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (15, 'Cédula                        ', 'cedula-ruc-ecuador                                                                                  ');


--
-- TOC entry 2439 (class 0 OID 0)
-- Dependencies: 205
-- Name: s_tablas_campos_val_codigo_tav_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_tablas_campos_val_codigo_tav_seq', 15, true);


--
-- TOC entry 2401 (class 0 OID 16813)
-- Dependencies: 211
-- Data for Name: s_tipo_nivel; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.s_tipo_nivel (codigo_tni, nombre_tni) VALUES (1, 'folder              ');
INSERT INTO sistema.s_tipo_nivel (codigo_tni, nombre_tni) VALUES (2, 'item                ');


--
-- TOC entry 2440 (class 0 OID 0)
-- Dependencies: 210
-- Name: s_tipo_nivel_codigo_tni_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_tipo_nivel_codigo_tni_seq', 2, true);


--
-- TOC entry 2396 (class 0 OID 16661)
-- Dependencies: 206
-- Data for Name: s_usuario; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

INSERT INTO sistema.s_usuario (codigo_usu, nombre_usu, usuario_usu, clave_usu, codigo_per, fechacaducidad_usu, codigo_est) VALUES (1, 'Brian                                             ', 'BROCPO      ', '1234        ', 1, '2019-01-31', 1);


--
-- TOC entry 2441 (class 0 OID 0)
-- Dependencies: 207
-- Name: s_usuario_codigo_usu_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_usuario_codigo_usu_seq', 1, true);


--
-- TOC entry 2398 (class 0 OID 16666)
-- Dependencies: 208
-- Data for Name: s_variables; Type: TABLE DATA; Schema: sistema; Owner: postgres
--



--
-- TOC entry 2442 (class 0 OID 0)
-- Dependencies: 209
-- Name: s_variables_codigo_var_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_variables_codigo_var_seq', 1, false);


--
-- TOC entry 2405 (class 0 OID 16851)
-- Dependencies: 215
-- Data for Name: v_ciudad; Type: TABLE DATA; Schema: sistema; Owner: postgres
--



--
-- TOC entry 2404 (class 0 OID 16845)
-- Dependencies: 214
-- Data for Name: v_pais; Type: TABLE DATA; Schema: sistema; Owner: postgres
--



--
-- TOC entry 2176 (class 2606 OID 16686)
-- Name: PK_codigo_atr; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo
    ADD CONSTRAINT "PK_codigo_atr" PRIMARY KEY (codigo_atr);


--
-- TOC entry 2233 (class 2606 OID 16826)
-- Name: PK_codigo_cat; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_categoria
    ADD CONSTRAINT "PK_codigo_cat" PRIMARY KEY (codigo_cat);


--
-- TOC entry 2240 (class 2606 OID 16855)
-- Name: PK_codigo_ciu; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.v_ciudad
    ADD CONSTRAINT "PK_codigo_ciu" PRIMARY KEY (codigo_ciu);


--
-- TOC entry 2185 (class 2606 OID 16688)
-- Name: PK_codigo_com; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT "PK_codigo_com" PRIMARY KEY (codigo_com);


--
-- TOC entry 2178 (class 2606 OID 16690)
-- Name: PK_codigo_datr; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo_detalle
    ADD CONSTRAINT "PK_codigo_datr" PRIMARY KEY (codigo_datr);


--
-- TOC entry 2182 (class 2606 OID 16692)
-- Name: PK_codigo_dpro; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto_atributos
    ADD CONSTRAINT "PK_codigo_dpro" PRIMARY KEY (codigo_dpro);


--
-- TOC entry 2191 (class 2606 OID 16694)
-- Name: PK_codigo_est; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_estado_dato
    ADD CONSTRAINT "PK_codigo_est" PRIMARY KEY (codigo_est);


--
-- TOC entry 2195 (class 2606 OID 16696)
-- Name: PK_codigo_mod; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_modulos
    ADD CONSTRAINT "PK_codigo_mod" PRIMARY KEY (codigo_mod);


--
-- TOC entry 2236 (class 2606 OID 16849)
-- Name: PK_codigo_pai; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.v_pais
    ADD CONSTRAINT "PK_codigo_pai" PRIMARY KEY (codigo_pai);


--
-- TOC entry 2199 (class 2606 OID 16698)
-- Name: PK_codigo_per; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_perfil_usuario
    ADD CONSTRAINT "PK_codigo_per" PRIMARY KEY (codigo_per);


--
-- TOC entry 2180 (class 2606 OID 16700)
-- Name: PK_codigo_pro; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto
    ADD CONSTRAINT "PK_codigo_pro" PRIMARY KEY (codigo_pro);


--
-- TOC entry 2203 (class 2606 OID 16702)
-- Name: PK_codigo_suc; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT "PK_codigo_suc" PRIMARY KEY (codigo_suc);


--
-- TOC entry 2211 (class 2606 OID 16704)
-- Name: PK_codigo_tab; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_bdd
    ADD CONSTRAINT "PK_codigo_tab" PRIMARY KEY (codigo_tab);


--
-- TOC entry 2216 (class 2606 OID 16706)
-- Name: PK_codigo_tac; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_campos
    ADD CONSTRAINT "PK_codigo_tac" PRIMARY KEY (codigo_tac);


--
-- TOC entry 2219 (class 2606 OID 16708)
-- Name: PK_codigo_tav; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_campos_val
    ADD CONSTRAINT "PK_codigo_tav" PRIMARY KEY (codigo_tav);


--
-- TOC entry 2231 (class 2606 OID 16818)
-- Name: PK_codigo_tni; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tipo_nivel
    ADD CONSTRAINT "PK_codigo_tni" PRIMARY KEY (codigo_tni);


--
-- TOC entry 2224 (class 2606 OID 16710)
-- Name: PK_codigo_usu; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT "PK_codigo_usu" PRIMARY KEY (codigo_usu);


--
-- TOC entry 2229 (class 2606 OID 16712)
-- Name: PK_codigo_var; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_variables
    ADD CONSTRAINT "PK_codigo_var" PRIMARY KEY (codigo_var);


--
-- TOC entry 2187 (class 2606 OID 16714)
-- Name: s_compania_nombre_com_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT s_compania_nombre_com_key UNIQUE (nombre_com);


--
-- TOC entry 2189 (class 2606 OID 16716)
-- Name: s_compania_ruc_com_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT s_compania_ruc_com_key UNIQUE (ruc_com);


--
-- TOC entry 2205 (class 2606 OID 16718)
-- Name: s_sucursal_nombre_suc_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT s_sucursal_nombre_suc_key UNIQUE (nombre_suc);


--
-- TOC entry 2207 (class 2606 OID 16720)
-- Name: s_sucursal_ruc_suc_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT s_sucursal_ruc_suc_key UNIQUE (ruc_suc);


--
-- TOC entry 2226 (class 2606 OID 16722)
-- Name: s_usuario_usuario_usu_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT s_usuario_usuario_usu_key UNIQUE (usuario_usu);


--
-- TOC entry 2183 (class 1259 OID 16723)
-- Name: Index_s_compania_codigo_com; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_compania_codigo_com" ON sistema.s_compania USING btree (codigo_com);


--
-- TOC entry 2193 (class 1259 OID 16724)
-- Name: Index_s_modulos_codigo_mod; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_modulos_codigo_mod" ON sistema.s_modulos USING btree (codigo_mod);


--
-- TOC entry 2196 (class 1259 OID 16725)
-- Name: Index_s_perfil_usuario_codigo_est; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_perfil_usuario_codigo_est" ON sistema.s_perfil_usuario USING btree (codigo_est);


--
-- TOC entry 2197 (class 1259 OID 16726)
-- Name: Index_s_perfil_usuario_codigo_per; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_perfil_usuario_codigo_per" ON sistema.s_perfil_usuario USING btree (codigo_per);


--
-- TOC entry 2200 (class 1259 OID 16727)
-- Name: Index_s_sucursal_codigo_com; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_sucursal_codigo_com" ON sistema.s_sucursal USING btree (codigo_com);


--
-- TOC entry 2201 (class 1259 OID 16728)
-- Name: Index_s_sucursal_codigo_suc; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_sucursal_codigo_suc" ON sistema.s_sucursal USING btree (codigo_suc);


--
-- TOC entry 2208 (class 1259 OID 16729)
-- Name: Index_s_tablas_bdd_codigo_mod; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_tablas_bdd_codigo_mod" ON sistema.s_tablas_bdd USING btree (codigo_mod);


--
-- TOC entry 2209 (class 1259 OID 16730)
-- Name: Index_s_tablas_bdd_codigo_tab; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_tablas_bdd_codigo_tab" ON sistema.s_tablas_bdd USING btree (codigo_tab);


--
-- TOC entry 2212 (class 1259 OID 16731)
-- Name: Index_s_tablas_campos_codigo_tab; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_tablas_campos_codigo_tab" ON sistema.s_tablas_campos USING btree (codigo_tab);


--
-- TOC entry 2213 (class 1259 OID 16732)
-- Name: Index_s_tablas_campos_codigo_tac; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_tablas_campos_codigo_tac" ON sistema.s_tablas_campos USING btree (codigo_tac);


--
-- TOC entry 2214 (class 1259 OID 16733)
-- Name: Index_s_tablas_campos_codigo_tav; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_tablas_campos_codigo_tav" ON sistema.s_tablas_campos USING btree (codigo_tav);


--
-- TOC entry 2217 (class 1259 OID 16734)
-- Name: Index_s_tablas_campos_val_codigo_tav; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_tablas_campos_val_codigo_tav" ON sistema.s_tablas_campos_val USING btree (codigo_tav);


--
-- TOC entry 2220 (class 1259 OID 16735)
-- Name: Index_s_usuario_codigo_est; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_usuario_codigo_est" ON sistema.s_usuario USING btree (codigo_est);


--
-- TOC entry 2221 (class 1259 OID 16736)
-- Name: Index_s_usuario_codigo_per; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_usuario_codigo_per" ON sistema.s_usuario USING btree (codigo_per);


--
-- TOC entry 2222 (class 1259 OID 16737)
-- Name: Index_s_usuario_codigo_usu; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_usuario_codigo_usu" ON sistema.s_usuario USING btree (codigo_usu);


--
-- TOC entry 2227 (class 1259 OID 16738)
-- Name: Index_s_variables_codigo_var; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_variables_codigo_var" ON sistema.s_variables USING btree (codigo_var);


--
-- TOC entry 2237 (class 1259 OID 16862)
-- Name: Index_v_ciudad_codigo_ciu; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_v_ciudad_codigo_ciu" ON sistema.v_ciudad USING btree (codigo_ciu);


--
-- TOC entry 2238 (class 1259 OID 16861)
-- Name: Index_v_ciudad_codigo_pai; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_v_ciudad_codigo_pai" ON sistema.v_ciudad USING btree (codigo_pai);


--
-- TOC entry 2234 (class 1259 OID 16850)
-- Name: Index_v_pais_codigo_pai; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_v_pais_codigo_pai" ON sistema.v_pais USING btree (codigo_pai);


--
-- TOC entry 2192 (class 1259 OID 16739)
-- Name: index_s_estado_dato_codigo_est; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX index_s_estado_dato_codigo_est ON sistema.s_estado_dato USING btree (codigo_est);


--
-- TOC entry 2241 (class 2606 OID 16740)
-- Name: FK_p_atributo_codigo_est; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo
    ADD CONSTRAINT "FK_p_atributo_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);


--
-- TOC entry 2242 (class 2606 OID 16745)
-- Name: FK_p_atributo_detalle_codigo_atr; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo_detalle
    ADD CONSTRAINT "FK_p_atributo_detalle_codigo_atr" FOREIGN KEY (codigo_atr) REFERENCES sistema.p_atributo(codigo_atr);


--
-- TOC entry 2243 (class 2606 OID 16750)
-- Name: FK_p_atributo_detalle_codigo_est; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo_detalle
    ADD CONSTRAINT "FK_p_atributo_detalle_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);


--
-- TOC entry 2255 (class 2606 OID 16827)
-- Name: FK_p_categoria_codigo_tni; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_categoria
    ADD CONSTRAINT "FK_p_categoria_codigo_tni" FOREIGN KEY (codigo_tni) REFERENCES sistema.s_tipo_nivel(codigo_tni);


--
-- TOC entry 2256 (class 2606 OID 16832)
-- Name: FK_p_categoria_padre_cat; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_categoria
    ADD CONSTRAINT "FK_p_categoria_padre_cat" FOREIGN KEY (padre_cat) REFERENCES sistema.p_categoria(codigo_cat);


--
-- TOC entry 2244 (class 2606 OID 16755)
-- Name: FK_p_producto_codigo_est; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto
    ADD CONSTRAINT "FK_p_producto_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);


--
-- TOC entry 2245 (class 2606 OID 16760)
-- Name: FK_p_producto_detalle_codigo_datr; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto_atributos
    ADD CONSTRAINT "FK_p_producto_detalle_codigo_datr" FOREIGN KEY (codigo_datr) REFERENCES sistema.p_atributo_detalle(codigo_datr);


--
-- TOC entry 2246 (class 2606 OID 16765)
-- Name: FK_p_producto_detalle_codigo_est; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto_atributos
    ADD CONSTRAINT "FK_p_producto_detalle_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);


--
-- TOC entry 2247 (class 2606 OID 16770)
-- Name: FK_p_producto_detalle_codigo_pro; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto_atributos
    ADD CONSTRAINT "FK_p_producto_detalle_codigo_pro" FOREIGN KEY (codigo_pro) REFERENCES sistema.p_producto(codigo_pro);


--
-- TOC entry 2248 (class 2606 OID 16775)
-- Name: FK_s_perfil_usuarios_codigo_est; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_perfil_usuario
    ADD CONSTRAINT "FK_s_perfil_usuarios_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);


--
-- TOC entry 2249 (class 2606 OID 16780)
-- Name: FK_s_sucursal_codigo_com; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT "FK_s_sucursal_codigo_com" FOREIGN KEY (codigo_com) REFERENCES sistema.s_compania(codigo_com);


--
-- TOC entry 2250 (class 2606 OID 16785)
-- Name: FK_s_tablas_bdd_codigo_mod; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_bdd
    ADD CONSTRAINT "FK_s_tablas_bdd_codigo_mod" FOREIGN KEY (codigo_mod) REFERENCES sistema.s_modulos(codigo_mod);


--
-- TOC entry 2251 (class 2606 OID 16790)
-- Name: FK_s_tablas_campos_codigo_tab; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_campos
    ADD CONSTRAINT "FK_s_tablas_campos_codigo_tab" FOREIGN KEY (codigo_tab) REFERENCES sistema.s_tablas_bdd(codigo_tab);


--
-- TOC entry 2252 (class 2606 OID 16795)
-- Name: FK_s_tablas_campos_codigo_tav; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_campos
    ADD CONSTRAINT "FK_s_tablas_campos_codigo_tav" FOREIGN KEY (codigo_tav) REFERENCES sistema.s_tablas_campos_val(codigo_tav);


--
-- TOC entry 2253 (class 2606 OID 16800)
-- Name: FK_s_usuario_codigo_est; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT "FK_s_usuario_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);


--
-- TOC entry 2254 (class 2606 OID 16805)
-- Name: FK_s_usuario_codigo_per; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT "FK_s_usuario_codigo_per" FOREIGN KEY (codigo_per) REFERENCES sistema.s_perfil_usuario(codigo_per);


--
-- TOC entry 2257 (class 2606 OID 16856)
-- Name: FK_v_ciudad_codigo_pai; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.v_ciudad
    ADD CONSTRAINT "FK_v_ciudad_codigo_pai" FOREIGN KEY (codigo_pai) REFERENCES sistema.v_pais(codigo_pai);


-- Completed on 2019-01-08 16:58:41 -05

--
-- PostgreSQL database dump complete
--

