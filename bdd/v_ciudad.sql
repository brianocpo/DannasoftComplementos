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


