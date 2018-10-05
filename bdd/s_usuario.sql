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


