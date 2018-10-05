-- Table: mod_administracion.s_compania

-- DROP TABLE mod_administracion.s_compania;

CREATE TABLE mod_administracion.s_compania
(
  codigo_com serial NOT NULL,
  nombre_com character(25) NOT NULL,
  nombrerepresentante_com character(30) NOT NULL,
  ruc_com character(15) NOT NULL,
  direccion_com character(150),
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
