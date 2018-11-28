-- Table: mod_administracion.g_estado

-- DROP TABLE mod_administracion.g_estado;

CREATE TABLE mod_administracion.g_estado
(
  codigo_gest serial NOT NULL,
  nombre_gest character(10) NOT NULL,
  valor_gest character(2),
  CONSTRAINT "PK_g_estado_codigo_gest" PRIMARY KEY (codigo_gest)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.g_estado
  OWNER TO postgres;

-- Index: mod_administracion.index_g_estado_codigo_gest

-- DROP INDEX mod_administracion.index_g_estado_codigo_gest;

CREATE INDEX index_g_estado_codigo_gest
  ON mod_administracion.g_estado
  USING btree
  (codigo_gest);


