toc.dat                                                                                             0000600 0004000 0002000 00000137646 13415216543 0014464 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                             w         	   Dannasoft    9.5.15    9.5.15 �    h	           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                       false         i	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         j	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                     2615    16599    sistema    SCHEMA        CREATE SCHEMA sistema;
    DROP SCHEMA sistema;
             postgres    false         �            1259    16600 
   p_atributo    TABLE     {   CREATE TABLE sistema.p_atributo (
    codigo_atr integer NOT NULL,
    nombre_atr character(30),
    codigo_est integer
);
    DROP TABLE sistema.p_atributo;
       sistema         postgres    false    8         �            1259    16603    p_atributo_codigo_atr_seq    SEQUENCE     �   CREATE SEQUENCE sistema.p_atributo_codigo_atr_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE sistema.p_atributo_codigo_atr_seq;
       sistema       postgres    false    182    8         k	           0    0    p_atributo_codigo_atr_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE sistema.p_atributo_codigo_atr_seq OWNED BY sistema.p_atributo.codigo_atr;
            sistema       postgres    false    183         �            1259    16605    p_atributo_detalle    TABLE     �   CREATE TABLE sistema.p_atributo_detalle (
    codigo_datr integer NOT NULL,
    nombre_datr character(30),
    codigo_est integer,
    codigo_atr integer NOT NULL
);
 '   DROP TABLE sistema.p_atributo_detalle;
       sistema         postgres    false    8         �            1259    16608 "   p_atributo_detalle_codigo_datr_seq    SEQUENCE     �   CREATE SEQUENCE sistema.p_atributo_detalle_codigo_datr_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE sistema.p_atributo_detalle_codigo_datr_seq;
       sistema       postgres    false    8    184         l	           0    0 "   p_atributo_detalle_codigo_datr_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE sistema.p_atributo_detalle_codigo_datr_seq OWNED BY sistema.p_atributo_detalle.codigo_datr;
            sistema       postgres    false    185         �            1259    16821    p_categoria    TABLE     �   CREATE TABLE sistema.p_categoria (
    codigo_cat integer NOT NULL,
    nombre_cat character(30),
    padre_cat integer,
    codigo_tni integer,
    classicon_cat character(20)
);
     DROP TABLE sistema.p_categoria;
       sistema         postgres    false    8         �            1259    16819    p_categoria_codigo_cat_seq    SEQUENCE     �   CREATE SEQUENCE sistema.p_categoria_codigo_cat_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE sistema.p_categoria_codigo_cat_seq;
       sistema       postgres    false    213    8         m	           0    0    p_categoria_codigo_cat_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE sistema.p_categoria_codigo_cat_seq OWNED BY sistema.p_categoria.codigo_cat;
            sistema       postgres    false    212         �            1259    16610 
   p_producto    TABLE     {   CREATE TABLE sistema.p_producto (
    codigo_pro integer NOT NULL,
    nombre_pro character(30),
    codigo_est integer
);
    DROP TABLE sistema.p_producto;
       sistema         postgres    false    8         �            1259    16613    p_producto_atributos    TABLE     �   CREATE TABLE sistema.p_producto_atributos (
    codigo_dpro integer NOT NULL,
    nombre_dpro character(30),
    codigo_datr integer NOT NULL,
    codigo_est integer,
    codigo_pro integer NOT NULL
);
 )   DROP TABLE sistema.p_producto_atributos;
       sistema         postgres    false    8         �            1259    16616 $   p_producto_atributos_codigo_dpro_seq    SEQUENCE     �   CREATE SEQUENCE sistema.p_producto_atributos_codigo_dpro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE sistema.p_producto_atributos_codigo_dpro_seq;
       sistema       postgres    false    8    187         n	           0    0 $   p_producto_atributos_codigo_dpro_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE sistema.p_producto_atributos_codigo_dpro_seq OWNED BY sistema.p_producto_atributos.codigo_dpro;
            sistema       postgres    false    188         �            1259    16618    p_producto_codigo_pro_seq    SEQUENCE     �   CREATE SEQUENCE sistema.p_producto_codigo_pro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE sistema.p_producto_codigo_pro_seq;
       sistema       postgres    false    186    8         o	           0    0    p_producto_codigo_pro_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE sistema.p_producto_codigo_pro_seq OWNED BY sistema.p_producto.codigo_pro;
            sistema       postgres    false    189         �            1259    16620 
   s_compania    TABLE     �  CREATE TABLE sistema.s_compania (
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
    DROP TABLE sistema.s_compania;
       sistema         postgres    false    8         �            1259    16623    s_compania_codigo_com_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_compania_codigo_com_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE sistema.s_compania_codigo_com_seq;
       sistema       postgres    false    8    190         p	           0    0    s_compania_codigo_com_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE sistema.s_compania_codigo_com_seq OWNED BY sistema.s_compania.codigo_com;
            sistema       postgres    false    191         �            1259    16625    s_estado_dato    TABLE     o   CREATE TABLE sistema.s_estado_dato (
    codigo_est integer NOT NULL,
    nombre_est character(10) NOT NULL
);
 "   DROP TABLE sistema.s_estado_dato;
       sistema         postgres    false    8         �            1259    16628    s_estado_dato_codigo_est_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_estado_dato_codigo_est_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE sistema.s_estado_dato_codigo_est_seq;
       sistema       postgres    false    8    192         q	           0    0    s_estado_dato_codigo_est_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE sistema.s_estado_dato_codigo_est_seq OWNED BY sistema.s_estado_dato.codigo_est;
            sistema       postgres    false    193         �            1259    16630 	   s_modulos    TABLE     k   CREATE TABLE sistema.s_modulos (
    codigo_mod integer NOT NULL,
    nombre_mod character(30) NOT NULL
);
    DROP TABLE sistema.s_modulos;
       sistema         postgres    false    8         �            1259    16633    s_modulos_codigo_mod_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_modulos_codigo_mod_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE sistema.s_modulos_codigo_mod_seq;
       sistema       postgres    false    8    194         r	           0    0    s_modulos_codigo_mod_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE sistema.s_modulos_codigo_mod_seq OWNED BY sistema.s_modulos.codigo_mod;
            sistema       postgres    false    195         �            1259    16635    s_perfil_usuario    TABLE     �   CREATE TABLE sistema.s_perfil_usuario (
    codigo_per integer NOT NULL,
    nombre_per character(30) NOT NULL,
    codigo_est integer
);
 %   DROP TABLE sistema.s_perfil_usuario;
       sistema         postgres    false    8         �            1259    16638    s_perfil_usuario_codigo_per_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_perfil_usuario_codigo_per_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE sistema.s_perfil_usuario_codigo_per_seq;
       sistema       postgres    false    8    196         s	           0    0    s_perfil_usuario_codigo_per_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE sistema.s_perfil_usuario_codigo_per_seq OWNED BY sistema.s_perfil_usuario.codigo_per;
            sistema       postgres    false    197         �            1259    16640 
   s_sucursal    TABLE     k  CREATE TABLE sistema.s_sucursal (
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
    DROP TABLE sistema.s_sucursal;
       sistema         postgres    false    8         �            1259    16643    s_sucursal_codigo_suc_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_sucursal_codigo_suc_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE sistema.s_sucursal_codigo_suc_seq;
       sistema       postgres    false    198    8         t	           0    0    s_sucursal_codigo_suc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE sistema.s_sucursal_codigo_suc_seq OWNED BY sistema.s_sucursal.codigo_suc;
            sistema       postgres    false    199         �            1259    16645    s_tablas_bdd    TABLE     ;  CREATE TABLE sistema.s_tablas_bdd (
    codigo_tab integer NOT NULL,
    nombre_tab character(40) NOT NULL,
    tabla_tab character(30) NOT NULL,
    codigopk_tab character(30) NOT NULL,
    campo_tab character(30) NOT NULL,
    orderby_tab character(50),
    condicion_tab character(50),
    codigo_mod integer
);
 !   DROP TABLE sistema.s_tablas_bdd;
       sistema         postgres    false    8         �            1259    16648    s_tablas_bdd_codigo_tab_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_tablas_bdd_codigo_tab_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE sistema.s_tablas_bdd_codigo_tab_seq;
       sistema       postgres    false    8    200         u	           0    0    s_tablas_bdd_codigo_tab_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE sistema.s_tablas_bdd_codigo_tab_seq OWNED BY sistema.s_tablas_bdd.codigo_tab;
            sistema       postgres    false    201         �            1259    16650    s_tablas_campos    TABLE     =  CREATE TABLE sistema.s_tablas_campos (
    codigo_tac integer NOT NULL,
    codigo_tab integer NOT NULL,
    codigo_tav integer,
    nombre_tac character(30) NOT NULL,
    nombrecampobdd_tac character(30) NOT NULL,
    mascara_tac character(50),
    minlength_tac integer,
    orden_tac integer DEFAULT 0 NOT NULL
);
 $   DROP TABLE sistema.s_tablas_campos;
       sistema         postgres    false    8         �            1259    16654    s_tablas_campos_codigo_tac_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_tablas_campos_codigo_tac_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE sistema.s_tablas_campos_codigo_tac_seq;
       sistema       postgres    false    202    8         v	           0    0    s_tablas_campos_codigo_tac_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE sistema.s_tablas_campos_codigo_tac_seq OWNED BY sistema.s_tablas_campos.codigo_tac;
            sistema       postgres    false    203         �            1259    16656    s_tablas_campos_val    TABLE     �   CREATE TABLE sistema.s_tablas_campos_val (
    codigo_tav integer NOT NULL,
    nombre_tav character(30) NOT NULL,
    expresion_tav character(100) NOT NULL
);
 (   DROP TABLE sistema.s_tablas_campos_val;
       sistema         postgres    false    8         �            1259    16659 "   s_tablas_campos_val_codigo_tav_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_tablas_campos_val_codigo_tav_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE sistema.s_tablas_campos_val_codigo_tav_seq;
       sistema       postgres    false    204    8         w	           0    0 "   s_tablas_campos_val_codigo_tav_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE sistema.s_tablas_campos_val_codigo_tav_seq OWNED BY sistema.s_tablas_campos_val.codigo_tav;
            sistema       postgres    false    205         �            1259    16813    s_tipo_nivel    TABLE     e   CREATE TABLE sistema.s_tipo_nivel (
    codigo_tni integer NOT NULL,
    nombre_tni character(20)
);
 !   DROP TABLE sistema.s_tipo_nivel;
       sistema         postgres    false    8         �            1259    16811    s_tipo_nivel_codigo_tni_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_tipo_nivel_codigo_tni_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE sistema.s_tipo_nivel_codigo_tni_seq;
       sistema       postgres    false    211    8         x	           0    0    s_tipo_nivel_codigo_tni_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE sistema.s_tipo_nivel_codigo_tni_seq OWNED BY sistema.s_tipo_nivel.codigo_tni;
            sistema       postgres    false    210         �            1259    16661 	   s_usuario    TABLE       CREATE TABLE sistema.s_usuario (
    codigo_usu integer NOT NULL,
    nombre_usu character(50) NOT NULL,
    usuario_usu character(12) NOT NULL,
    clave_usu character(12) NOT NULL,
    codigo_per integer NOT NULL,
    fechacaducidad_usu date,
    codigo_est integer
);
    DROP TABLE sistema.s_usuario;
       sistema         postgres    false    8         �            1259    16664    s_usuario_codigo_usu_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_usuario_codigo_usu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE sistema.s_usuario_codigo_usu_seq;
       sistema       postgres    false    8    206         y	           0    0    s_usuario_codigo_usu_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE sistema.s_usuario_codigo_usu_seq OWNED BY sistema.s_usuario.codigo_usu;
            sistema       postgres    false    207         �            1259    16666    s_variables    TABLE     �   CREATE TABLE sistema.s_variables (
    codigo_var integer NOT NULL,
    nombre_var character(40) NOT NULL,
    descripcion_var character(100) NOT NULL,
    valor_var character(50) NOT NULL
);
     DROP TABLE sistema.s_variables;
       sistema         postgres    false    8         �            1259    16669    s_variables_codigo_var_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_variables_codigo_var_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE sistema.s_variables_codigo_var_seq;
       sistema       postgres    false    8    208         z	           0    0    s_variables_codigo_var_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE sistema.s_variables_codigo_var_seq OWNED BY sistema.s_variables.codigo_var;
            sistema       postgres    false    209         �            1259    16851    v_ciudad    TABLE     �   CREATE TABLE sistema.v_ciudad (
    codigo_ciu integer NOT NULL,
    nombre_ciu character(20) NOT NULL,
    alterno_ciu character(20) NOT NULL,
    codigo_pai integer
);
    DROP TABLE sistema.v_ciudad;
       sistema         postgres    false    8         �            1259    16845    v_pais    TABLE     �   CREATE TABLE sistema.v_pais (
    codigo_pai integer NOT NULL,
    nombre_pai character(20) NOT NULL,
    alterno_pai character(20)
);
    DROP TABLE sistema.v_pais;
       sistema         postgres    false    8         n           2604    16671 
   codigo_atr    DEFAULT     �   ALTER TABLE ONLY sistema.p_atributo ALTER COLUMN codigo_atr SET DEFAULT nextval('sistema.p_atributo_codigo_atr_seq'::regclass);
 E   ALTER TABLE sistema.p_atributo ALTER COLUMN codigo_atr DROP DEFAULT;
       sistema       postgres    false    183    182         o           2604    16672    codigo_datr    DEFAULT     �   ALTER TABLE ONLY sistema.p_atributo_detalle ALTER COLUMN codigo_datr SET DEFAULT nextval('sistema.p_atributo_detalle_codigo_datr_seq'::regclass);
 N   ALTER TABLE sistema.p_atributo_detalle ALTER COLUMN codigo_datr DROP DEFAULT;
       sistema       postgres    false    185    184         ~           2604    16824 
   codigo_cat    DEFAULT     �   ALTER TABLE ONLY sistema.p_categoria ALTER COLUMN codigo_cat SET DEFAULT nextval('sistema.p_categoria_codigo_cat_seq'::regclass);
 F   ALTER TABLE sistema.p_categoria ALTER COLUMN codigo_cat DROP DEFAULT;
       sistema       postgres    false    213    212    213         p           2604    16673 
   codigo_pro    DEFAULT     �   ALTER TABLE ONLY sistema.p_producto ALTER COLUMN codigo_pro SET DEFAULT nextval('sistema.p_producto_codigo_pro_seq'::regclass);
 E   ALTER TABLE sistema.p_producto ALTER COLUMN codigo_pro DROP DEFAULT;
       sistema       postgres    false    189    186         q           2604    16674    codigo_dpro    DEFAULT     �   ALTER TABLE ONLY sistema.p_producto_atributos ALTER COLUMN codigo_dpro SET DEFAULT nextval('sistema.p_producto_atributos_codigo_dpro_seq'::regclass);
 P   ALTER TABLE sistema.p_producto_atributos ALTER COLUMN codigo_dpro DROP DEFAULT;
       sistema       postgres    false    188    187         r           2604    16675 
   codigo_com    DEFAULT     �   ALTER TABLE ONLY sistema.s_compania ALTER COLUMN codigo_com SET DEFAULT nextval('sistema.s_compania_codigo_com_seq'::regclass);
 E   ALTER TABLE sistema.s_compania ALTER COLUMN codigo_com DROP DEFAULT;
       sistema       postgres    false    191    190         s           2604    16676 
   codigo_est    DEFAULT     �   ALTER TABLE ONLY sistema.s_estado_dato ALTER COLUMN codigo_est SET DEFAULT nextval('sistema.s_estado_dato_codigo_est_seq'::regclass);
 H   ALTER TABLE sistema.s_estado_dato ALTER COLUMN codigo_est DROP DEFAULT;
       sistema       postgres    false    193    192         t           2604    16677 
   codigo_mod    DEFAULT     ~   ALTER TABLE ONLY sistema.s_modulos ALTER COLUMN codigo_mod SET DEFAULT nextval('sistema.s_modulos_codigo_mod_seq'::regclass);
 D   ALTER TABLE sistema.s_modulos ALTER COLUMN codigo_mod DROP DEFAULT;
       sistema       postgres    false    195    194         u           2604    16678 
   codigo_per    DEFAULT     �   ALTER TABLE ONLY sistema.s_perfil_usuario ALTER COLUMN codigo_per SET DEFAULT nextval('sistema.s_perfil_usuario_codigo_per_seq'::regclass);
 K   ALTER TABLE sistema.s_perfil_usuario ALTER COLUMN codigo_per DROP DEFAULT;
       sistema       postgres    false    197    196         v           2604    16679 
   codigo_suc    DEFAULT     �   ALTER TABLE ONLY sistema.s_sucursal ALTER COLUMN codigo_suc SET DEFAULT nextval('sistema.s_sucursal_codigo_suc_seq'::regclass);
 E   ALTER TABLE sistema.s_sucursal ALTER COLUMN codigo_suc DROP DEFAULT;
       sistema       postgres    false    199    198         w           2604    16680 
   codigo_tab    DEFAULT     �   ALTER TABLE ONLY sistema.s_tablas_bdd ALTER COLUMN codigo_tab SET DEFAULT nextval('sistema.s_tablas_bdd_codigo_tab_seq'::regclass);
 G   ALTER TABLE sistema.s_tablas_bdd ALTER COLUMN codigo_tab DROP DEFAULT;
       sistema       postgres    false    201    200         y           2604    16681 
   codigo_tac    DEFAULT     �   ALTER TABLE ONLY sistema.s_tablas_campos ALTER COLUMN codigo_tac SET DEFAULT nextval('sistema.s_tablas_campos_codigo_tac_seq'::regclass);
 J   ALTER TABLE sistema.s_tablas_campos ALTER COLUMN codigo_tac DROP DEFAULT;
       sistema       postgres    false    203    202         z           2604    16682 
   codigo_tav    DEFAULT     �   ALTER TABLE ONLY sistema.s_tablas_campos_val ALTER COLUMN codigo_tav SET DEFAULT nextval('sistema.s_tablas_campos_val_codigo_tav_seq'::regclass);
 N   ALTER TABLE sistema.s_tablas_campos_val ALTER COLUMN codigo_tav DROP DEFAULT;
       sistema       postgres    false    205    204         }           2604    16816 
   codigo_tni    DEFAULT     �   ALTER TABLE ONLY sistema.s_tipo_nivel ALTER COLUMN codigo_tni SET DEFAULT nextval('sistema.s_tipo_nivel_codigo_tni_seq'::regclass);
 G   ALTER TABLE sistema.s_tipo_nivel ALTER COLUMN codigo_tni DROP DEFAULT;
       sistema       postgres    false    211    210    211         {           2604    16683 
   codigo_usu    DEFAULT     ~   ALTER TABLE ONLY sistema.s_usuario ALTER COLUMN codigo_usu SET DEFAULT nextval('sistema.s_usuario_codigo_usu_seq'::regclass);
 D   ALTER TABLE sistema.s_usuario ALTER COLUMN codigo_usu DROP DEFAULT;
       sistema       postgres    false    207    206         |           2604    16684 
   codigo_var    DEFAULT     �   ALTER TABLE ONLY sistema.s_variables ALTER COLUMN codigo_var SET DEFAULT nextval('sistema.s_variables_codigo_var_seq'::regclass);
 F   ALTER TABLE sistema.s_variables ALTER COLUMN codigo_var DROP DEFAULT;
       sistema       postgres    false    209    208         D	          0    16600 
   p_atributo 
   TABLE DATA                     sistema       postgres    false    182       2372.dat {	           0    0    p_atributo_codigo_atr_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('sistema.p_atributo_codigo_atr_seq', 41, true);
            sistema       postgres    false    183         F	          0    16605    p_atributo_detalle 
   TABLE DATA                     sistema       postgres    false    184       2374.dat |	           0    0 "   p_atributo_detalle_codigo_datr_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('sistema.p_atributo_detalle_codigo_datr_seq', 18, true);
            sistema       postgres    false    185         c	          0    16821    p_categoria 
   TABLE DATA                     sistema       postgres    false    213       2403.dat }	           0    0    p_categoria_codigo_cat_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('sistema.p_categoria_codigo_cat_seq', 24, true);
            sistema       postgres    false    212         H	          0    16610 
   p_producto 
   TABLE DATA                     sistema       postgres    false    186       2376.dat I	          0    16613    p_producto_atributos 
   TABLE DATA                     sistema       postgres    false    187       2377.dat ~	           0    0 $   p_producto_atributos_codigo_dpro_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('sistema.p_producto_atributos_codigo_dpro_seq', 14, true);
            sistema       postgres    false    188         	           0    0    p_producto_codigo_pro_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('sistema.p_producto_codigo_pro_seq', 3, true);
            sistema       postgres    false    189         L	          0    16620 
   s_compania 
   TABLE DATA                     sistema       postgres    false    190       2380.dat �	           0    0    s_compania_codigo_com_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('sistema.s_compania_codigo_com_seq', 1, true);
            sistema       postgres    false    191         N	          0    16625    s_estado_dato 
   TABLE DATA                     sistema       postgres    false    192       2382.dat �	           0    0    s_estado_dato_codigo_est_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('sistema.s_estado_dato_codigo_est_seq', 2, true);
            sistema       postgres    false    193         P	          0    16630 	   s_modulos 
   TABLE DATA                     sistema       postgres    false    194       2384.dat �	           0    0    s_modulos_codigo_mod_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('sistema.s_modulos_codigo_mod_seq', 7, true);
            sistema       postgres    false    195         R	          0    16635    s_perfil_usuario 
   TABLE DATA                     sistema       postgres    false    196       2386.dat �	           0    0    s_perfil_usuario_codigo_per_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('sistema.s_perfil_usuario_codigo_per_seq', 2, true);
            sistema       postgres    false    197         T	          0    16640 
   s_sucursal 
   TABLE DATA                     sistema       postgres    false    198       2388.dat �	           0    0    s_sucursal_codigo_suc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('sistema.s_sucursal_codigo_suc_seq', 1, true);
            sistema       postgres    false    199         V	          0    16645    s_tablas_bdd 
   TABLE DATA                     sistema       postgres    false    200       2390.dat �	           0    0    s_tablas_bdd_codigo_tab_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('sistema.s_tablas_bdd_codigo_tab_seq', 18, true);
            sistema       postgres    false    201         X	          0    16650    s_tablas_campos 
   TABLE DATA                     sistema       postgres    false    202       2392.dat �	           0    0    s_tablas_campos_codigo_tac_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('sistema.s_tablas_campos_codigo_tac_seq', 87, true);
            sistema       postgres    false    203         Z	          0    16656    s_tablas_campos_val 
   TABLE DATA                     sistema       postgres    false    204       2394.dat �	           0    0 "   s_tablas_campos_val_codigo_tav_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('sistema.s_tablas_campos_val_codigo_tav_seq', 15, true);
            sistema       postgres    false    205         a	          0    16813    s_tipo_nivel 
   TABLE DATA                     sistema       postgres    false    211       2401.dat �	           0    0    s_tipo_nivel_codigo_tni_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('sistema.s_tipo_nivel_codigo_tni_seq', 2, true);
            sistema       postgres    false    210         \	          0    16661 	   s_usuario 
   TABLE DATA                     sistema       postgres    false    206       2396.dat �	           0    0    s_usuario_codigo_usu_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('sistema.s_usuario_codigo_usu_seq', 1, true);
            sistema       postgres    false    207         ^	          0    16666    s_variables 
   TABLE DATA                     sistema       postgres    false    208       2398.dat �	           0    0    s_variables_codigo_var_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('sistema.s_variables_codigo_var_seq', 1, false);
            sistema       postgres    false    209         e	          0    16851    v_ciudad 
   TABLE DATA                     sistema       postgres    false    215       2405.dat d	          0    16845    v_pais 
   TABLE DATA                     sistema       postgres    false    214       2404.dat �           2606    16686    PK_codigo_atr 
   CONSTRAINT     a   ALTER TABLE ONLY sistema.p_atributo
    ADD CONSTRAINT "PK_codigo_atr" PRIMARY KEY (codigo_atr);
 E   ALTER TABLE ONLY sistema.p_atributo DROP CONSTRAINT "PK_codigo_atr";
       sistema         postgres    false    182    182         �           2606    16826    PK_codigo_cat 
   CONSTRAINT     b   ALTER TABLE ONLY sistema.p_categoria
    ADD CONSTRAINT "PK_codigo_cat" PRIMARY KEY (codigo_cat);
 F   ALTER TABLE ONLY sistema.p_categoria DROP CONSTRAINT "PK_codigo_cat";
       sistema         postgres    false    213    213         �           2606    16855    PK_codigo_ciu 
   CONSTRAINT     _   ALTER TABLE ONLY sistema.v_ciudad
    ADD CONSTRAINT "PK_codigo_ciu" PRIMARY KEY (codigo_ciu);
 C   ALTER TABLE ONLY sistema.v_ciudad DROP CONSTRAINT "PK_codigo_ciu";
       sistema         postgres    false    215    215         �           2606    16688    PK_codigo_com 
   CONSTRAINT     a   ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT "PK_codigo_com" PRIMARY KEY (codigo_com);
 E   ALTER TABLE ONLY sistema.s_compania DROP CONSTRAINT "PK_codigo_com";
       sistema         postgres    false    190    190         �           2606    16690    PK_codigo_datr 
   CONSTRAINT     k   ALTER TABLE ONLY sistema.p_atributo_detalle
    ADD CONSTRAINT "PK_codigo_datr" PRIMARY KEY (codigo_datr);
 N   ALTER TABLE ONLY sistema.p_atributo_detalle DROP CONSTRAINT "PK_codigo_datr";
       sistema         postgres    false    184    184         �           2606    16692    PK_codigo_dpro 
   CONSTRAINT     m   ALTER TABLE ONLY sistema.p_producto_atributos
    ADD CONSTRAINT "PK_codigo_dpro" PRIMARY KEY (codigo_dpro);
 P   ALTER TABLE ONLY sistema.p_producto_atributos DROP CONSTRAINT "PK_codigo_dpro";
       sistema         postgres    false    187    187         �           2606    16694    PK_codigo_est 
   CONSTRAINT     d   ALTER TABLE ONLY sistema.s_estado_dato
    ADD CONSTRAINT "PK_codigo_est" PRIMARY KEY (codigo_est);
 H   ALTER TABLE ONLY sistema.s_estado_dato DROP CONSTRAINT "PK_codigo_est";
       sistema         postgres    false    192    192         �           2606    16696    PK_codigo_mod 
   CONSTRAINT     `   ALTER TABLE ONLY sistema.s_modulos
    ADD CONSTRAINT "PK_codigo_mod" PRIMARY KEY (codigo_mod);
 D   ALTER TABLE ONLY sistema.s_modulos DROP CONSTRAINT "PK_codigo_mod";
       sistema         postgres    false    194    194         �           2606    16849    PK_codigo_pai 
   CONSTRAINT     ]   ALTER TABLE ONLY sistema.v_pais
    ADD CONSTRAINT "PK_codigo_pai" PRIMARY KEY (codigo_pai);
 A   ALTER TABLE ONLY sistema.v_pais DROP CONSTRAINT "PK_codigo_pai";
       sistema         postgres    false    214    214         �           2606    16698    PK_codigo_per 
   CONSTRAINT     g   ALTER TABLE ONLY sistema.s_perfil_usuario
    ADD CONSTRAINT "PK_codigo_per" PRIMARY KEY (codigo_per);
 K   ALTER TABLE ONLY sistema.s_perfil_usuario DROP CONSTRAINT "PK_codigo_per";
       sistema         postgres    false    196    196         �           2606    16700    PK_codigo_pro 
   CONSTRAINT     a   ALTER TABLE ONLY sistema.p_producto
    ADD CONSTRAINT "PK_codigo_pro" PRIMARY KEY (codigo_pro);
 E   ALTER TABLE ONLY sistema.p_producto DROP CONSTRAINT "PK_codigo_pro";
       sistema         postgres    false    186    186         �           2606    16702    PK_codigo_suc 
   CONSTRAINT     a   ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT "PK_codigo_suc" PRIMARY KEY (codigo_suc);
 E   ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT "PK_codigo_suc";
       sistema         postgres    false    198    198         �           2606    16704    PK_codigo_tab 
   CONSTRAINT     c   ALTER TABLE ONLY sistema.s_tablas_bdd
    ADD CONSTRAINT "PK_codigo_tab" PRIMARY KEY (codigo_tab);
 G   ALTER TABLE ONLY sistema.s_tablas_bdd DROP CONSTRAINT "PK_codigo_tab";
       sistema         postgres    false    200    200         �           2606    16706    PK_codigo_tac 
   CONSTRAINT     f   ALTER TABLE ONLY sistema.s_tablas_campos
    ADD CONSTRAINT "PK_codigo_tac" PRIMARY KEY (codigo_tac);
 J   ALTER TABLE ONLY sistema.s_tablas_campos DROP CONSTRAINT "PK_codigo_tac";
       sistema         postgres    false    202    202         �           2606    16708    PK_codigo_tav 
   CONSTRAINT     j   ALTER TABLE ONLY sistema.s_tablas_campos_val
    ADD CONSTRAINT "PK_codigo_tav" PRIMARY KEY (codigo_tav);
 N   ALTER TABLE ONLY sistema.s_tablas_campos_val DROP CONSTRAINT "PK_codigo_tav";
       sistema         postgres    false    204    204         �           2606    16818    PK_codigo_tni 
   CONSTRAINT     c   ALTER TABLE ONLY sistema.s_tipo_nivel
    ADD CONSTRAINT "PK_codigo_tni" PRIMARY KEY (codigo_tni);
 G   ALTER TABLE ONLY sistema.s_tipo_nivel DROP CONSTRAINT "PK_codigo_tni";
       sistema         postgres    false    211    211         �           2606    16710    PK_codigo_usu 
   CONSTRAINT     `   ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT "PK_codigo_usu" PRIMARY KEY (codigo_usu);
 D   ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT "PK_codigo_usu";
       sistema         postgres    false    206    206         �           2606    16712    PK_codigo_var 
   CONSTRAINT     b   ALTER TABLE ONLY sistema.s_variables
    ADD CONSTRAINT "PK_codigo_var" PRIMARY KEY (codigo_var);
 F   ALTER TABLE ONLY sistema.s_variables DROP CONSTRAINT "PK_codigo_var";
       sistema         postgres    false    208    208         �           2606    16714    s_compania_nombre_com_key 
   CONSTRAINT     f   ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT s_compania_nombre_com_key UNIQUE (nombre_com);
 O   ALTER TABLE ONLY sistema.s_compania DROP CONSTRAINT s_compania_nombre_com_key;
       sistema         postgres    false    190    190         �           2606    16716    s_compania_ruc_com_key 
   CONSTRAINT     `   ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT s_compania_ruc_com_key UNIQUE (ruc_com);
 L   ALTER TABLE ONLY sistema.s_compania DROP CONSTRAINT s_compania_ruc_com_key;
       sistema         postgres    false    190    190         �           2606    16718    s_sucursal_nombre_suc_key 
   CONSTRAINT     f   ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT s_sucursal_nombre_suc_key UNIQUE (nombre_suc);
 O   ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT s_sucursal_nombre_suc_key;
       sistema         postgres    false    198    198         �           2606    16720    s_sucursal_ruc_suc_key 
   CONSTRAINT     `   ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT s_sucursal_ruc_suc_key UNIQUE (ruc_suc);
 L   ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT s_sucursal_ruc_suc_key;
       sistema         postgres    false    198    198         �           2606    16722    s_usuario_usuario_usu_key 
   CONSTRAINT     f   ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT s_usuario_usuario_usu_key UNIQUE (usuario_usu);
 N   ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT s_usuario_usuario_usu_key;
       sistema         postgres    false    206    206         �           1259    16723    Index_s_compania_codigo_com    INDEX     [   CREATE INDEX "Index_s_compania_codigo_com" ON sistema.s_compania USING btree (codigo_com);
 2   DROP INDEX sistema."Index_s_compania_codigo_com";
       sistema         postgres    false    190         �           1259    16724    Index_s_modulos_codigo_mod    INDEX     Y   CREATE INDEX "Index_s_modulos_codigo_mod" ON sistema.s_modulos USING btree (codigo_mod);
 1   DROP INDEX sistema."Index_s_modulos_codigo_mod";
       sistema         postgres    false    194         �           1259    16725 !   Index_s_perfil_usuario_codigo_est    INDEX     g   CREATE INDEX "Index_s_perfil_usuario_codigo_est" ON sistema.s_perfil_usuario USING btree (codigo_est);
 8   DROP INDEX sistema."Index_s_perfil_usuario_codigo_est";
       sistema         postgres    false    196         �           1259    16726 !   Index_s_perfil_usuario_codigo_per    INDEX     g   CREATE INDEX "Index_s_perfil_usuario_codigo_per" ON sistema.s_perfil_usuario USING btree (codigo_per);
 8   DROP INDEX sistema."Index_s_perfil_usuario_codigo_per";
       sistema         postgres    false    196         �           1259    16727    Index_s_sucursal_codigo_com    INDEX     [   CREATE INDEX "Index_s_sucursal_codigo_com" ON sistema.s_sucursal USING btree (codigo_com);
 2   DROP INDEX sistema."Index_s_sucursal_codigo_com";
       sistema         postgres    false    198         �           1259    16728    Index_s_sucursal_codigo_suc    INDEX     [   CREATE INDEX "Index_s_sucursal_codigo_suc" ON sistema.s_sucursal USING btree (codigo_suc);
 2   DROP INDEX sistema."Index_s_sucursal_codigo_suc";
       sistema         postgres    false    198         �           1259    16729    Index_s_tablas_bdd_codigo_mod    INDEX     _   CREATE INDEX "Index_s_tablas_bdd_codigo_mod" ON sistema.s_tablas_bdd USING btree (codigo_mod);
 4   DROP INDEX sistema."Index_s_tablas_bdd_codigo_mod";
       sistema         postgres    false    200         �           1259    16730    Index_s_tablas_bdd_codigo_tab    INDEX     _   CREATE INDEX "Index_s_tablas_bdd_codigo_tab" ON sistema.s_tablas_bdd USING btree (codigo_tab);
 4   DROP INDEX sistema."Index_s_tablas_bdd_codigo_tab";
       sistema         postgres    false    200         �           1259    16731     Index_s_tablas_campos_codigo_tab    INDEX     e   CREATE INDEX "Index_s_tablas_campos_codigo_tab" ON sistema.s_tablas_campos USING btree (codigo_tab);
 7   DROP INDEX sistema."Index_s_tablas_campos_codigo_tab";
       sistema         postgres    false    202         �           1259    16732     Index_s_tablas_campos_codigo_tac    INDEX     e   CREATE INDEX "Index_s_tablas_campos_codigo_tac" ON sistema.s_tablas_campos USING btree (codigo_tac);
 7   DROP INDEX sistema."Index_s_tablas_campos_codigo_tac";
       sistema         postgres    false    202         �           1259    16733     Index_s_tablas_campos_codigo_tav    INDEX     e   CREATE INDEX "Index_s_tablas_campos_codigo_tav" ON sistema.s_tablas_campos USING btree (codigo_tav);
 7   DROP INDEX sistema."Index_s_tablas_campos_codigo_tav";
       sistema         postgres    false    202         �           1259    16734 $   Index_s_tablas_campos_val_codigo_tav    INDEX     m   CREATE INDEX "Index_s_tablas_campos_val_codigo_tav" ON sistema.s_tablas_campos_val USING btree (codigo_tav);
 ;   DROP INDEX sistema."Index_s_tablas_campos_val_codigo_tav";
       sistema         postgres    false    204         �           1259    16735    Index_s_usuario_codigo_est    INDEX     Y   CREATE INDEX "Index_s_usuario_codigo_est" ON sistema.s_usuario USING btree (codigo_est);
 1   DROP INDEX sistema."Index_s_usuario_codigo_est";
       sistema         postgres    false    206         �           1259    16736    Index_s_usuario_codigo_per    INDEX     Y   CREATE INDEX "Index_s_usuario_codigo_per" ON sistema.s_usuario USING btree (codigo_per);
 1   DROP INDEX sistema."Index_s_usuario_codigo_per";
       sistema         postgres    false    206         �           1259    16737    Index_s_usuario_codigo_usu    INDEX     Y   CREATE INDEX "Index_s_usuario_codigo_usu" ON sistema.s_usuario USING btree (codigo_usu);
 1   DROP INDEX sistema."Index_s_usuario_codigo_usu";
       sistema         postgres    false    206         �           1259    16738    Index_s_variables_codigo_var    INDEX     ]   CREATE INDEX "Index_s_variables_codigo_var" ON sistema.s_variables USING btree (codigo_var);
 3   DROP INDEX sistema."Index_s_variables_codigo_var";
       sistema         postgres    false    208         �           1259    16862    Index_v_ciudad_codigo_ciu    INDEX     W   CREATE INDEX "Index_v_ciudad_codigo_ciu" ON sistema.v_ciudad USING btree (codigo_ciu);
 0   DROP INDEX sistema."Index_v_ciudad_codigo_ciu";
       sistema         postgres    false    215         �           1259    16861    Index_v_ciudad_codigo_pai    INDEX     W   CREATE INDEX "Index_v_ciudad_codigo_pai" ON sistema.v_ciudad USING btree (codigo_pai);
 0   DROP INDEX sistema."Index_v_ciudad_codigo_pai";
       sistema         postgres    false    215         �           1259    16850    Index_v_pais_codigo_pai    INDEX     S   CREATE INDEX "Index_v_pais_codigo_pai" ON sistema.v_pais USING btree (codigo_pai);
 .   DROP INDEX sistema."Index_v_pais_codigo_pai";
       sistema         postgres    false    214         �           1259    16739    index_s_estado_dato_codigo_est    INDEX     _   CREATE INDEX index_s_estado_dato_codigo_est ON sistema.s_estado_dato USING btree (codigo_est);
 3   DROP INDEX sistema.index_s_estado_dato_codigo_est;
       sistema         postgres    false    192         �           2606    16740    FK_p_atributo_codigo_est    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.p_atributo
    ADD CONSTRAINT "FK_p_atributo_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);
 P   ALTER TABLE ONLY sistema.p_atributo DROP CONSTRAINT "FK_p_atributo_codigo_est";
       sistema       postgres    false    182    192    2191         �           2606    16745     FK_p_atributo_detalle_codigo_atr    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.p_atributo_detalle
    ADD CONSTRAINT "FK_p_atributo_detalle_codigo_atr" FOREIGN KEY (codigo_atr) REFERENCES sistema.p_atributo(codigo_atr);
 `   ALTER TABLE ONLY sistema.p_atributo_detalle DROP CONSTRAINT "FK_p_atributo_detalle_codigo_atr";
       sistema       postgres    false    182    184    2176         �           2606    16750     FK_p_atributo_detalle_codigo_est    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.p_atributo_detalle
    ADD CONSTRAINT "FK_p_atributo_detalle_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);
 `   ALTER TABLE ONLY sistema.p_atributo_detalle DROP CONSTRAINT "FK_p_atributo_detalle_codigo_est";
       sistema       postgres    false    192    2191    184         �           2606    16827    FK_p_categoria_codigo_tni    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.p_categoria
    ADD CONSTRAINT "FK_p_categoria_codigo_tni" FOREIGN KEY (codigo_tni) REFERENCES sistema.s_tipo_nivel(codigo_tni);
 R   ALTER TABLE ONLY sistema.p_categoria DROP CONSTRAINT "FK_p_categoria_codigo_tni";
       sistema       postgres    false    211    2231    213         �           2606    16832    FK_p_categoria_padre_cat    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.p_categoria
    ADD CONSTRAINT "FK_p_categoria_padre_cat" FOREIGN KEY (padre_cat) REFERENCES sistema.p_categoria(codigo_cat);
 Q   ALTER TABLE ONLY sistema.p_categoria DROP CONSTRAINT "FK_p_categoria_padre_cat";
       sistema       postgres    false    213    2233    213         �           2606    16755    FK_p_producto_codigo_est    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.p_producto
    ADD CONSTRAINT "FK_p_producto_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);
 P   ALTER TABLE ONLY sistema.p_producto DROP CONSTRAINT "FK_p_producto_codigo_est";
       sistema       postgres    false    2191    186    192         �           2606    16760 !   FK_p_producto_detalle_codigo_datr    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.p_producto_atributos
    ADD CONSTRAINT "FK_p_producto_detalle_codigo_datr" FOREIGN KEY (codigo_datr) REFERENCES sistema.p_atributo_detalle(codigo_datr);
 c   ALTER TABLE ONLY sistema.p_producto_atributos DROP CONSTRAINT "FK_p_producto_detalle_codigo_datr";
       sistema       postgres    false    2178    184    187         �           2606    16765     FK_p_producto_detalle_codigo_est    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.p_producto_atributos
    ADD CONSTRAINT "FK_p_producto_detalle_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);
 b   ALTER TABLE ONLY sistema.p_producto_atributos DROP CONSTRAINT "FK_p_producto_detalle_codigo_est";
       sistema       postgres    false    187    192    2191         �           2606    16770     FK_p_producto_detalle_codigo_pro    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.p_producto_atributos
    ADD CONSTRAINT "FK_p_producto_detalle_codigo_pro" FOREIGN KEY (codigo_pro) REFERENCES sistema.p_producto(codigo_pro);
 b   ALTER TABLE ONLY sistema.p_producto_atributos DROP CONSTRAINT "FK_p_producto_detalle_codigo_pro";
       sistema       postgres    false    186    187    2180         �           2606    16775    FK_s_perfil_usuarios_codigo_est    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_perfil_usuario
    ADD CONSTRAINT "FK_s_perfil_usuarios_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);
 ]   ALTER TABLE ONLY sistema.s_perfil_usuario DROP CONSTRAINT "FK_s_perfil_usuarios_codigo_est";
       sistema       postgres    false    2191    192    196         �           2606    16780    FK_s_sucursal_codigo_com    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT "FK_s_sucursal_codigo_com" FOREIGN KEY (codigo_com) REFERENCES sistema.s_compania(codigo_com);
 P   ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT "FK_s_sucursal_codigo_com";
       sistema       postgres    false    190    2185    198         �           2606    16785    FK_s_tablas_bdd_codigo_mod    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_tablas_bdd
    ADD CONSTRAINT "FK_s_tablas_bdd_codigo_mod" FOREIGN KEY (codigo_mod) REFERENCES sistema.s_modulos(codigo_mod);
 T   ALTER TABLE ONLY sistema.s_tablas_bdd DROP CONSTRAINT "FK_s_tablas_bdd_codigo_mod";
       sistema       postgres    false    200    194    2195         �           2606    16790    FK_s_tablas_campos_codigo_tab    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_tablas_campos
    ADD CONSTRAINT "FK_s_tablas_campos_codigo_tab" FOREIGN KEY (codigo_tab) REFERENCES sistema.s_tablas_bdd(codigo_tab);
 Z   ALTER TABLE ONLY sistema.s_tablas_campos DROP CONSTRAINT "FK_s_tablas_campos_codigo_tab";
       sistema       postgres    false    202    200    2211         �           2606    16795    FK_s_tablas_campos_codigo_tav    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_tablas_campos
    ADD CONSTRAINT "FK_s_tablas_campos_codigo_tav" FOREIGN KEY (codigo_tav) REFERENCES sistema.s_tablas_campos_val(codigo_tav);
 Z   ALTER TABLE ONLY sistema.s_tablas_campos DROP CONSTRAINT "FK_s_tablas_campos_codigo_tav";
       sistema       postgres    false    202    2219    204         �           2606    16800    FK_s_usuario_codigo_est    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT "FK_s_usuario_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);
 N   ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT "FK_s_usuario_codigo_est";
       sistema       postgres    false    2191    206    192         �           2606    16805    FK_s_usuario_codigo_per    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT "FK_s_usuario_codigo_per" FOREIGN KEY (codigo_per) REFERENCES sistema.s_perfil_usuario(codigo_per);
 N   ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT "FK_s_usuario_codigo_per";
       sistema       postgres    false    206    196    2199         �           2606    16856    FK_v_ciudad_codigo_pai    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.v_ciudad
    ADD CONSTRAINT "FK_v_ciudad_codigo_pai" FOREIGN KEY (codigo_pai) REFERENCES sistema.v_pais(codigo_pai);
 L   ALTER TABLE ONLY sistema.v_ciudad DROP CONSTRAINT "FK_v_ciudad_codigo_pai";
       sistema       postgres    false    215    2236    214                                                                                                  2372.dat                                                                                            0000600 0004000 0002000 00000000552 13415216543 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.p_atributo (codigo_atr, nombre_atr, codigo_est) VALUES (39, 'Color                         ', 1);
INSERT INTO sistema.p_atributo (codigo_atr, nombre_atr, codigo_est) VALUES (40, 'Talla                         ', NULL);
INSERT INTO sistema.p_atributo (codigo_atr, nombre_atr, codigo_est) VALUES (41, 'Tallos                        ', NULL);


                                                                                                                                                      2374.dat                                                                                            0000600 0004000 0002000 00000002224 13415216543 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (11, 'Rojo                          ', 1, 39);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (12, 'Verde                         ', 1, 39);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (13, '35                            ', NULL, 40);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (14, '36                            ', NULL, 40);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (15, '12                            ', NULL, 41);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (16, '15                            ', NULL, 41);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (17, '20                            ', NULL, 41);
INSERT INTO sistema.p_atributo_detalle (codigo_datr, nombre_datr, codigo_est, codigo_atr) VALUES (18, '25                            ', NULL, 41);


                                                                                                                                                                                                                                                                                                                                                                            2403.dat                                                                                            0000600 0004000 0002000 00000001013 13415216543 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.p_categoria (codigo_cat, nombre_cat, padre_cat, codigo_tni, classicon_cat) VALUES (6, 'Celulares                     ', NULL, 1, '                    ');
INSERT INTO sistema.p_categoria (codigo_cat, nombre_cat, padre_cat, codigo_tni, classicon_cat) VALUES (3, 'Zapatos                       ', NULL, 1, '                    ');
INSERT INTO sistema.p_categoria (codigo_cat, nombre_cat, padre_cat, codigo_tni, classicon_cat) VALUES (24, 'Muñeca                        ', 3, 2, '                    ');


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     2376.dat                                                                                            0000600 0004000 0002000 00000000170 13415216543 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.p_producto (codigo_pro, nombre_pro, codigo_est) VALUES (3, 'Zapatos Muñeca                ', 1);


                                                                                                                                                                                                                                                                                                                                                                                                        2377.dat                                                                                            0000600 0004000 0002000 00000000506 13415216543 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.p_producto_atributos (codigo_dpro, nombre_dpro, codigo_datr, codigo_est, codigo_pro) VALUES (13, '                              ', 13, 1, 3);
INSERT INTO sistema.p_producto_atributos (codigo_dpro, nombre_dpro, codigo_datr, codigo_est, codigo_pro) VALUES (12, '                              ', 11, 1, 3);


                                                                                                                                                                                          2380.dat                                                                                            0000600 0004000 0002000 00000001112 13415216543 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_compania (codigo_com, nombre_com, ruc_com, direccion_com, telefono1_com, telefono2_com, paginaweb_com, fax_com, representante_com, email1_com, email2_com) VALUES (1, 'Adecor                                  ', '1003677422     ', 'cayambe                                                                                                                                               ', '0628956        ', '               ', '                         ', '               ', '                              ', 'adecorr@hotmail.es       ', '                         ');


                                                                                                                                                                                                                                                                                                                                                                                                                                                      2382.dat                                                                                            0000600 0004000 0002000 00000000254 13415216543 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_estado_dato (codigo_est, nombre_est) VALUES (1, 'Activo    ');
INSERT INTO sistema.s_estado_dato (codigo_est, nombre_est) VALUES (2, 'Inactivo  ');


                                                                                                                                                                                                                                                                                                                                                    2384.dat                                                                                            0000600 0004000 0002000 00000001305 13415216543 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (1, 'Sistema                       ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (2, 'Postcosecha                   ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (3, 'General                       ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (4, 'Cultivo                       ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (5, 'Portcosecha                   ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (6, 'Ventas                        ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (7, 'Cuentas por cobrar            ');


                                                                                                                                                                                                                                                                                                                           2386.dat                                                                                            0000600 0004000 0002000 00000000370 13415216543 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_perfil_usuario (codigo_per, nombre_per, codigo_est) VALUES (1, 'Administrador                 ', 1);
INSERT INTO sistema.s_perfil_usuario (codigo_per, nombre_per, codigo_est) VALUES (2, 'Ecargado                      ', 1);


                                                                                                                                                                                                                                                                        2388.dat                                                                                            0000600 0004000 0002000 00000000667 13415216543 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_sucursal (codigo_suc, nombre_suc, ruc_suc, direccion_suc, telefono1_suc, telefono2_suc, email1_suc, email2_suc, fax_suc, codigo_com) VALUES (1, 'Ibarra                   ', '               ', '                                                  ', '06289562       ', '               ', 'eadecoibarra@gmail.com                            ', '                                                  ', '               ', 1);


                                                                         2390.dat                                                                                            0000600 0004000 0002000 00000012674 13415216543 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (2, 's_estado_dato                           ', 's_estado_dato                 ', 'codigo_est                    ', 'nombre_est                    ', NULL, NULL, 1);
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


                                                                    2392.dat                                                                                            0000600 0004000 0002000 00000052245 13415216543 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (1, 1, NULL, 'codigo_com                    ', 'codigo_com                    ', NULL, NULL, 1);
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


                                                                                                                                                                                                                                                                                                                                                           2394.dat                                                                                            0000600 0004000 0002000 00000006611 13415216543 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_tablas_campos_val (codigo_tav, nombre_tav, expresion_tav) VALUES (1, 'Enteros                       ', 'numeros-enteros                                                                                     ');
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


                                                                                                                       2401.dat                                                                                            0000600 0004000 0002000 00000000276 13415216543 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_tipo_nivel (codigo_tni, nombre_tni) VALUES (1, 'folder              ');
INSERT INTO sistema.s_tipo_nivel (codigo_tni, nombre_tni) VALUES (2, 'item                ');


                                                                                                                                                                                                                                                                                                                                  2396.dat                                                                                            0000600 0004000 0002000 00000000363 13415216543 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_usuario (codigo_usu, nombre_usu, usuario_usu, clave_usu, codigo_per, fechacaducidad_usu, codigo_est) VALUES (1, 'Brian                                             ', 'BROCPO      ', '1234        ', 1, '2019-01-31', 1);


                                                                                                                                                                                                                                                                             2398.dat                                                                                            0000600 0004000 0002000 00000000002 13415216543 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              2405.dat                                                                                            0000600 0004000 0002000 00000000002 13415216543 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              2404.dat                                                                                            0000600 0004000 0002000 00000000002 13415216543 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000122405 13415216543 0015374 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.15
-- Dumped by pg_dump version 9.5.15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY sistema.v_ciudad DROP CONSTRAINT "FK_v_ciudad_codigo_pai";
ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT "FK_s_usuario_codigo_per";
ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT "FK_s_usuario_codigo_est";
ALTER TABLE ONLY sistema.s_tablas_campos DROP CONSTRAINT "FK_s_tablas_campos_codigo_tav";
ALTER TABLE ONLY sistema.s_tablas_campos DROP CONSTRAINT "FK_s_tablas_campos_codigo_tab";
ALTER TABLE ONLY sistema.s_tablas_bdd DROP CONSTRAINT "FK_s_tablas_bdd_codigo_mod";
ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT "FK_s_sucursal_codigo_com";
ALTER TABLE ONLY sistema.s_perfil_usuario DROP CONSTRAINT "FK_s_perfil_usuarios_codigo_est";
ALTER TABLE ONLY sistema.p_producto_atributos DROP CONSTRAINT "FK_p_producto_detalle_codigo_pro";
ALTER TABLE ONLY sistema.p_producto_atributos DROP CONSTRAINT "FK_p_producto_detalle_codigo_est";
ALTER TABLE ONLY sistema.p_producto_atributos DROP CONSTRAINT "FK_p_producto_detalle_codigo_datr";
ALTER TABLE ONLY sistema.p_producto DROP CONSTRAINT "FK_p_producto_codigo_est";
ALTER TABLE ONLY sistema.p_categoria DROP CONSTRAINT "FK_p_categoria_padre_cat";
ALTER TABLE ONLY sistema.p_categoria DROP CONSTRAINT "FK_p_categoria_codigo_tni";
ALTER TABLE ONLY sistema.p_atributo_detalle DROP CONSTRAINT "FK_p_atributo_detalle_codigo_est";
ALTER TABLE ONLY sistema.p_atributo_detalle DROP CONSTRAINT "FK_p_atributo_detalle_codigo_atr";
ALTER TABLE ONLY sistema.p_atributo DROP CONSTRAINT "FK_p_atributo_codigo_est";
DROP INDEX sistema.index_s_estado_dato_codigo_est;
DROP INDEX sistema."Index_v_pais_codigo_pai";
DROP INDEX sistema."Index_v_ciudad_codigo_pai";
DROP INDEX sistema."Index_v_ciudad_codigo_ciu";
DROP INDEX sistema."Index_s_variables_codigo_var";
DROP INDEX sistema."Index_s_usuario_codigo_usu";
DROP INDEX sistema."Index_s_usuario_codigo_per";
DROP INDEX sistema."Index_s_usuario_codigo_est";
DROP INDEX sistema."Index_s_tablas_campos_val_codigo_tav";
DROP INDEX sistema."Index_s_tablas_campos_codigo_tav";
DROP INDEX sistema."Index_s_tablas_campos_codigo_tac";
DROP INDEX sistema."Index_s_tablas_campos_codigo_tab";
DROP INDEX sistema."Index_s_tablas_bdd_codigo_tab";
DROP INDEX sistema."Index_s_tablas_bdd_codigo_mod";
DROP INDEX sistema."Index_s_sucursal_codigo_suc";
DROP INDEX sistema."Index_s_sucursal_codigo_com";
DROP INDEX sistema."Index_s_perfil_usuario_codigo_per";
DROP INDEX sistema."Index_s_perfil_usuario_codigo_est";
DROP INDEX sistema."Index_s_modulos_codigo_mod";
DROP INDEX sistema."Index_s_compania_codigo_com";
ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT s_usuario_usuario_usu_key;
ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT s_sucursal_ruc_suc_key;
ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT s_sucursal_nombre_suc_key;
ALTER TABLE ONLY sistema.s_compania DROP CONSTRAINT s_compania_ruc_com_key;
ALTER TABLE ONLY sistema.s_compania DROP CONSTRAINT s_compania_nombre_com_key;
ALTER TABLE ONLY sistema.s_variables DROP CONSTRAINT "PK_codigo_var";
ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT "PK_codigo_usu";
ALTER TABLE ONLY sistema.s_tipo_nivel DROP CONSTRAINT "PK_codigo_tni";
ALTER TABLE ONLY sistema.s_tablas_campos_val DROP CONSTRAINT "PK_codigo_tav";
ALTER TABLE ONLY sistema.s_tablas_campos DROP CONSTRAINT "PK_codigo_tac";
ALTER TABLE ONLY sistema.s_tablas_bdd DROP CONSTRAINT "PK_codigo_tab";
ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT "PK_codigo_suc";
ALTER TABLE ONLY sistema.p_producto DROP CONSTRAINT "PK_codigo_pro";
ALTER TABLE ONLY sistema.s_perfil_usuario DROP CONSTRAINT "PK_codigo_per";
ALTER TABLE ONLY sistema.v_pais DROP CONSTRAINT "PK_codigo_pai";
ALTER TABLE ONLY sistema.s_modulos DROP CONSTRAINT "PK_codigo_mod";
ALTER TABLE ONLY sistema.s_estado_dato DROP CONSTRAINT "PK_codigo_est";
ALTER TABLE ONLY sistema.p_producto_atributos DROP CONSTRAINT "PK_codigo_dpro";
ALTER TABLE ONLY sistema.p_atributo_detalle DROP CONSTRAINT "PK_codigo_datr";
ALTER TABLE ONLY sistema.s_compania DROP CONSTRAINT "PK_codigo_com";
ALTER TABLE ONLY sistema.v_ciudad DROP CONSTRAINT "PK_codigo_ciu";
ALTER TABLE ONLY sistema.p_categoria DROP CONSTRAINT "PK_codigo_cat";
ALTER TABLE ONLY sistema.p_atributo DROP CONSTRAINT "PK_codigo_atr";
ALTER TABLE sistema.s_variables ALTER COLUMN codigo_var DROP DEFAULT;
ALTER TABLE sistema.s_usuario ALTER COLUMN codigo_usu DROP DEFAULT;
ALTER TABLE sistema.s_tipo_nivel ALTER COLUMN codigo_tni DROP DEFAULT;
ALTER TABLE sistema.s_tablas_campos_val ALTER COLUMN codigo_tav DROP DEFAULT;
ALTER TABLE sistema.s_tablas_campos ALTER COLUMN codigo_tac DROP DEFAULT;
ALTER TABLE sistema.s_tablas_bdd ALTER COLUMN codigo_tab DROP DEFAULT;
ALTER TABLE sistema.s_sucursal ALTER COLUMN codigo_suc DROP DEFAULT;
ALTER TABLE sistema.s_perfil_usuario ALTER COLUMN codigo_per DROP DEFAULT;
ALTER TABLE sistema.s_modulos ALTER COLUMN codigo_mod DROP DEFAULT;
ALTER TABLE sistema.s_estado_dato ALTER COLUMN codigo_est DROP DEFAULT;
ALTER TABLE sistema.s_compania ALTER COLUMN codigo_com DROP DEFAULT;
ALTER TABLE sistema.p_producto_atributos ALTER COLUMN codigo_dpro DROP DEFAULT;
ALTER TABLE sistema.p_producto ALTER COLUMN codigo_pro DROP DEFAULT;
ALTER TABLE sistema.p_categoria ALTER COLUMN codigo_cat DROP DEFAULT;
ALTER TABLE sistema.p_atributo_detalle ALTER COLUMN codigo_datr DROP DEFAULT;
ALTER TABLE sistema.p_atributo ALTER COLUMN codigo_atr DROP DEFAULT;
DROP TABLE sistema.v_pais;
DROP TABLE sistema.v_ciudad;
DROP SEQUENCE sistema.s_variables_codigo_var_seq;
DROP TABLE sistema.s_variables;
DROP SEQUENCE sistema.s_usuario_codigo_usu_seq;
DROP TABLE sistema.s_usuario;
DROP SEQUENCE sistema.s_tipo_nivel_codigo_tni_seq;
DROP TABLE sistema.s_tipo_nivel;
DROP SEQUENCE sistema.s_tablas_campos_val_codigo_tav_seq;
DROP TABLE sistema.s_tablas_campos_val;
DROP SEQUENCE sistema.s_tablas_campos_codigo_tac_seq;
DROP TABLE sistema.s_tablas_campos;
DROP SEQUENCE sistema.s_tablas_bdd_codigo_tab_seq;
DROP TABLE sistema.s_tablas_bdd;
DROP SEQUENCE sistema.s_sucursal_codigo_suc_seq;
DROP TABLE sistema.s_sucursal;
DROP SEQUENCE sistema.s_perfil_usuario_codigo_per_seq;
DROP TABLE sistema.s_perfil_usuario;
DROP SEQUENCE sistema.s_modulos_codigo_mod_seq;
DROP TABLE sistema.s_modulos;
DROP SEQUENCE sistema.s_estado_dato_codigo_est_seq;
DROP TABLE sistema.s_estado_dato;
DROP SEQUENCE sistema.s_compania_codigo_com_seq;
DROP TABLE sistema.s_compania;
DROP SEQUENCE sistema.p_producto_codigo_pro_seq;
DROP SEQUENCE sistema.p_producto_atributos_codigo_dpro_seq;
DROP TABLE sistema.p_producto_atributos;
DROP TABLE sistema.p_producto;
DROP SEQUENCE sistema.p_categoria_codigo_cat_seq;
DROP TABLE sistema.p_categoria;
DROP SEQUENCE sistema.p_atributo_detalle_codigo_datr_seq;
DROP TABLE sistema.p_atributo_detalle;
DROP SEQUENCE sistema.p_atributo_codigo_atr_seq;
DROP TABLE sistema.p_atributo;
DROP SCHEMA sistema;
--
-- Name: sistema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA sistema;


ALTER SCHEMA sistema OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: p_atributo; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.p_atributo (
    codigo_atr integer NOT NULL,
    nombre_atr character(30),
    codigo_est integer
);


ALTER TABLE sistema.p_atributo OWNER TO postgres;

--
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
-- Name: p_atributo_codigo_atr_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.p_atributo_codigo_atr_seq OWNED BY sistema.p_atributo.codigo_atr;


--
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
-- Name: p_atributo_detalle_codigo_datr_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.p_atributo_detalle_codigo_datr_seq OWNED BY sistema.p_atributo_detalle.codigo_datr;


--
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
-- Name: p_categoria_codigo_cat_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.p_categoria_codigo_cat_seq OWNED BY sistema.p_categoria.codigo_cat;


--
-- Name: p_producto; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.p_producto (
    codigo_pro integer NOT NULL,
    nombre_pro character(30),
    codigo_est integer
);


ALTER TABLE sistema.p_producto OWNER TO postgres;

--
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
-- Name: p_producto_atributos_codigo_dpro_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.p_producto_atributos_codigo_dpro_seq OWNED BY sistema.p_producto_atributos.codigo_dpro;


--
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
-- Name: p_producto_codigo_pro_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.p_producto_codigo_pro_seq OWNED BY sistema.p_producto.codigo_pro;


--
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
-- Name: s_compania_codigo_com_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_compania_codigo_com_seq OWNED BY sistema.s_compania.codigo_com;


--
-- Name: s_estado_dato; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_estado_dato (
    codigo_est integer NOT NULL,
    nombre_est character(10) NOT NULL
);


ALTER TABLE sistema.s_estado_dato OWNER TO postgres;

--
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
-- Name: s_estado_dato_codigo_est_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_estado_dato_codigo_est_seq OWNED BY sistema.s_estado_dato.codigo_est;


--
-- Name: s_modulos; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_modulos (
    codigo_mod integer NOT NULL,
    nombre_mod character(30) NOT NULL
);


ALTER TABLE sistema.s_modulos OWNER TO postgres;

--
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
-- Name: s_modulos_codigo_mod_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_modulos_codigo_mod_seq OWNED BY sistema.s_modulos.codigo_mod;


--
-- Name: s_perfil_usuario; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_perfil_usuario (
    codigo_per integer NOT NULL,
    nombre_per character(30) NOT NULL,
    codigo_est integer
);


ALTER TABLE sistema.s_perfil_usuario OWNER TO postgres;

--
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
-- Name: s_perfil_usuario_codigo_per_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_perfil_usuario_codigo_per_seq OWNED BY sistema.s_perfil_usuario.codigo_per;


--
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
-- Name: s_sucursal_codigo_suc_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_sucursal_codigo_suc_seq OWNED BY sistema.s_sucursal.codigo_suc;


--
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
-- Name: s_tablas_bdd_codigo_tab_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_tablas_bdd_codigo_tab_seq OWNED BY sistema.s_tablas_bdd.codigo_tab;


--
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
-- Name: s_tablas_campos_codigo_tac_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_tablas_campos_codigo_tac_seq OWNED BY sistema.s_tablas_campos.codigo_tac;


--
-- Name: s_tablas_campos_val; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_tablas_campos_val (
    codigo_tav integer NOT NULL,
    nombre_tav character(30) NOT NULL,
    expresion_tav character(100) NOT NULL
);


ALTER TABLE sistema.s_tablas_campos_val OWNER TO postgres;

--
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
-- Name: s_tablas_campos_val_codigo_tav_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_tablas_campos_val_codigo_tav_seq OWNED BY sistema.s_tablas_campos_val.codigo_tav;


--
-- Name: s_tipo_nivel; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.s_tipo_nivel (
    codigo_tni integer NOT NULL,
    nombre_tni character(20)
);


ALTER TABLE sistema.s_tipo_nivel OWNER TO postgres;

--
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
-- Name: s_tipo_nivel_codigo_tni_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_tipo_nivel_codigo_tni_seq OWNED BY sistema.s_tipo_nivel.codigo_tni;


--
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
-- Name: s_usuario_codigo_usu_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_usuario_codigo_usu_seq OWNED BY sistema.s_usuario.codigo_usu;


--
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
-- Name: s_variables_codigo_var_seq; Type: SEQUENCE OWNED BY; Schema: sistema; Owner: postgres
--

ALTER SEQUENCE sistema.s_variables_codigo_var_seq OWNED BY sistema.s_variables.codigo_var;


--
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
-- Name: v_pais; Type: TABLE; Schema: sistema; Owner: postgres
--

CREATE TABLE sistema.v_pais (
    codigo_pai integer NOT NULL,
    nombre_pai character(20) NOT NULL,
    alterno_pai character(20)
);


ALTER TABLE sistema.v_pais OWNER TO postgres;

--
-- Name: codigo_atr; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo ALTER COLUMN codigo_atr SET DEFAULT nextval('sistema.p_atributo_codigo_atr_seq'::regclass);


--
-- Name: codigo_datr; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo_detalle ALTER COLUMN codigo_datr SET DEFAULT nextval('sistema.p_atributo_detalle_codigo_datr_seq'::regclass);


--
-- Name: codigo_cat; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_categoria ALTER COLUMN codigo_cat SET DEFAULT nextval('sistema.p_categoria_codigo_cat_seq'::regclass);


--
-- Name: codigo_pro; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto ALTER COLUMN codigo_pro SET DEFAULT nextval('sistema.p_producto_codigo_pro_seq'::regclass);


--
-- Name: codigo_dpro; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto_atributos ALTER COLUMN codigo_dpro SET DEFAULT nextval('sistema.p_producto_atributos_codigo_dpro_seq'::regclass);


--
-- Name: codigo_com; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_compania ALTER COLUMN codigo_com SET DEFAULT nextval('sistema.s_compania_codigo_com_seq'::regclass);


--
-- Name: codigo_est; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_estado_dato ALTER COLUMN codigo_est SET DEFAULT nextval('sistema.s_estado_dato_codigo_est_seq'::regclass);


--
-- Name: codigo_mod; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_modulos ALTER COLUMN codigo_mod SET DEFAULT nextval('sistema.s_modulos_codigo_mod_seq'::regclass);


--
-- Name: codigo_per; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_perfil_usuario ALTER COLUMN codigo_per SET DEFAULT nextval('sistema.s_perfil_usuario_codigo_per_seq'::regclass);


--
-- Name: codigo_suc; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_sucursal ALTER COLUMN codigo_suc SET DEFAULT nextval('sistema.s_sucursal_codigo_suc_seq'::regclass);


--
-- Name: codigo_tab; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_bdd ALTER COLUMN codigo_tab SET DEFAULT nextval('sistema.s_tablas_bdd_codigo_tab_seq'::regclass);


--
-- Name: codigo_tac; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_campos ALTER COLUMN codigo_tac SET DEFAULT nextval('sistema.s_tablas_campos_codigo_tac_seq'::regclass);


--
-- Name: codigo_tav; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_campos_val ALTER COLUMN codigo_tav SET DEFAULT nextval('sistema.s_tablas_campos_val_codigo_tav_seq'::regclass);


--
-- Name: codigo_tni; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tipo_nivel ALTER COLUMN codigo_tni SET DEFAULT nextval('sistema.s_tipo_nivel_codigo_tni_seq'::regclass);


--
-- Name: codigo_usu; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_usuario ALTER COLUMN codigo_usu SET DEFAULT nextval('sistema.s_usuario_codigo_usu_seq'::regclass);


--
-- Name: codigo_var; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_variables ALTER COLUMN codigo_var SET DEFAULT nextval('sistema.s_variables_codigo_var_seq'::regclass);


--
-- Data for Name: p_atributo; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2372.dat

--
-- Name: p_atributo_codigo_atr_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.p_atributo_codigo_atr_seq', 41, true);


--
-- Data for Name: p_atributo_detalle; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2374.dat

--
-- Name: p_atributo_detalle_codigo_datr_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.p_atributo_detalle_codigo_datr_seq', 18, true);


--
-- Data for Name: p_categoria; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2403.dat

--
-- Name: p_categoria_codigo_cat_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.p_categoria_codigo_cat_seq', 24, true);


--
-- Data for Name: p_producto; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2376.dat

--
-- Data for Name: p_producto_atributos; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2377.dat

--
-- Name: p_producto_atributos_codigo_dpro_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.p_producto_atributos_codigo_dpro_seq', 14, true);


--
-- Name: p_producto_codigo_pro_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.p_producto_codigo_pro_seq', 3, true);


--
-- Data for Name: s_compania; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2380.dat

--
-- Name: s_compania_codigo_com_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_compania_codigo_com_seq', 1, true);


--
-- Data for Name: s_estado_dato; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2382.dat

--
-- Name: s_estado_dato_codigo_est_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_estado_dato_codigo_est_seq', 2, true);


--
-- Data for Name: s_modulos; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2384.dat

--
-- Name: s_modulos_codigo_mod_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_modulos_codigo_mod_seq', 7, true);


--
-- Data for Name: s_perfil_usuario; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2386.dat

--
-- Name: s_perfil_usuario_codigo_per_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_perfil_usuario_codigo_per_seq', 2, true);


--
-- Data for Name: s_sucursal; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2388.dat

--
-- Name: s_sucursal_codigo_suc_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_sucursal_codigo_suc_seq', 1, true);


--
-- Data for Name: s_tablas_bdd; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2390.dat

--
-- Name: s_tablas_bdd_codigo_tab_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_tablas_bdd_codigo_tab_seq', 18, true);


--
-- Data for Name: s_tablas_campos; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2392.dat

--
-- Name: s_tablas_campos_codigo_tac_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_tablas_campos_codigo_tac_seq', 87, true);


--
-- Data for Name: s_tablas_campos_val; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2394.dat

--
-- Name: s_tablas_campos_val_codigo_tav_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_tablas_campos_val_codigo_tav_seq', 15, true);


--
-- Data for Name: s_tipo_nivel; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2401.dat

--
-- Name: s_tipo_nivel_codigo_tni_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_tipo_nivel_codigo_tni_seq', 2, true);


--
-- Data for Name: s_usuario; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2396.dat

--
-- Name: s_usuario_codigo_usu_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_usuario_codigo_usu_seq', 1, true);


--
-- Data for Name: s_variables; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2398.dat

--
-- Name: s_variables_codigo_var_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_variables_codigo_var_seq', 1, false);


--
-- Data for Name: v_ciudad; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2405.dat

--
-- Data for Name: v_pais; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2404.dat

--
-- Name: PK_codigo_atr; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo
    ADD CONSTRAINT "PK_codigo_atr" PRIMARY KEY (codigo_atr);


--
-- Name: PK_codigo_cat; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_categoria
    ADD CONSTRAINT "PK_codigo_cat" PRIMARY KEY (codigo_cat);


--
-- Name: PK_codigo_ciu; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.v_ciudad
    ADD CONSTRAINT "PK_codigo_ciu" PRIMARY KEY (codigo_ciu);


--
-- Name: PK_codigo_com; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT "PK_codigo_com" PRIMARY KEY (codigo_com);


--
-- Name: PK_codigo_datr; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo_detalle
    ADD CONSTRAINT "PK_codigo_datr" PRIMARY KEY (codigo_datr);


--
-- Name: PK_codigo_dpro; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto_atributos
    ADD CONSTRAINT "PK_codigo_dpro" PRIMARY KEY (codigo_dpro);


--
-- Name: PK_codigo_est; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_estado_dato
    ADD CONSTRAINT "PK_codigo_est" PRIMARY KEY (codigo_est);


--
-- Name: PK_codigo_mod; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_modulos
    ADD CONSTRAINT "PK_codigo_mod" PRIMARY KEY (codigo_mod);


--
-- Name: PK_codigo_pai; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.v_pais
    ADD CONSTRAINT "PK_codigo_pai" PRIMARY KEY (codigo_pai);


--
-- Name: PK_codigo_per; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_perfil_usuario
    ADD CONSTRAINT "PK_codigo_per" PRIMARY KEY (codigo_per);


--
-- Name: PK_codigo_pro; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto
    ADD CONSTRAINT "PK_codigo_pro" PRIMARY KEY (codigo_pro);


--
-- Name: PK_codigo_suc; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT "PK_codigo_suc" PRIMARY KEY (codigo_suc);


--
-- Name: PK_codigo_tab; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_bdd
    ADD CONSTRAINT "PK_codigo_tab" PRIMARY KEY (codigo_tab);


--
-- Name: PK_codigo_tac; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_campos
    ADD CONSTRAINT "PK_codigo_tac" PRIMARY KEY (codigo_tac);


--
-- Name: PK_codigo_tav; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_campos_val
    ADD CONSTRAINT "PK_codigo_tav" PRIMARY KEY (codigo_tav);


--
-- Name: PK_codigo_tni; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tipo_nivel
    ADD CONSTRAINT "PK_codigo_tni" PRIMARY KEY (codigo_tni);


--
-- Name: PK_codigo_usu; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT "PK_codigo_usu" PRIMARY KEY (codigo_usu);


--
-- Name: PK_codigo_var; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_variables
    ADD CONSTRAINT "PK_codigo_var" PRIMARY KEY (codigo_var);


--
-- Name: s_compania_nombre_com_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT s_compania_nombre_com_key UNIQUE (nombre_com);


--
-- Name: s_compania_ruc_com_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT s_compania_ruc_com_key UNIQUE (ruc_com);


--
-- Name: s_sucursal_nombre_suc_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT s_sucursal_nombre_suc_key UNIQUE (nombre_suc);


--
-- Name: s_sucursal_ruc_suc_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT s_sucursal_ruc_suc_key UNIQUE (ruc_suc);


--
-- Name: s_usuario_usuario_usu_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT s_usuario_usuario_usu_key UNIQUE (usuario_usu);


--
-- Name: Index_s_compania_codigo_com; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_compania_codigo_com" ON sistema.s_compania USING btree (codigo_com);


--
-- Name: Index_s_modulos_codigo_mod; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_modulos_codigo_mod" ON sistema.s_modulos USING btree (codigo_mod);


--
-- Name: Index_s_perfil_usuario_codigo_est; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_perfil_usuario_codigo_est" ON sistema.s_perfil_usuario USING btree (codigo_est);


--
-- Name: Index_s_perfil_usuario_codigo_per; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_perfil_usuario_codigo_per" ON sistema.s_perfil_usuario USING btree (codigo_per);


--
-- Name: Index_s_sucursal_codigo_com; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_sucursal_codigo_com" ON sistema.s_sucursal USING btree (codigo_com);


--
-- Name: Index_s_sucursal_codigo_suc; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_sucursal_codigo_suc" ON sistema.s_sucursal USING btree (codigo_suc);


--
-- Name: Index_s_tablas_bdd_codigo_mod; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_tablas_bdd_codigo_mod" ON sistema.s_tablas_bdd USING btree (codigo_mod);


--
-- Name: Index_s_tablas_bdd_codigo_tab; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_tablas_bdd_codigo_tab" ON sistema.s_tablas_bdd USING btree (codigo_tab);


--
-- Name: Index_s_tablas_campos_codigo_tab; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_tablas_campos_codigo_tab" ON sistema.s_tablas_campos USING btree (codigo_tab);


--
-- Name: Index_s_tablas_campos_codigo_tac; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_tablas_campos_codigo_tac" ON sistema.s_tablas_campos USING btree (codigo_tac);


--
-- Name: Index_s_tablas_campos_codigo_tav; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_tablas_campos_codigo_tav" ON sistema.s_tablas_campos USING btree (codigo_tav);


--
-- Name: Index_s_tablas_campos_val_codigo_tav; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_tablas_campos_val_codigo_tav" ON sistema.s_tablas_campos_val USING btree (codigo_tav);


--
-- Name: Index_s_usuario_codigo_est; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_usuario_codigo_est" ON sistema.s_usuario USING btree (codigo_est);


--
-- Name: Index_s_usuario_codigo_per; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_usuario_codigo_per" ON sistema.s_usuario USING btree (codigo_per);


--
-- Name: Index_s_usuario_codigo_usu; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_usuario_codigo_usu" ON sistema.s_usuario USING btree (codigo_usu);


--
-- Name: Index_s_variables_codigo_var; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_s_variables_codigo_var" ON sistema.s_variables USING btree (codigo_var);


--
-- Name: Index_v_ciudad_codigo_ciu; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_v_ciudad_codigo_ciu" ON sistema.v_ciudad USING btree (codigo_ciu);


--
-- Name: Index_v_ciudad_codigo_pai; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_v_ciudad_codigo_pai" ON sistema.v_ciudad USING btree (codigo_pai);


--
-- Name: Index_v_pais_codigo_pai; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX "Index_v_pais_codigo_pai" ON sistema.v_pais USING btree (codigo_pai);


--
-- Name: index_s_estado_dato_codigo_est; Type: INDEX; Schema: sistema; Owner: postgres
--

CREATE INDEX index_s_estado_dato_codigo_est ON sistema.s_estado_dato USING btree (codigo_est);


--
-- Name: FK_p_atributo_codigo_est; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo
    ADD CONSTRAINT "FK_p_atributo_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);


--
-- Name: FK_p_atributo_detalle_codigo_atr; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo_detalle
    ADD CONSTRAINT "FK_p_atributo_detalle_codigo_atr" FOREIGN KEY (codigo_atr) REFERENCES sistema.p_atributo(codigo_atr);


--
-- Name: FK_p_atributo_detalle_codigo_est; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_atributo_detalle
    ADD CONSTRAINT "FK_p_atributo_detalle_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);


--
-- Name: FK_p_categoria_codigo_tni; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_categoria
    ADD CONSTRAINT "FK_p_categoria_codigo_tni" FOREIGN KEY (codigo_tni) REFERENCES sistema.s_tipo_nivel(codigo_tni);


--
-- Name: FK_p_categoria_padre_cat; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_categoria
    ADD CONSTRAINT "FK_p_categoria_padre_cat" FOREIGN KEY (padre_cat) REFERENCES sistema.p_categoria(codigo_cat);


--
-- Name: FK_p_producto_codigo_est; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto
    ADD CONSTRAINT "FK_p_producto_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);


--
-- Name: FK_p_producto_detalle_codigo_datr; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto_atributos
    ADD CONSTRAINT "FK_p_producto_detalle_codigo_datr" FOREIGN KEY (codigo_datr) REFERENCES sistema.p_atributo_detalle(codigo_datr);


--
-- Name: FK_p_producto_detalle_codigo_est; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto_atributos
    ADD CONSTRAINT "FK_p_producto_detalle_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);


--
-- Name: FK_p_producto_detalle_codigo_pro; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.p_producto_atributos
    ADD CONSTRAINT "FK_p_producto_detalle_codigo_pro" FOREIGN KEY (codigo_pro) REFERENCES sistema.p_producto(codigo_pro);


--
-- Name: FK_s_perfil_usuarios_codigo_est; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_perfil_usuario
    ADD CONSTRAINT "FK_s_perfil_usuarios_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);


--
-- Name: FK_s_sucursal_codigo_com; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT "FK_s_sucursal_codigo_com" FOREIGN KEY (codigo_com) REFERENCES sistema.s_compania(codigo_com);


--
-- Name: FK_s_tablas_bdd_codigo_mod; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_bdd
    ADD CONSTRAINT "FK_s_tablas_bdd_codigo_mod" FOREIGN KEY (codigo_mod) REFERENCES sistema.s_modulos(codigo_mod);


--
-- Name: FK_s_tablas_campos_codigo_tab; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_campos
    ADD CONSTRAINT "FK_s_tablas_campos_codigo_tab" FOREIGN KEY (codigo_tab) REFERENCES sistema.s_tablas_bdd(codigo_tab);


--
-- Name: FK_s_tablas_campos_codigo_tav; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_tablas_campos
    ADD CONSTRAINT "FK_s_tablas_campos_codigo_tav" FOREIGN KEY (codigo_tav) REFERENCES sistema.s_tablas_campos_val(codigo_tav);


--
-- Name: FK_s_usuario_codigo_est; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT "FK_s_usuario_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);


--
-- Name: FK_s_usuario_codigo_per; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT "FK_s_usuario_codigo_per" FOREIGN KEY (codigo_per) REFERENCES sistema.s_perfil_usuario(codigo_per);


--
-- Name: FK_v_ciudad_codigo_pai; Type: FK CONSTRAINT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.v_ciudad
    ADD CONSTRAINT "FK_v_ciudad_codigo_pai" FOREIGN KEY (codigo_pai) REFERENCES sistema.v_pais(codigo_pai);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           