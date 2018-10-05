-- Table: mod_administracion.s_tablas_campos_val

-- DROP TABLE mod_administracion.s_tablas_campos_val;

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

-- Index: mod_administracion."Index_s_tablas_campos_val_codigo_tav"

-- DROP INDEX mod_administracion."Index_s_tablas_campos_val_codigo_tav";

CREATE INDEX "Index_s_tablas_campos_val_codigo_tav"
  ON mod_administracion.s_tablas_campos_val
  USING btree
  (codigo_tav);


