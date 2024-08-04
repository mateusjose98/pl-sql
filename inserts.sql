-- para permitir inserts
-- ALTER USER userX QUOTA UNLIMITED ON USERS;


DECLARE
     v_ID NUMBER(5) :=2;
     v_DESCRICAO VARCHAR2(100) := 'Industria';
BEGIN
   INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (v_ID, v_DESCRICAO); 
     COMMIT;

END;


DECLARE
   v_COD       PRODUTO_EXERCICIO.COD%type       := '51232';
   v_DESCRICAO PRODUTO_EXERCICIO.DESCRICAO%type := 'Sucozinho - Manga - 2 Litro';
   v_CATEGORIA PRODUTO_EXERCICIO.CATEGORIA%TYPE := 'Sucos de Frutas';
BEGIN
   INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO, CATEGORIA) VALUES (v_COD, v_DESCRICAO, v_CATEGORIA);
   COMMIT;
END;