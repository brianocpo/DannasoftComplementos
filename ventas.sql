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



-- Table: mod_administracion.v_cliente

-- DROP TABLE mod_administracion.v_cliente;

CREATE TABLE mod_administracion.v_cliente
(
  codigo_cli serial NOT NULL,
  nombre_cli character(50),
  ruc_cli character(15),
  codigo_ciu integer,
  telefono_cli character(15),
  direccion_cli character(100),
  email1_cli character(30),
  email2_cli character(30),
  fax_cli character(15),
  codpostal_cli character(10),
  web_cli character(30),
  CONSTRAINT "PK_codigo_cli" PRIMARY KEY (codigo_cli),
  CONSTRAINT "FK_v_cliente_vs_v_ciudad" FOREIGN KEY (codigo_ciu)
      REFERENCES mod_administracion.v_ciudad (codigo_ciu) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT "Unique_ruc_cli" UNIQUE (ruc_cli)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.v_cliente
  OWNER TO postgres;


-- Table: mod_administracion.v_estado

-- DROP TABLE mod_administracion.v_estado;

CREATE TABLE mod_administracion.v_estado
(
  codigo_est serial NOT NULL,
  nombre_est character(50),
  codigo_ciu integer,
  CONSTRAINT "PK_v_estado" PRIMARY KEY (codigo_est),
  CONSTRAINT "FK_v_estado_codigo_ciu" FOREIGN KEY (codigo_ciu)
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


