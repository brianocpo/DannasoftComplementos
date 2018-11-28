 -- Table: mod_administracion.p_atributo

-- DROP TABLE mod_administracion.p_atributo;

CREATE TABLE mod_administracion.p_atributo
(
    codigo_atr serial NOT NULL,
    nombre_atr character(30),
    codigo_gest integer,
    CONSTRAINT "PK_codigo_atr" PRIMARY KEY (codigo_atr),
    CONSTRAINT "FK_p_atributo_vs_g_estado" FOREIGN KEY (codigo_gest)
        REFERENCES mod_administracion.g_estado (codigo_gest) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE mod_administracion.p_atributo
    OWNER to "postgres";



 -- Table: mod_administracion.p_atributo_detalle

-- DROP TABLE mod_administracion.p_atributo_detalle;

CREATE TABLE mod_administracion.p_atributo_detalle
(
    codigo_datr serial NOT NULL,
    nombre_datr character(30) ,
    codigo_gest integer,
    codigo_atr integer,
    CONSTRAINT "PK_codigo_datr" PRIMARY KEY (codigo_datr),
    CONSTRAINT "FK_p_atributo_detalle_vs_g_estado" FOREIGN KEY (codigo_gest)
        REFERENCES mod_administracion.g_estado (codigo_gest) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_p_atributo_detalle_vs_p_atributo" FOREIGN KEY (codigo_atr)
        REFERENCES mod_administracion.p_atributo (codigo_atr) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE mod_administracion.p_atributo_detalle
    OWNER to "postgres";



-- Table: mod_administracion.p_producto

-- DROP TABLE mod_administracion.p_producto;

CREATE TABLE mod_administracion.p_producto
(
  codigo_pro serial NOT NULL,
  nombre_pro character(30),
  codigo_gest integer,
  CONSTRAINT "PK_codigo_pro" PRIMARY KEY (codigo_pro),
  CONSTRAINT "FK_p_producto_vs_g_estado" FOREIGN KEY (codigo_gest)
      REFERENCES mod_administracion.g_estado (codigo_gest) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.p_producto
  OWNER TO postgres;



-- Table: mod_administracion.p_producto_atributos

-- DROP TABLE mod_administracion.p_producto_atributos;

CREATE TABLE mod_administracion.p_producto_atributos
(
    codigo_dpro serial NOT NULL,
    nombre_dpro character(30) ,
    codigo_datr integer,
    codigo_gest integer,
    codigo_pro integer,
    CONSTRAINT "PK_codigo_dpro" PRIMARY KEY (codigo_dpro),
    CONSTRAINT "FK_p_producto_detalle_vs_g_estado" FOREIGN KEY (codigo_gest)
        REFERENCES mod_administracion.g_estado (codigo_gest) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_p_producto_detalle_vs_p_atributo_detalle" FOREIGN KEY (codigo_datr)
        REFERENCES mod_administracion.p_atributo_detalle (codigo_datr) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_p_producto_detalle_vs_p_producto" FOREIGN KEY (codigo_pro)
        REFERENCES mod_administracion.p_producto (codigo_pro) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE mod_administracion.p_producto_atributos
    OWNER to postgres;

