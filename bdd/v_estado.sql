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


