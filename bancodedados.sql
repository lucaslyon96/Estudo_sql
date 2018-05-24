CREATE TABLE public.servico
(
  id integer,
  nome character(100),
  setor_id integer
  CONSTRAINT pk_id PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.servico
  OWNER TO postgres;
  
  CREATE TABLE public.quarto
(
  id integer,
  classe integer,
  hospede_id integer,
  "preço" integer
  CONSTRAINT pk_id PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.quarto
  OWNER TO postgres;
   
  
  
CREATE TABLE public.setor
(
  id integer,
  nome character(100)
  CONSTRAINT pk_id PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.setor
  OWNER TO postgres;



CREATE TABLE public.hospede
(
  cpf integer,
  nome character(100),
  "end" character(200),
  telefone character(50),
  sexo character(50),
  email character(200),
  idade integer
  CONSTRAINT pk_cpf PRIMARY KEY (cpf)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.hospede
  OWNER TO postgres;


CREATE TABLE public.hospedagem
(
  id integer,
  hospede_id integer,
  quarto_id integer,
  data_inicio character(20),
  data_fim character(20)
  CONSTRAINT pk_id PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.hospedagem
  OWNER TO postgres;



CREATE TABLE public.funcionario
(
  cpf integer, -- 
  nome character(100),
  data_nascimento character(20),
  data_contrato character(20),
  sexo character(50),
  setor_id integer,
  funcao character(50)
  CONSTRAINT pk_cpf PRIMARY KEY (cpf)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.funcionario
  OWNER TO postgres;
COMMENT ON COLUMN public.funcionario.cpf IS '
';





