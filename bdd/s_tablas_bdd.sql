-- Table: mod_administracion.s_tablas_bdd

-- DROP TABLE mod_administracion.s_tablas_bdd;

CREATE TABLE mod_administracion.s_tablas_bdd
(
  codigo_tab serial NOT NULL,
  nombre_tab character(40) NOT NULL,
  tabla_tab character(30) NOT NULL,
  codigopk_tab character(30) NOT NULL,
  campo_tab character(30) NOT NULL,
  orderby_tab character(50),
  where_tab character(50),
  CONSTRAINT "codigo_tab_PK" PRIMARY KEY (codigo_tab)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mod_administracion.s_tablas_bdd
  OWNER TO postgres;

