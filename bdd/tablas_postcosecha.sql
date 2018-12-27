 -- Table: sistema.p_atributo

-- DROP TABLE sistema.p_atributo;

CREATE TABLE sistema.p_atributo
(
    codigo_atr serial NOT NULL,
    nombre_atr character(30),
    codigo_est integer,
    CONSTRAINT "PK_codigo_atr" PRIMARY KEY (codigo_atr),
    CONSTRAINT "FK_p_atributo_codigo_est" FOREIGN KEY (codigo_est)
        REFERENCES sistema.s_estado_dato (codigo_est) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE sistema.p_atributo
    OWNER to "postgres";



 -- Table: sistema.p_atributo_detalle

-- DROP TABLE sistema.p_atributo_detalle;

CREATE TABLE sistema.p_atributo_detalle
(
    codigo_datr serial NOT NULL,
    nombre_datr character(30) ,
    codigo_est integer,
    codigo_atr integer,
    CONSTRAINT "PK_codigo_datr" PRIMARY KEY (codigo_datr),
    CONSTRAINT "FK_p_atributo_detalle_codigo_est" FOREIGN KEY (codigo_est)
        REFERENCES sistema.s_estado_dato (codigo_est) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_p_atributo_detalle_codigo_atr" FOREIGN KEY (codigo_atr)
        REFERENCES sistema.p_atributo (codigo_atr) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE sistema.p_atributo_detalle
    OWNER to "postgres";



-- Table: sistema.p_producto

-- DROP TABLE sistema.p_producto;

CREATE TABLE sistema.p_producto
(
  codigo_pro serial NOT NULL,
  nombre_pro character(30),
  codigo_est integer,
  CONSTRAINT "PK_codigo_pro" PRIMARY KEY (codigo_pro),
  CONSTRAINT "FK_p_producto_codigo_est" FOREIGN KEY (codigo_est)
      REFERENCES sistema.s_estado_dato (codigo_est) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE sistema.p_producto
  OWNER TO postgres;



-- Table: sistema.p_producto_atributos

-- DROP TABLE sistema.p_producto_atributos;

CREATE TABLE sistema.p_producto_atributos
(
    codigo_dpro serial NOT NULL,
    nombre_dpro character(30) ,
    codigo_datr integer,
    codigo_est integer,
    codigo_pro integer,
    CONSTRAINT "PK_codigo_dpro" PRIMARY KEY (codigo_dpro),
    CONSTRAINT "FK_p_producto_detalle_codigo_est" FOREIGN KEY (codigo_est)
        REFERENCES sistema.s_estado_dato (codigo_est) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_p_producto_detalle_codigo_datr" FOREIGN KEY (codigo_datr)
        REFERENCES sistema.p_atributo_detalle (codigo_datr) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "FK_p_producto_detalle_codigo_pro" FOREIGN KEY (codigo_pro)
        REFERENCES sistema.p_producto (codigo_pro) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE sistema.p_producto_atributos
    OWNER to postgres;

