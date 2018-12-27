toc.dat                                                                                             0000600 0004000 0002000 00000074040 13411205312 0014434 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           v         	   Dannasoft    9.4.20    9.4.20 g    �           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                       false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                     2615    16386    sistema    SCHEMA        CREATE SCHEMA sistema;
    DROP SCHEMA sistema;
             postgres    false         �            1259    16389 
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
       sistema         postgres    false    8         �            1259    16387    s_compania_codigo_com_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_compania_codigo_com_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE sistema.s_compania_codigo_com_seq;
       sistema       postgres    false    175    8         �           0    0    s_compania_codigo_com_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE sistema.s_compania_codigo_com_seq OWNED BY sistema.s_compania.codigo_com;
            sistema       postgres    false    174         �            1259    16478    s_estado_dato    TABLE     o   CREATE TABLE sistema.s_estado_dato (
    codigo_est integer NOT NULL,
    nombre_est character(10) NOT NULL
);
 "   DROP TABLE sistema.s_estado_dato;
       sistema         postgres    false    8         �            1259    16476    s_estado_dato_codigo_est_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_estado_dato_codigo_est_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE sistema.s_estado_dato_codigo_est_seq;
       sistema       postgres    false    8    189         �           0    0    s_estado_dato_codigo_est_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE sistema.s_estado_dato_codigo_est_seq OWNED BY sistema.s_estado_dato.codigo_est;
            sistema       postgres    false    188         �            1259    16449 	   s_modulos    TABLE     k   CREATE TABLE sistema.s_modulos (
    codigo_mod integer NOT NULL,
    nombre_mod character(30) NOT NULL
);
    DROP TABLE sistema.s_modulos;
       sistema         postgres    false    8         �            1259    16447    s_modulos_codigo_mod_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_modulos_codigo_mod_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE sistema.s_modulos_codigo_mod_seq;
       sistema       postgres    false    8    185         �           0    0    s_modulos_codigo_mod_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE sistema.s_modulos_codigo_mod_seq OWNED BY sistema.s_modulos.codigo_mod;
            sistema       postgres    false    184         �            1259    16457    s_perfil_usuario    TABLE     �   CREATE TABLE sistema.s_perfil_usuario (
    codigo_per integer NOT NULL,
    nombre_per character(30) NOT NULL,
    codigo_est integer
);
 %   DROP TABLE sistema.s_perfil_usuario;
       sistema         postgres    false    8         �            1259    16455    s_perfil_usuario_codigo_per_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_perfil_usuario_codigo_per_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE sistema.s_perfil_usuario_codigo_per_seq;
       sistema       postgres    false    187    8         �           0    0    s_perfil_usuario_codigo_per_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE sistema.s_perfil_usuario_codigo_per_seq OWNED BY sistema.s_perfil_usuario.codigo_per;
            sistema       postgres    false    186         �            1259    16402 
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
       sistema         postgres    false    8         �            1259    16400    s_sucursal_codigo_suc_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_sucursal_codigo_suc_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE sistema.s_sucursal_codigo_suc_seq;
       sistema       postgres    false    177    8         �           0    0    s_sucursal_codigo_suc_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE sistema.s_sucursal_codigo_suc_seq OWNED BY sistema.s_sucursal.codigo_suc;
            sistema       postgres    false    176         �            1259    16430    s_tablas_bdd    TABLE     ;  CREATE TABLE sistema.s_tablas_bdd (
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
       sistema         postgres    false    8         �            1259    16428    s_tablas_bdd_codigo_tab_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_tablas_bdd_codigo_tab_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE sistema.s_tablas_bdd_codigo_tab_seq;
       sistema       postgres    false    181    8         �           0    0    s_tablas_bdd_codigo_tab_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE sistema.s_tablas_bdd_codigo_tab_seq OWNED BY sistema.s_tablas_bdd.codigo_tab;
            sistema       postgres    false    180         �            1259    16517    s_tablas_campos    TABLE     =  CREATE TABLE sistema.s_tablas_campos (
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
       sistema         postgres    false    8         �            1259    16515    s_tablas_campos_codigo_tac_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_tablas_campos_codigo_tac_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE sistema.s_tablas_campos_codigo_tac_seq;
       sistema       postgres    false    8    193         �           0    0    s_tablas_campos_codigo_tac_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE sistema.s_tablas_campos_codigo_tac_seq OWNED BY sistema.s_tablas_campos.codigo_tac;
            sistema       postgres    false    192         �            1259    16421    s_tablas_campos_val    TABLE     �   CREATE TABLE sistema.s_tablas_campos_val (
    codigo_tav integer NOT NULL,
    nombre_tav character(30) NOT NULL,
    expresion_tav character(100) NOT NULL
);
 (   DROP TABLE sistema.s_tablas_campos_val;
       sistema         postgres    false    8         �            1259    16419 "   s_tablas_campos_val_codigo_tav_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_tablas_campos_val_codigo_tav_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE sistema.s_tablas_campos_val_codigo_tav_seq;
       sistema       postgres    false    8    179         �           0    0 "   s_tablas_campos_val_codigo_tav_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE sistema.s_tablas_campos_val_codigo_tav_seq OWNED BY sistema.s_tablas_campos_val.codigo_tav;
            sistema       postgres    false    178         �            1259    16487 	   s_usuario    TABLE       CREATE TABLE sistema.s_usuario (
    codigo_usu integer NOT NULL,
    nombre_usu character(50) NOT NULL,
    usuario_usu character(12) NOT NULL,
    clave_usu character(12) NOT NULL,
    codigo_per integer,
    fechacaducidad_usu date,
    codigo_est integer
);
    DROP TABLE sistema.s_usuario;
       sistema         postgres    false    8         �            1259    16485    s_usuario_codigo_usu_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_usuario_codigo_usu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE sistema.s_usuario_codigo_usu_seq;
       sistema       postgres    false    8    191         �           0    0    s_usuario_codigo_usu_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE sistema.s_usuario_codigo_usu_seq OWNED BY sistema.s_usuario.codigo_usu;
            sistema       postgres    false    190         �            1259    16441    s_variables    TABLE     �   CREATE TABLE sistema.s_variables (
    codigo_var integer NOT NULL,
    nombre_var character(40) NOT NULL,
    descripcion_var character(100) NOT NULL,
    valor_var character(50) NOT NULL
);
     DROP TABLE sistema.s_variables;
       sistema         postgres    false    8         �            1259    16439    s_variables_codigo_var_seq    SEQUENCE     �   CREATE SEQUENCE sistema.s_variables_codigo_var_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE sistema.s_variables_codigo_var_seq;
       sistema       postgres    false    183    8         �           0    0    s_variables_codigo_var_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE sistema.s_variables_codigo_var_seq OWNED BY sistema.s_variables.codigo_var;
            sistema       postgres    false    182         �           2604    16392 
   codigo_com    DEFAULT     �   ALTER TABLE ONLY sistema.s_compania ALTER COLUMN codigo_com SET DEFAULT nextval('sistema.s_compania_codigo_com_seq'::regclass);
 E   ALTER TABLE sistema.s_compania ALTER COLUMN codigo_com DROP DEFAULT;
       sistema       postgres    false    175    174    175         �           2604    16481 
   codigo_est    DEFAULT     �   ALTER TABLE ONLY sistema.s_estado_dato ALTER COLUMN codigo_est SET DEFAULT nextval('sistema.s_estado_dato_codigo_est_seq'::regclass);
 H   ALTER TABLE sistema.s_estado_dato ALTER COLUMN codigo_est DROP DEFAULT;
       sistema       postgres    false    189    188    189         �           2604    16452 
   codigo_mod    DEFAULT     ~   ALTER TABLE ONLY sistema.s_modulos ALTER COLUMN codigo_mod SET DEFAULT nextval('sistema.s_modulos_codigo_mod_seq'::regclass);
 D   ALTER TABLE sistema.s_modulos ALTER COLUMN codigo_mod DROP DEFAULT;
       sistema       postgres    false    184    185    185         �           2604    16460 
   codigo_per    DEFAULT     �   ALTER TABLE ONLY sistema.s_perfil_usuario ALTER COLUMN codigo_per SET DEFAULT nextval('sistema.s_perfil_usuario_codigo_per_seq'::regclass);
 K   ALTER TABLE sistema.s_perfil_usuario ALTER COLUMN codigo_per DROP DEFAULT;
       sistema       postgres    false    187    186    187         �           2604    16405 
   codigo_suc    DEFAULT     �   ALTER TABLE ONLY sistema.s_sucursal ALTER COLUMN codigo_suc SET DEFAULT nextval('sistema.s_sucursal_codigo_suc_seq'::regclass);
 E   ALTER TABLE sistema.s_sucursal ALTER COLUMN codigo_suc DROP DEFAULT;
       sistema       postgres    false    176    177    177         �           2604    16433 
   codigo_tab    DEFAULT     �   ALTER TABLE ONLY sistema.s_tablas_bdd ALTER COLUMN codigo_tab SET DEFAULT nextval('sistema.s_tablas_bdd_codigo_tab_seq'::regclass);
 G   ALTER TABLE sistema.s_tablas_bdd ALTER COLUMN codigo_tab DROP DEFAULT;
       sistema       postgres    false    181    180    181         �           2604    16520 
   codigo_tac    DEFAULT     �   ALTER TABLE ONLY sistema.s_tablas_campos ALTER COLUMN codigo_tac SET DEFAULT nextval('sistema.s_tablas_campos_codigo_tac_seq'::regclass);
 J   ALTER TABLE sistema.s_tablas_campos ALTER COLUMN codigo_tac DROP DEFAULT;
       sistema       postgres    false    193    192    193         �           2604    16424 
   codigo_tav    DEFAULT     �   ALTER TABLE ONLY sistema.s_tablas_campos_val ALTER COLUMN codigo_tav SET DEFAULT nextval('sistema.s_tablas_campos_val_codigo_tav_seq'::regclass);
 N   ALTER TABLE sistema.s_tablas_campos_val ALTER COLUMN codigo_tav DROP DEFAULT;
       sistema       postgres    false    179    178    179         �           2604    16490 
   codigo_usu    DEFAULT     ~   ALTER TABLE ONLY sistema.s_usuario ALTER COLUMN codigo_usu SET DEFAULT nextval('sistema.s_usuario_codigo_usu_seq'::regclass);
 D   ALTER TABLE sistema.s_usuario ALTER COLUMN codigo_usu DROP DEFAULT;
       sistema       postgres    false    190    191    191         �           2604    16444 
   codigo_var    DEFAULT     �   ALTER TABLE ONLY sistema.s_variables ALTER COLUMN codigo_var SET DEFAULT nextval('sistema.s_variables_codigo_var_seq'::regclass);
 F   ALTER TABLE sistema.s_variables ALTER COLUMN codigo_var DROP DEFAULT;
       sistema       postgres    false    183    182    183         �          0    16389 
   s_compania 
   TABLE DATA                     sistema       postgres    false    175       2189.dat �           0    0    s_compania_codigo_com_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('sistema.s_compania_codigo_com_seq', 1, true);
            sistema       postgres    false    174         �          0    16478    s_estado_dato 
   TABLE DATA                     sistema       postgres    false    189       2203.dat �           0    0    s_estado_dato_codigo_est_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('sistema.s_estado_dato_codigo_est_seq', 1, false);
            sistema       postgres    false    188         �          0    16449 	   s_modulos 
   TABLE DATA                     sistema       postgres    false    185       2199.dat �           0    0    s_modulos_codigo_mod_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('sistema.s_modulos_codigo_mod_seq', 7, true);
            sistema       postgres    false    184         �          0    16457    s_perfil_usuario 
   TABLE DATA                     sistema       postgres    false    187       2201.dat �           0    0    s_perfil_usuario_codigo_per_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('sistema.s_perfil_usuario_codigo_per_seq', 1, false);
            sistema       postgres    false    186         �          0    16402 
   s_sucursal 
   TABLE DATA                     sistema       postgres    false    177       2191.dat �           0    0    s_sucursal_codigo_suc_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('sistema.s_sucursal_codigo_suc_seq', 1, true);
            sistema       postgres    false    176         �          0    16430    s_tablas_bdd 
   TABLE DATA                     sistema       postgres    false    181       2195.dat �           0    0    s_tablas_bdd_codigo_tab_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('sistema.s_tablas_bdd_codigo_tab_seq', 10, true);
            sistema       postgres    false    180         �          0    16517    s_tablas_campos 
   TABLE DATA                     sistema       postgres    false    193       2207.dat �           0    0    s_tablas_campos_codigo_tac_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('sistema.s_tablas_campos_codigo_tac_seq', 58, true);
            sistema       postgres    false    192         �          0    16421    s_tablas_campos_val 
   TABLE DATA                     sistema       postgres    false    179       2193.dat �           0    0 "   s_tablas_campos_val_codigo_tav_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('sistema.s_tablas_campos_val_codigo_tav_seq', 1, false);
            sistema       postgres    false    178         �          0    16487 	   s_usuario 
   TABLE DATA                     sistema       postgres    false    191       2205.dat �           0    0    s_usuario_codigo_usu_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('sistema.s_usuario_codigo_usu_seq', 1, false);
            sistema       postgres    false    190         �          0    16441    s_variables 
   TABLE DATA                     sistema       postgres    false    183       2197.dat �           0    0    s_variables_codigo_var_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('sistema.s_variables_codigo_var_seq', 1, false);
            sistema       postgres    false    182         �           2606    16394    PK_codigo_com 
   CONSTRAINT     a   ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT "PK_codigo_com" PRIMARY KEY (codigo_com);
 E   ALTER TABLE ONLY sistema.s_compania DROP CONSTRAINT "PK_codigo_com";
       sistema         postgres    false    175    175         
           2606    16483    PK_codigo_est 
   CONSTRAINT     d   ALTER TABLE ONLY sistema.s_estado_dato
    ADD CONSTRAINT "PK_codigo_est" PRIMARY KEY (codigo_est);
 H   ALTER TABLE ONLY sistema.s_estado_dato DROP CONSTRAINT "PK_codigo_est";
       sistema         postgres    false    189    189                    2606    16454    PK_codigo_mod 
   CONSTRAINT     `   ALTER TABLE ONLY sistema.s_modulos
    ADD CONSTRAINT "PK_codigo_mod" PRIMARY KEY (codigo_mod);
 D   ALTER TABLE ONLY sistema.s_modulos DROP CONSTRAINT "PK_codigo_mod";
       sistema         postgres    false    185    185                    2606    16462    PK_codigo_per 
   CONSTRAINT     g   ALTER TABLE ONLY sistema.s_perfil_usuario
    ADD CONSTRAINT "PK_codigo_per" PRIMARY KEY (codigo_per);
 K   ALTER TABLE ONLY sistema.s_perfil_usuario DROP CONSTRAINT "PK_codigo_per";
       sistema         postgres    false    187    187         �           2606    16407    PK_codigo_suc 
   CONSTRAINT     a   ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT "PK_codigo_suc" PRIMARY KEY (codigo_suc);
 E   ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT "PK_codigo_suc";
       sistema         postgres    false    177    177         �           2606    16435    PK_codigo_tab 
   CONSTRAINT     c   ALTER TABLE ONLY sistema.s_tablas_bdd
    ADD CONSTRAINT "PK_codigo_tab" PRIMARY KEY (codigo_tab);
 G   ALTER TABLE ONLY sistema.s_tablas_bdd DROP CONSTRAINT "PK_codigo_tab";
       sistema         postgres    false    181    181                    2606    16523    PK_codigo_tac 
   CONSTRAINT     f   ALTER TABLE ONLY sistema.s_tablas_campos
    ADD CONSTRAINT "PK_codigo_tac" PRIMARY KEY (codigo_tac);
 J   ALTER TABLE ONLY sistema.s_tablas_campos DROP CONSTRAINT "PK_codigo_tac";
       sistema         postgres    false    193    193         �           2606    16426    PK_codigo_tav 
   CONSTRAINT     j   ALTER TABLE ONLY sistema.s_tablas_campos_val
    ADD CONSTRAINT "PK_codigo_tav" PRIMARY KEY (codigo_tav);
 N   ALTER TABLE ONLY sistema.s_tablas_campos_val DROP CONSTRAINT "PK_codigo_tav";
       sistema         postgres    false    179    179                    2606    16492    PK_codigo_usu 
   CONSTRAINT     `   ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT "PK_codigo_usu" PRIMARY KEY (codigo_usu);
 D   ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT "PK_codigo_usu";
       sistema         postgres    false    191    191                    2606    16446    PK_codigo_var 
   CONSTRAINT     b   ALTER TABLE ONLY sistema.s_variables
    ADD CONSTRAINT "PK_codigo_var" PRIMARY KEY (codigo_var);
 F   ALTER TABLE ONLY sistema.s_variables DROP CONSTRAINT "PK_codigo_var";
       sistema         postgres    false    183    183         �           2606    16396    s_compania_nombre_com_key 
   CONSTRAINT     f   ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT s_compania_nombre_com_key UNIQUE (nombre_com);
 O   ALTER TABLE ONLY sistema.s_compania DROP CONSTRAINT s_compania_nombre_com_key;
       sistema         postgres    false    175    175         �           2606    16398    s_compania_ruc_com_key 
   CONSTRAINT     `   ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT s_compania_ruc_com_key UNIQUE (ruc_com);
 L   ALTER TABLE ONLY sistema.s_compania DROP CONSTRAINT s_compania_ruc_com_key;
       sistema         postgres    false    175    175         �           2606    16409    s_sucursal_nombre_suc_key 
   CONSTRAINT     f   ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT s_sucursal_nombre_suc_key UNIQUE (nombre_suc);
 O   ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT s_sucursal_nombre_suc_key;
       sistema         postgres    false    177    177         �           2606    16411    s_sucursal_ruc_suc_key 
   CONSTRAINT     `   ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT s_sucursal_ruc_suc_key UNIQUE (ruc_suc);
 L   ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT s_sucursal_ruc_suc_key;
       sistema         postgres    false    177    177                    2606    16494    s_usuario_usuario_usu_key 
   CONSTRAINT     f   ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT s_usuario_usuario_usu_key UNIQUE (usuario_usu);
 N   ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT s_usuario_usuario_usu_key;
       sistema         postgres    false    191    191         �           1259    16399    Index_s_compania_codigo_com    INDEX     [   CREATE INDEX "Index_s_compania_codigo_com" ON sistema.s_compania USING btree (codigo_com);
 2   DROP INDEX sistema."Index_s_compania_codigo_com";
       sistema         postgres    false    175                    1259    16464    Index_s_modulos_codigo_mod    INDEX     Y   CREATE INDEX "Index_s_modulos_codigo_mod" ON sistema.s_modulos USING btree (codigo_mod);
 1   DROP INDEX sistema."Index_s_modulos_codigo_mod";
       sistema         postgres    false    185                    1259    16514 !   Index_s_perfil_usuario_codigo_est    INDEX     g   CREATE INDEX "Index_s_perfil_usuario_codigo_est" ON sistema.s_perfil_usuario USING btree (codigo_est);
 8   DROP INDEX sistema."Index_s_perfil_usuario_codigo_est";
       sistema         postgres    false    187                    1259    16463 !   Index_s_perfil_usuario_codigo_per    INDEX     g   CREATE INDEX "Index_s_perfil_usuario_codigo_per" ON sistema.s_perfil_usuario USING btree (codigo_per);
 8   DROP INDEX sistema."Index_s_perfil_usuario_codigo_per";
       sistema         postgres    false    187         �           1259    16417    Index_s_sucursal_codigo_com    INDEX     [   CREATE INDEX "Index_s_sucursal_codigo_com" ON sistema.s_sucursal USING btree (codigo_com);
 2   DROP INDEX sistema."Index_s_sucursal_codigo_com";
       sistema         postgres    false    177         �           1259    16418    Index_s_sucursal_codigo_suc    INDEX     [   CREATE INDEX "Index_s_sucursal_codigo_suc" ON sistema.s_sucursal USING btree (codigo_suc);
 2   DROP INDEX sistema."Index_s_sucursal_codigo_suc";
       sistema         postgres    false    177         �           1259    16542    Index_s_tablas_bdd_codigo_mod    INDEX     _   CREATE INDEX "Index_s_tablas_bdd_codigo_mod" ON sistema.s_tablas_bdd USING btree (codigo_mod);
 4   DROP INDEX sistema."Index_s_tablas_bdd_codigo_mod";
       sistema         postgres    false    181         �           1259    16436    Index_s_tablas_bdd_codigo_tab    INDEX     _   CREATE INDEX "Index_s_tablas_bdd_codigo_tab" ON sistema.s_tablas_bdd USING btree (codigo_tab);
 4   DROP INDEX sistema."Index_s_tablas_bdd_codigo_tab";
       sistema         postgres    false    181                    1259    16534     Index_s_tablas_campos_codigo_tab    INDEX     e   CREATE INDEX "Index_s_tablas_campos_codigo_tab" ON sistema.s_tablas_campos USING btree (codigo_tab);
 7   DROP INDEX sistema."Index_s_tablas_campos_codigo_tab";
       sistema         postgres    false    193                    1259    16535     Index_s_tablas_campos_codigo_tac    INDEX     e   CREATE INDEX "Index_s_tablas_campos_codigo_tac" ON sistema.s_tablas_campos USING btree (codigo_tac);
 7   DROP INDEX sistema."Index_s_tablas_campos_codigo_tac";
       sistema         postgres    false    193                    1259    16536     Index_s_tablas_campos_codigo_tav    INDEX     e   CREATE INDEX "Index_s_tablas_campos_codigo_tav" ON sistema.s_tablas_campos USING btree (codigo_tav);
 7   DROP INDEX sistema."Index_s_tablas_campos_codigo_tav";
       sistema         postgres    false    193         �           1259    16427 $   Index_s_tablas_campos_val_codigo_tav    INDEX     m   CREATE INDEX "Index_s_tablas_campos_val_codigo_tav" ON sistema.s_tablas_campos_val USING btree (codigo_tav);
 ;   DROP INDEX sistema."Index_s_tablas_campos_val_codigo_tav";
       sistema         postgres    false    179                    1259    16505    Index_s_usuario_codigo_est    INDEX     Y   CREATE INDEX "Index_s_usuario_codigo_est" ON sistema.s_usuario USING btree (codigo_est);
 1   DROP INDEX sistema."Index_s_usuario_codigo_est";
       sistema         postgres    false    191                    1259    16506    Index_s_usuario_codigo_per    INDEX     Y   CREATE INDEX "Index_s_usuario_codigo_per" ON sistema.s_usuario USING btree (codigo_per);
 1   DROP INDEX sistema."Index_s_usuario_codigo_per";
       sistema         postgres    false    191                    1259    16507    Index_s_usuario_codigo_usu    INDEX     Y   CREATE INDEX "Index_s_usuario_codigo_usu" ON sistema.s_usuario USING btree (codigo_usu);
 1   DROP INDEX sistema."Index_s_usuario_codigo_usu";
       sistema         postgres    false    191         �           1259    16465    Index_s_variables_codigo_var    INDEX     ]   CREATE INDEX "Index_s_variables_codigo_var" ON sistema.s_variables USING btree (codigo_var);
 3   DROP INDEX sistema."Index_s_variables_codigo_var";
       sistema         postgres    false    183                    1259    16484    index_s_estado_dato_codigo_est    INDEX     _   CREATE INDEX index_s_estado_dato_codigo_est ON sistema.s_estado_dato USING btree (codigo_est);
 3   DROP INDEX sistema.index_s_estado_dato_codigo_est;
       sistema         postgres    false    189                    2606    16509    FK_s_perfil_usuarios_codigo_est    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_perfil_usuario
    ADD CONSTRAINT "FK_s_perfil_usuarios_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);
 ]   ALTER TABLE ONLY sistema.s_perfil_usuario DROP CONSTRAINT "FK_s_perfil_usuarios_codigo_est";
       sistema       postgres    false    187    189    2058                    2606    16412    FK_s_sucursal_codigo_com    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT "FK_s_sucursal_codigo_com" FOREIGN KEY (codigo_com) REFERENCES sistema.s_compania(codigo_com);
 P   ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT "FK_s_sucursal_codigo_com";
       sistema       postgres    false    177    175    2027                    2606    16537    FK_s_tablas_bdd_codigo_mod    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_tablas_bdd
    ADD CONSTRAINT "FK_s_tablas_bdd_codigo_mod" FOREIGN KEY (codigo_mod) REFERENCES sistema.s_modulos(codigo_mod);
 T   ALTER TABLE ONLY sistema.s_tablas_bdd DROP CONSTRAINT "FK_s_tablas_bdd_codigo_mod";
       sistema       postgres    false    181    185    2052                    2606    16524    FK_s_tablas_campos_codigo_tab    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_tablas_campos
    ADD CONSTRAINT "FK_s_tablas_campos_codigo_tab" FOREIGN KEY (codigo_tab) REFERENCES sistema.s_tablas_bdd(codigo_tab);
 Z   ALTER TABLE ONLY sistema.s_tablas_campos DROP CONSTRAINT "FK_s_tablas_campos_codigo_tab";
       sistema       postgres    false    181    193    2046                    2606    16529    FK_s_tablas_campos_codigo_tav    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_tablas_campos
    ADD CONSTRAINT "FK_s_tablas_campos_codigo_tav" FOREIGN KEY (codigo_tav) REFERENCES sistema.s_tablas_campos_val(codigo_tav);
 Z   ALTER TABLE ONLY sistema.s_tablas_campos DROP CONSTRAINT "FK_s_tablas_campos_codigo_tav";
       sistema       postgres    false    2042    193    179                    2606    16495    FK_s_usuario_codigo_est    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT "FK_s_usuario_codigo_est" FOREIGN KEY (codigo_est) REFERENCES sistema.s_estado_dato(codigo_est);
 N   ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT "FK_s_usuario_codigo_est";
       sistema       postgres    false    2058    191    189                    2606    16500    FK_s_usuario_codigo_per    FK CONSTRAINT     �   ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT "FK_s_usuario_codigo_per" FOREIGN KEY (codigo_per) REFERENCES sistema.s_perfil_usuario(codigo_per);
 N   ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT "FK_s_usuario_codigo_per";
       sistema       postgres    false    187    2056    191                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        2189.dat                                                                                            0000600 0004000 0002000 00000001112 13411205312 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_compania (codigo_com, nombre_com, ruc_com, direccion_com, telefono1_com, telefono2_com, paginaweb_com, fax_com, representante_com, email1_com, email2_com) VALUES (1, 'Adecor                                  ', '1003677422     ', 'cayambe                                                                                                                                               ', '0628956        ', '               ', '                         ', '               ', '                              ', 'adecorr@hotmail.es       ', '                         ');


                                                                                                                                                                                                                                                                                                                                                                                                                                                      2203.dat                                                                                            0000600 0004000 0002000 00000000002 13411205312 0014220 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              2199.dat                                                                                            0000600 0004000 0002000 00000001305 13411205312 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (1, 'Sistema                       ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (2, 'Postcosecha                   ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (3, 'General                       ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (4, 'Cultivo                       ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (5, 'Portcosecha                   ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (6, 'Ventas                        ');
INSERT INTO sistema.s_modulos (codigo_mod, nombre_mod) VALUES (7, 'Cuentas por cobrar            ');


                                                                                                                                                                                                                                                                                                                           2201.dat                                                                                            0000600 0004000 0002000 00000000002 13411205312 0014216 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              2191.dat                                                                                            0000600 0004000 0002000 00000000667 13411205312 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_sucursal (codigo_suc, nombre_suc, ruc_suc, direccion_suc, telefono1_suc, telefono2_suc, email1_suc, email2_suc, fax_suc, codigo_com) VALUES (1, 'Ibarra                   ', '               ', '                                                  ', '06289562       ', '               ', 'eadecoibarra@gmail.com                            ', '                                                  ', '               ', 1);


                                                                         2195.dat                                                                                            0000600 0004000 0002000 00000006004 13411205312 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (2, 's_estado_dato                           ', 's_estado_dato                 ', 'codigo_est                    ', 'nombre_est                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (3, 's_modulos                               ', 's_modulos                     ', 'codigo_mod                    ', 'nombre_mod                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (4, 's_perfil_usuario                        ', 's_perfil_usuario              ', 'codigo_per                    ', 'nombre_per                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (5, 's_sucursal                              ', 's_sucursal                    ', 'codigo_suc                    ', 'nombre_suc                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (6, 's_tablas_bdd                            ', 's_tablas_bdd                  ', 'codigo_tab                    ', 'nombre_tab                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (10, 's_tablas_campos                         ', 's_tablas_campos               ', 'codigo_tac                    ', 'nombre_tac                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (7, 's_tablas_campos_val                     ', 's_tablas_campos_val           ', 'codigo_tav                    ', 'nombre_tav                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (8, 's_usuario                               ', 's_usuario                     ', 'codigo_usu                    ', 'nombre_usu                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (9, 's_variables                             ', 's_variables                   ', 'codigo_var                    ', 'nombre_var                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_bdd (codigo_tab, nombre_tab, tabla_tab, codigopk_tab, campo_tab, orderby_tab, condicion_tab, codigo_mod) VALUES (1, 's_compania                              ', 's_compania                    ', 'codigo_com                    ', 'nombre_com                    ', NULL, NULL, NULL);


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            2207.dat                                                                                            0000600 0004000 0002000 00000034156 13411205312 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (1, 1, NULL, 'codigo_com                    ', 'codigo_com                    ', NULL, NULL, 1);
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
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (17, 4, NULL, 'nombre_per                    ', 'nombre_per                    ', NULL, NULL, 2);
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
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (38, 10, NULL, 'codigo_tav                    ', 'codigo_tav                    ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (39, 10, NULL, 'nombre_tac                    ', 'nombre_tac                    ', NULL, NULL, 4);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (40, 10, NULL, 'nombrecampobdd_tac            ', 'nombrecampobdd_tac            ', NULL, NULL, 5);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (41, 10, NULL, 'mascara_tac                   ', 'mascara_tac                   ', NULL, NULL, 6);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (42, 10, NULL, 'minlength_tac                 ', 'minlength_tac                 ', NULL, NULL, 7);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (43, 10, NULL, 'orden_tac                     ', 'orden_tac                     ', NULL, NULL, 8);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (44, 7, NULL, 'codigo_tav                    ', 'codigo_tav                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (45, 7, NULL, 'nombre_tav                    ', 'nombre_tav                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (46, 7, NULL, 'expresion_tav                 ', 'expresion_tav                 ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (47, 8, NULL, 'codigo_usu                    ', 'codigo_usu                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (48, 8, NULL, 'nombre_usu                    ', 'nombre_usu                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (49, 8, NULL, 'usuario_usu                   ', 'usuario_usu                   ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (50, 8, NULL, 'clave_usu                     ', 'clave_usu                     ', NULL, NULL, 4);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (51, 8, NULL, 'codigo_per                    ', 'codigo_per                    ', NULL, NULL, 5);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (52, 8, NULL, 'fechacaducidad_usu            ', 'fechacaducidad_usu            ', NULL, NULL, 6);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (53, 8, NULL, 'codigo_est                    ', 'codigo_est                    ', NULL, NULL, 7);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (54, 9, NULL, 'codigo_var                    ', 'codigo_var                    ', NULL, NULL, 1);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (55, 9, NULL, 'nombre_var                    ', 'nombre_var                    ', NULL, NULL, 2);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (56, 9, NULL, 'descripcion_var               ', 'descripcion_var               ', NULL, NULL, 3);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (57, 9, NULL, 'valor_var                     ', 'valor_var                     ', NULL, NULL, 4);
INSERT INTO sistema.s_tablas_campos (codigo_tac, codigo_tab, codigo_tav, nombre_tac, nombrecampobdd_tac, mascara_tac, minlength_tac, orden_tac) VALUES (58, 6, NULL, 'codigo_mod                    ', 'codigo_mod                    ', NULL, NULL, 8);


                                                                                                                                                                                                                                                                                                                                                                                                                  2193.dat                                                                                            0000600 0004000 0002000 00000000002 13411205312 0014230 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              2205.dat                                                                                            0000600 0004000 0002000 00000000002 13411205312 0014222 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              2197.dat                                                                                            0000600 0004000 0002000 00000000002 13411205312 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000064517 13411205312 0015371 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT "FK_s_usuario_codigo_per";
ALTER TABLE ONLY sistema.s_usuario DROP CONSTRAINT "FK_s_usuario_codigo_est";
ALTER TABLE ONLY sistema.s_tablas_campos DROP CONSTRAINT "FK_s_tablas_campos_codigo_tav";
ALTER TABLE ONLY sistema.s_tablas_campos DROP CONSTRAINT "FK_s_tablas_campos_codigo_tab";
ALTER TABLE ONLY sistema.s_tablas_bdd DROP CONSTRAINT "FK_s_tablas_bdd_codigo_mod";
ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT "FK_s_sucursal_codigo_com";
ALTER TABLE ONLY sistema.s_perfil_usuario DROP CONSTRAINT "FK_s_perfil_usuarios_codigo_est";
DROP INDEX sistema.index_s_estado_dato_codigo_est;
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
ALTER TABLE ONLY sistema.s_tablas_campos_val DROP CONSTRAINT "PK_codigo_tav";
ALTER TABLE ONLY sistema.s_tablas_campos DROP CONSTRAINT "PK_codigo_tac";
ALTER TABLE ONLY sistema.s_tablas_bdd DROP CONSTRAINT "PK_codigo_tab";
ALTER TABLE ONLY sistema.s_sucursal DROP CONSTRAINT "PK_codigo_suc";
ALTER TABLE ONLY sistema.s_perfil_usuario DROP CONSTRAINT "PK_codigo_per";
ALTER TABLE ONLY sistema.s_modulos DROP CONSTRAINT "PK_codigo_mod";
ALTER TABLE ONLY sistema.s_estado_dato DROP CONSTRAINT "PK_codigo_est";
ALTER TABLE ONLY sistema.s_compania DROP CONSTRAINT "PK_codigo_com";
ALTER TABLE sistema.s_variables ALTER COLUMN codigo_var DROP DEFAULT;
ALTER TABLE sistema.s_usuario ALTER COLUMN codigo_usu DROP DEFAULT;
ALTER TABLE sistema.s_tablas_campos_val ALTER COLUMN codigo_tav DROP DEFAULT;
ALTER TABLE sistema.s_tablas_campos ALTER COLUMN codigo_tac DROP DEFAULT;
ALTER TABLE sistema.s_tablas_bdd ALTER COLUMN codigo_tab DROP DEFAULT;
ALTER TABLE sistema.s_sucursal ALTER COLUMN codigo_suc DROP DEFAULT;
ALTER TABLE sistema.s_perfil_usuario ALTER COLUMN codigo_per DROP DEFAULT;
ALTER TABLE sistema.s_modulos ALTER COLUMN codigo_mod DROP DEFAULT;
ALTER TABLE sistema.s_estado_dato ALTER COLUMN codigo_est DROP DEFAULT;
ALTER TABLE sistema.s_compania ALTER COLUMN codigo_com DROP DEFAULT;
DROP SEQUENCE sistema.s_variables_codigo_var_seq;
DROP TABLE sistema.s_variables;
DROP SEQUENCE sistema.s_usuario_codigo_usu_seq;
DROP TABLE sistema.s_usuario;
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
DROP SCHEMA sistema;
--
-- Name: sistema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA sistema;


ALTER SCHEMA sistema OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: s_compania; Type: TABLE; Schema: sistema; Owner: postgres; Tablespace: 
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
-- Name: s_estado_dato; Type: TABLE; Schema: sistema; Owner: postgres; Tablespace: 
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
-- Name: s_modulos; Type: TABLE; Schema: sistema; Owner: postgres; Tablespace: 
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
-- Name: s_perfil_usuario; Type: TABLE; Schema: sistema; Owner: postgres; Tablespace: 
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
-- Name: s_sucursal; Type: TABLE; Schema: sistema; Owner: postgres; Tablespace: 
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
-- Name: s_tablas_bdd; Type: TABLE; Schema: sistema; Owner: postgres; Tablespace: 
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
-- Name: s_tablas_campos; Type: TABLE; Schema: sistema; Owner: postgres; Tablespace: 
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
-- Name: s_tablas_campos_val; Type: TABLE; Schema: sistema; Owner: postgres; Tablespace: 
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
-- Name: s_usuario; Type: TABLE; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE TABLE sistema.s_usuario (
    codigo_usu integer NOT NULL,
    nombre_usu character(50) NOT NULL,
    usuario_usu character(12) NOT NULL,
    clave_usu character(12) NOT NULL,
    codigo_per integer,
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
-- Name: s_variables; Type: TABLE; Schema: sistema; Owner: postgres; Tablespace: 
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
-- Name: codigo_usu; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_usuario ALTER COLUMN codigo_usu SET DEFAULT nextval('sistema.s_usuario_codigo_usu_seq'::regclass);


--
-- Name: codigo_var; Type: DEFAULT; Schema: sistema; Owner: postgres
--

ALTER TABLE ONLY sistema.s_variables ALTER COLUMN codigo_var SET DEFAULT nextval('sistema.s_variables_codigo_var_seq'::regclass);


--
-- Data for Name: s_compania; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2189.dat

--
-- Name: s_compania_codigo_com_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_compania_codigo_com_seq', 1, true);


--
-- Data for Name: s_estado_dato; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2203.dat

--
-- Name: s_estado_dato_codigo_est_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_estado_dato_codigo_est_seq', 1, false);


--
-- Data for Name: s_modulos; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2199.dat

--
-- Name: s_modulos_codigo_mod_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_modulos_codigo_mod_seq', 7, true);


--
-- Data for Name: s_perfil_usuario; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2201.dat

--
-- Name: s_perfil_usuario_codigo_per_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_perfil_usuario_codigo_per_seq', 1, false);


--
-- Data for Name: s_sucursal; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2191.dat

--
-- Name: s_sucursal_codigo_suc_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_sucursal_codigo_suc_seq', 1, true);


--
-- Data for Name: s_tablas_bdd; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2195.dat

--
-- Name: s_tablas_bdd_codigo_tab_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_tablas_bdd_codigo_tab_seq', 10, true);


--
-- Data for Name: s_tablas_campos; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2207.dat

--
-- Name: s_tablas_campos_codigo_tac_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_tablas_campos_codigo_tac_seq', 58, true);


--
-- Data for Name: s_tablas_campos_val; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2193.dat

--
-- Name: s_tablas_campos_val_codigo_tav_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_tablas_campos_val_codigo_tav_seq', 1, false);


--
-- Data for Name: s_usuario; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2205.dat

--
-- Name: s_usuario_codigo_usu_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_usuario_codigo_usu_seq', 1, false);


--
-- Data for Name: s_variables; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

\i $$PATH$$/2197.dat

--
-- Name: s_variables_codigo_var_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.s_variables_codigo_var_seq', 1, false);


--
-- Name: PK_codigo_com; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT "PK_codigo_com" PRIMARY KEY (codigo_com);


--
-- Name: PK_codigo_est; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_estado_dato
    ADD CONSTRAINT "PK_codigo_est" PRIMARY KEY (codigo_est);


--
-- Name: PK_codigo_mod; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_modulos
    ADD CONSTRAINT "PK_codigo_mod" PRIMARY KEY (codigo_mod);


--
-- Name: PK_codigo_per; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_perfil_usuario
    ADD CONSTRAINT "PK_codigo_per" PRIMARY KEY (codigo_per);


--
-- Name: PK_codigo_suc; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT "PK_codigo_suc" PRIMARY KEY (codigo_suc);


--
-- Name: PK_codigo_tab; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_tablas_bdd
    ADD CONSTRAINT "PK_codigo_tab" PRIMARY KEY (codigo_tab);


--
-- Name: PK_codigo_tac; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_tablas_campos
    ADD CONSTRAINT "PK_codigo_tac" PRIMARY KEY (codigo_tac);


--
-- Name: PK_codigo_tav; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_tablas_campos_val
    ADD CONSTRAINT "PK_codigo_tav" PRIMARY KEY (codigo_tav);


--
-- Name: PK_codigo_usu; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT "PK_codigo_usu" PRIMARY KEY (codigo_usu);


--
-- Name: PK_codigo_var; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_variables
    ADD CONSTRAINT "PK_codigo_var" PRIMARY KEY (codigo_var);


--
-- Name: s_compania_nombre_com_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT s_compania_nombre_com_key UNIQUE (nombre_com);


--
-- Name: s_compania_ruc_com_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_compania
    ADD CONSTRAINT s_compania_ruc_com_key UNIQUE (ruc_com);


--
-- Name: s_sucursal_nombre_suc_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT s_sucursal_nombre_suc_key UNIQUE (nombre_suc);


--
-- Name: s_sucursal_ruc_suc_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_sucursal
    ADD CONSTRAINT s_sucursal_ruc_suc_key UNIQUE (ruc_suc);


--
-- Name: s_usuario_usuario_usu_key; Type: CONSTRAINT; Schema: sistema; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sistema.s_usuario
    ADD CONSTRAINT s_usuario_usuario_usu_key UNIQUE (usuario_usu);


--
-- Name: Index_s_compania_codigo_com; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_compania_codigo_com" ON sistema.s_compania USING btree (codigo_com);


--
-- Name: Index_s_modulos_codigo_mod; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_modulos_codigo_mod" ON sistema.s_modulos USING btree (codigo_mod);


--
-- Name: Index_s_perfil_usuario_codigo_est; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_perfil_usuario_codigo_est" ON sistema.s_perfil_usuario USING btree (codigo_est);


--
-- Name: Index_s_perfil_usuario_codigo_per; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_perfil_usuario_codigo_per" ON sistema.s_perfil_usuario USING btree (codigo_per);


--
-- Name: Index_s_sucursal_codigo_com; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_sucursal_codigo_com" ON sistema.s_sucursal USING btree (codigo_com);


--
-- Name: Index_s_sucursal_codigo_suc; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_sucursal_codigo_suc" ON sistema.s_sucursal USING btree (codigo_suc);


--
-- Name: Index_s_tablas_bdd_codigo_mod; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_tablas_bdd_codigo_mod" ON sistema.s_tablas_bdd USING btree (codigo_mod);


--
-- Name: Index_s_tablas_bdd_codigo_tab; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_tablas_bdd_codigo_tab" ON sistema.s_tablas_bdd USING btree (codigo_tab);


--
-- Name: Index_s_tablas_campos_codigo_tab; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_tablas_campos_codigo_tab" ON sistema.s_tablas_campos USING btree (codigo_tab);


--
-- Name: Index_s_tablas_campos_codigo_tac; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_tablas_campos_codigo_tac" ON sistema.s_tablas_campos USING btree (codigo_tac);


--
-- Name: Index_s_tablas_campos_codigo_tav; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_tablas_campos_codigo_tav" ON sistema.s_tablas_campos USING btree (codigo_tav);


--
-- Name: Index_s_tablas_campos_val_codigo_tav; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_tablas_campos_val_codigo_tav" ON sistema.s_tablas_campos_val USING btree (codigo_tav);


--
-- Name: Index_s_usuario_codigo_est; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_usuario_codigo_est" ON sistema.s_usuario USING btree (codigo_est);


--
-- Name: Index_s_usuario_codigo_per; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_usuario_codigo_per" ON sistema.s_usuario USING btree (codigo_per);


--
-- Name: Index_s_usuario_codigo_usu; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_usuario_codigo_usu" ON sistema.s_usuario USING btree (codigo_usu);


--
-- Name: Index_s_variables_codigo_var; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX "Index_s_variables_codigo_var" ON sistema.s_variables USING btree (codigo_var);


--
-- Name: index_s_estado_dato_codigo_est; Type: INDEX; Schema: sistema; Owner: postgres; Tablespace: 
--

CREATE INDEX index_s_estado_dato_codigo_est ON sistema.s_estado_dato USING btree (codigo_est);


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
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 