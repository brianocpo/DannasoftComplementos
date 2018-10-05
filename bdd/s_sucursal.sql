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

