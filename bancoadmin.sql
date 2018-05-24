-- Table: public.quarto

-- DROP TABLE public.quarto;

CREATE TABLE public.quarto
(
  id integer NOT NULL,
  classe integer,
  hospede_id integer,
  "preço" real,
  CONSTRAINT pk1_id PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.quarto
  OWNER TO postgres;
