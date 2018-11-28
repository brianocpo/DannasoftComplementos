-- Table: mod_administracion.s_compania

-- DROP TABLE mod_administracion.s_compania;

CREATE TABLE mod_administracion.s_compania
(
  codigo_com serial NOT NULL,
  nombre_com character(40) NOT NULL,
  ruc_com character(15) NOT NULL,
  direccion_com character(150),
  telefono1_com character(15) NOT NULL,
  telefono2_com character(15),
  paginaweb_com character(25),
  fax_com character(15),
  representante_com character(30),
  email1_com character(25) NOT NULL,
  email2_com character(25),
  CONSTRAINT "PK_codigo_com" PRIMARY KEY (codigo_com),
  CONSTRAINT s_compania_nombre_com_key UNIQUE (nombre_com),
  CONSTRAINT s_compania_ruc_com_key UNIQUE (ruc_com)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.s_compania
  OWNER TO postgres;

-- Index: mod_administracion."Index_s_compania_codigo_com"

-- DROP INDEX mod_administracion."Index_s_compania_codigo_com";

CREATE INDEX "Index_s_compania_codigo_com"
  ON mod_administracion.s_compania
  USING btree
  (codigo_com);



-- Table: mod_administracion.s_sucursal

-- DROP TABLE mod_administracion.s_sucursal;

CREATE TABLE mod_administracion.s_sucursal
(
  codigo_suc serial NOT NULL,
  nombre_suc character(25) NOT NULL,
  ruc_suc character(15),
  direccion_suc character(50),
  telefono1_suc character(15) NOT NULL,
  telefono2_suc character(15),
  email1_suc character(50) NOT NULL,
  email2_suc character(50),
  fax_suc character(15),
  codigo_com integer,
  CONSTRAINT "PK_codigo_suc" PRIMARY KEY (codigo_suc),
  CONSTRAINT "FK_s_compania_vs_s_sucursal" FOREIGN KEY (codigo_com)
      REFERENCES mod_administracion.s_compania (codigo_com) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT s_sucursal_nombre_suc_key UNIQUE (nombre_suc),
  CONSTRAINT s_sucursal_ruc_suc_key UNIQUE (ruc_suc)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.s_sucursal
  OWNER TO postgres;

-- Index: mod_administracion."Index_s_sucursal_codigo_com"

-- DROP INDEX mod_administracion."Index_s_sucursal_codigo_com";

CREATE INDEX "Index_s_sucursal_codigo_com"
  ON mod_administracion.s_sucursal
  USING btree
  (codigo_com);

-- Index: mod_administracion."Index_s_sucursal_codigo_suc"

-- DROP INDEX mod_administracion."Index_s_sucursal_codigo_suc";

CREATE INDEX "Index_s_sucursal_codigo_suc"
  ON mod_administracion.s_sucursal
  USING btree
  (codigo_suc);



-- Table: mod_administracion.s_tablas_bdd

-- DROP TABLE mod_administracion.s_tablas_bdd;

CREATE TABLE mod_administracion.s_tablas_bdd
(
  codigo_tab serial NOT NULL,
  nombre_tab character(40) NOT NULL,
  tabla_tab character(30) NOT NULL,
  codigopk_tab character(30) NOT NULL,
  campo_tab character(30) NOT NULL,
  orderby_tab character(50),
  condicion_tab character(50),
  codigo_mod integer,
  CONSTRAINT "PK_codigo_tab" PRIMARY KEY (codigo_tab),
  CONSTRAINT "FK_s_tablas_bdd_vs_s_modulos" FOREIGN KEY (codigo_mod)
      REFERENCES mod_administracion.s_modulos (codigo_mod) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.s_tablas_bdd
  OWNER TO postgres;

-- Index: mod_administracion."Index_s_tablas_bdd_codigo_tab"

-- DROP INDEX mod_administracion."Index_s_tablas_bdd_codigo_tab";

CREATE INDEX "Index_s_tablas_bdd_codigo_tab"
  ON mod_administracion.s_tablas_bdd
  USING btree
  (codigo_tab);




-- Table: mod_administracion.s_tablas_campos

-- DROP TABLE mod_administracion.s_tablas_campos;

CREATE TABLE mod_administracion.s_tablas_campos
(
  codigo_tac serial NOT NULL,
  codigo_tab integer NOT NULL,
  codigo_tav integer,
  nombre_tac character(30) NOT NULL,
  nombrecampobdd_tac character(30) NOT NULL,
  mascara_tac character(50),
  minlength_tac integer,
  orden_tac integer NOT NULL DEFAULT 0,
  CONSTRAINT "PK_codigo_tac" PRIMARY KEY (codigo_tac),
  CONSTRAINT "FK_s_tablas_campos_codigo_tab" FOREIGN KEY (codigo_tab)
      REFERENCES mod_administracion.s_tablas_bdd (codigo_tab) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "FK_s_tablas_campos_codigo_tav" FOREIGN KEY (codigo_tav)
      REFERENCES mod_administracion.s_tablas_campos_val (codigo_tav) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.s_tablas_campos
  OWNER TO postgres;

-- Index: mod_administracion."Index_s_tablas_campos_codigo_tab"

-- DROP INDEX mod_administracion."Index_s_tablas_campos_codigo_tab";

CREATE INDEX "Index_s_tablas_campos_codigo_tab"
  ON mod_administracion.s_tablas_campos
  USING btree
  (codigo_tab);

-- Index: mod_administracion."Index_s_tablas_campos_codigo_tac"

-- DROP INDEX mod_administracion."Index_s_tablas_campos_codigo_tac";

CREATE INDEX "Index_s_tablas_campos_codigo_tac"
  ON mod_administracion.s_tablas_campos
  USING btree
  (codigo_tac);

-- Index: mod_administracion."Index_s_tablas_campos_codigo_tav"

-- DROP INDEX mod_administracion."Index_s_tablas_campos_codigo_tav";

CREATE INDEX "Index_s_tablas_campos_codigo_tav"
  ON mod_administracion.s_tablas_campos
  USING btree
  (codigo_tav);




-- Table: mod_administracion.s_tablas_campos_val

-- DROP TABLE mod_administracion.s_tablas_campos_val;

CREATE TABLE mod_administracion.s_tablas_campos_val
(
  codigo_tav serial NOT NULL,
  nombre_tav character(30) NOT NULL,
  expresion_tav character(100) NOT NULL,
  CONSTRAINT "PK_codigo_tav" PRIMARY KEY (codigo_tav)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.s_tablas_campos_val
  OWNER TO postgres;

-- Index: mod_administracion."Index_s_tablas_campos_val_codigo_tav"

-- DROP INDEX mod_administracion."Index_s_tablas_campos_val_codigo_tav";

CREATE INDEX "Index_s_tablas_campos_val_codigo_tav"
  ON mod_administracion.s_tablas_campos_val
  USING btree
  (codigo_tav);



-- Table: mod_administracion.s_modulos

-- DROP TABLE mod_administracion.s_modulos;

CREATE TABLE mod_administracion.s_modulos
(
  codigo_mod serial NOT NULL,
  nombre_mod character(30) NOT NULL,
  CONSTRAINT "PK_codigo_mod" PRIMARY KEY (codigo_mod)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.s_modulos
  OWNER TO postgres;


-- Table: mod_administracion.s_perfil_usuario

-- DROP TABLE mod_administracion.s_perfil_usuario;

CREATE TABLE mod_administracion.s_perfil_usuario
(
  codigo_per serial NOT NULL,
  nombre_per character(30) NOT NULL,
  CONSTRAINT "PK_s_perfil_usuario" PRIMARY KEY (codigo_per)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.s_perfil_usuario
  OWNER TO postgres;

-- Index: mod_administracion."Index_s_perfil_usuario_codigo_per"

-- DROP INDEX mod_administracion."Index_s_perfil_usuario_codigo_per";

CREATE INDEX "Index_s_perfil_usuario_codigo_per"
  ON mod_administracion.s_perfil_usuario
  USING btree
  (codigo_per);



-- Table: mod_administracion.s_usuario

-- DROP TABLE mod_administracion.s_usuario;

CREATE TABLE mod_administracion.s_usuario
(
  codigo_usu serial NOT NULL,
  nombre_usu character(50) NOT NULL,
  usuario_usu character(12) NOT NULL,
  clave_usu character(12) NOT NULL,
  codigo_per integer,
  fechacaducidad_usu date,
  codigo_gest integer,
  CONSTRAINT "PK_s_usuario" PRIMARY KEY (codigo_usu),
  CONSTRAINT "FK_s_usuario_vs_g_estado" FOREIGN KEY (codigo_gest)
      REFERENCES mod_administracion.g_estado (codigo_gest) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "FK_s_usuario_vs_s_perfil_usuario" FOREIGN KEY (codigo_per)
      REFERENCES mod_administracion.s_perfil_usuario (codigo_per) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT s_usuario_usuario_usu_key UNIQUE (usuario_usu)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.s_usuario
  OWNER TO postgres;

-- Index: mod_administracion."Index_s_usuario_codigo_gest"

-- DROP INDEX mod_administracion."Index_s_usuario_codigo_gest";

CREATE INDEX "Index_s_usuario_codigo_gest"
  ON mod_administracion.s_usuario
  USING btree
  (codigo_gest);

-- Index: mod_administracion."Index_s_usuario_codigo_per"

-- DROP INDEX mod_administracion."Index_s_usuario_codigo_per";

CREATE INDEX "Index_s_usuario_codigo_per"
  ON mod_administracion.s_usuario
  USING btree
  (codigo_per);

-- Index: mod_administracion."Index_s_usuario_codigo_usu"

-- DROP INDEX mod_administracion."Index_s_usuario_codigo_usu";

CREATE INDEX "Index_s_usuario_codigo_usu"
  ON mod_administracion.s_usuario
  USING btree
  (codigo_usu);


