-- Table: mod_administracion.v_pais

-- DROP TABLE mod_administracion.v_pais;

CREATE TABLE mod_administracion.v_pais
(
  codigo_pai serial NOT NULL,
  nombre_pai character(20) NOT NULL,
  alterno_pai character(20) NOT NULL,
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


