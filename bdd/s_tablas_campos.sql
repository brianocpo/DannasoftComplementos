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


