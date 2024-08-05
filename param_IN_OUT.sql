

-- IN OUT
-- IN variável interna, constante, só podemos atribuit valor
-- OUT variável que só pode retornar valor, não pode ser usada como entrada, apenas saída
-- usamos as duas, atribção e retorno, respectivamente

CREATE OR REPLACE PROCEDURE FORMATA_CNPJ_SIMPLES
(p_CNPJ_SAIDA OUT cliente.cnpj%type)
IS
BEGIN
    p_CNPJ_SAIDA := SUBSTR(p_CNPJ_SAIDA, 1, 3) || '/' || SUBSTR(p_CNPJ_SAIDA, 4, 2) || '-' || SUBSTR(p_CNPJ_SAIDA,6);
END;
  
  
DECLARE
  v_CNPJ cliente.cnpj%type;
  v_CNPJ_SAIDA cliente.cnpj%type;
BEGIN
  v_CNPJ := '1234567890';
  dbms_output.put_line(v_CNPJ);
  FORMATA_CNPJ_SIMPLES(v_CNPJ);
  dbms_output.put_line(v_CNPJ);
END;


-- parâmetro IN OUT que é ao mesmo tempo entrada e saída

CREATE OR REPLACE PROCEDURE dobra
(x IN OUT number)
IS
BEGIN
    x := x * 2;
   dbms_output.put_line(x);
END;

  
DECLARE
  x NUMBER:= 120;
BEGIN
   dobra(x);
END;
