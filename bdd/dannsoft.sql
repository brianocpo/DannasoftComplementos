-- Table: mod_administracion.v_pais

-- DROP TABLE mod_administracion.v_pais;

CREATE TABLE mod_administracion.v_pais
(
  codigo_pai serial NOT NULL,
  nombre_pai character(20),
  alterno_pai character(20),
  CONSTRAINT "PK_codigo_pai" PRIMARY KEY (codigo_pai)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.v_pais
  OWNER TO postgres;

-- Index: mod_administracion."Index_v_pais_codigo_pai"

-- DROP INDEX mod_administracion."Index_v_pais_codigo_pai";

CREATE INDEX "Index_v_pais_codigo_pai"
  ON mod_administracion.v_pais
  USING btree
  (codigo_pai);
-- Table: mod_administracion.v_estado

-- DROP TABLE mod_administracion.v_estado;

CREATE TABLE mod_administracion.v_estado
(
  codigo_est serial NOT NULL,
  nombre_est character(50),
  codigo_ciu integer,
  CONSTRAINT "codigo_estPK" PRIMARY KEY (codigo_est),
  CONSTRAINT "v_ciudad_v_estadoFK" FOREIGN KEY (codigo_ciu)
      REFERENCES mod_administracion.v_ciudad (codigo_ciu) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.v_estado
  OWNER TO postgres;

-- Index: mod_administracion."Index_v_estado_codigo_ciu"

-- DROP INDEX mod_administracion."Index_v_estado_codigo_ciu";

CREATE INDEX "Index_v_estado_codigo_ciu"
  ON mod_administracion.v_estado
  USING btree
  (codigo_ciu);

-- Index: mod_administracion."Index_v_estado_codigo_est"

-- DROP INDEX mod_administracion."Index_v_estado_codigo_est";

CREATE INDEX "Index_v_estado_codigo_est"
  ON mod_administracion.v_estado
  USING btree
  (codigo_est);

-- Table: mod_administracion.v_ciudad

-- DROP TABLE mod_administracion.v_ciudad;

CREATE TABLE mod_administracion.v_ciudad
(
  codigo_ciu serial NOT NULL,
  nombre_ciu character(20),
  alterno_ciu character(20),
  codigo_pai integer,
  CONSTRAINT "PK_codigo_ciu" PRIMARY KEY (codigo_ciu),
  CONSTRAINT "FK_v_ciudad_codigo_pai" FOREIGN KEY (codigo_pai)
      REFERENCES mod_administracion.v_pais (codigo_pai) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.v_ciudad
  OWNER TO postgres;

-- Index: mod_administracion."Index_v_ciudad_codigo_ciu"

-- DROP INDEX mod_administracion."Index_v_ciudad_codigo_ciu";

CREATE INDEX "Index_v_ciudad_codigo_ciu"
  ON mod_administracion.v_ciudad
  USING btree
  (codigo_ciu);

-- Index: mod_administracion."Index_v_ciudad_codigo_pai"

-- DROP INDEX mod_administracion."Index_v_ciudad_codigo_pai";

CREATE INDEX "Index_v_ciudad_codigo_pai"
  ON mod_administracion.v_ciudad
  USING btree
  (codigo_pai);

-- Table: mod_administracion.s_usuario

-- DROP TABLE mod_administracion.s_usuario;

CREATE TABLE mod_administracion.s_usuario
(
  codigo_usu serial NOT NULL,
  nombre_usu character(50) NOT NULL,
  usuario_usu character(12) NOT NULL,
  clave_usu character(12) NOT NULL,
  codigo_per integer NOT NULL,
  CONSTRAINT "PK_s_usuario" PRIMARY KEY (codigo_usu),
  CONSTRAINT "FK_s_usuario_vs_s_perfil_usuario" FOREIGN KEY (codigo_per)
      REFERENCES mod_administracion.s_perfil_usuario (codigo_per) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.s_usuario
  OWNER TO postgres;

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
  where_tab character(50),
  CONSTRAINT "codigo_tab_PK" PRIMARY KEY (codigo_tab)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.s_tablas_bdd
  OWNER TO postgres;
-- Table: mod_administracion.s_compania

-- DROP TABLE mod_administracion.s_compania;

CREATE TABLE mod_administracion.s_compania
(
  codigo_com serial NOT NULL,
  nombre_com character(25) NOT NULL,
  nombrerepresentante_com character(30) NOT NULL,
  ruc_com character(15) NOT NULL,
  direccion_com character(50),
  telefono1_com character(15) NOT NULL,
  telefono2_com character(15),
  paginaweb_com character(25),
  fax_com character(15),
  representante_com character(30),
  email1_com character(25) NOT NULL,
  email2_com character(25),
  CONSTRAINT "FK_codigo_com" PRIMARY KEY (codigo_com)
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
  codigo_com integer NOT NULL,
  nombre_suc character(25) NOT NULL,
  ruc_suc character(15),
  direccion_suc character(50),
  telefono1_suc character(15) NOT NULL,
  telefono2_suc character(15),
  email1_suc character(50) NOT NULL,
  email2_suc character(50),
  fax_suc character(15),
  CONSTRAINT "PK_codigo_suc" PRIMARY KEY (codigo_suc),
  CONSTRAINT "FK_s_sucursal_vs_s_compania" FOREIGN KEY (codigo_com)
      REFERENCES mod_administracion.s_compania (codigo_com) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
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


CREATE TABLE mod_administracion.s_tablas_campos_val
(
  codigo_tav serial NOT NULL,
  nombre_tav character(30) NOT NULL,
  expresion_tav character(100),
  CONSTRAINT "codigo_tav_PK" PRIMARY KEY (codigo_tav)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.s_tablas_campos_val
  OWNER TO postgres;

CREATE INDEX "Index_s_tablas_campos_val_codigo_tav"
  ON mod_administracion.s_tablas_campos_val
  USING btree
  (codigo_tav);



CREATE TABLE mod_administracion.s_tablas_campos
(
  codigo_tac serial NOT NULL,
  codigo_tab integer NOT NULL,
  codigo_tav integer NOT NULL,
  nombrecampo_tac character(30) NOT NULL,
  nombrecampobdd_tac character(30) NOT NULL,  
  mascara_tac character(50),
  minlength integer,
  orden_tac integer NOT NULL,
  CONSTRAINT "codigo_tac_PK" PRIMARY KEY (codigo_tac),
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



CREATE INDEX "Index_s_tablas_campos_codigo_tac"
  ON mod_administracion.s_tablas_campos
  USING btree
  (codigo_tac);



CREATE INDEX "Index_s_tablas_campos_codigo_tab"
  ON mod_administracion.s_tablas_campos
  USING btree
  (codigo_tab);



CREATE INDEX "Index_s_tablas_campos_codigo_tav"
  ON mod_administracion.s_tablas_campos
  USING btree
  (codigo_tav);
