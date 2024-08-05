
-- procedure

-- CREATE PROCEDURE NOME_procedure IS VARIAVEIS BEGIN bloco lógico END;


-- procedure
CREATE OR REPLACE PROCEDURE add_segmercado(p_ID IN SEGMERCADO.ID%type, p_DESCRICAO IN SEGMERCADO.DESCRICAO%type)
AS
BEGIN
    INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (p_ID, UPPER(p_DESCRICAO)); 
    COMMIT;
END;



SELECT * FROM SEGMERCADO s;

call USERX.add_segmercado(4, 'Farmaceutico');

SELECT * FROM SEGMERCADO s;

DROP PROCEDURE incluir_segmercado3;







-- print de saída
DECLARE
	V_ID        SEGMERCADO.ID%TYPE := 1;
	v_DESCRICAO SEGMERCADO.DESCRICAO%type;
BEGIN
	SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = v_ID;
	dbms_output.put_line(v_DESCRICAO);
END;



create or replace FUNCTION RETORNA_IMPOSTO 
(p_COD_PRODUTO produto_venda_exercicio.cod_produto%type)
RETURN produto_venda_exercicio.percentual_imposto%type
IS
   v_CATEGORIA produto_exercicio.categoria%type;
   v_IMPOSTO produto_venda_exercicio.percentual_imposto%type;
BEGIN
    v_CATEGORIA := retorna_categoria(p_COD_PRODUTO);
    IF TRIM(v_CATEGORIA) = 'Sucos de Frutas' THEN
        v_IMPOSTO := 10;
    ELSIF  TRIM(v_CATEGORIA) = 'Águas' THEN
        v_IMPOSTO := 20;
    ELSIF  TRIM(v_CATEGORIA) = 'Mate' THEN
        v_IMPOSTO := 15;
    END IF;
    RETURN v_IMPOSTO;
END;

SELECT cnpj, SUBSTR(cnpj, 1, 3) || '/' || SUBSTR(cnpj, 4, 2) || '-' || SUBSTR(cnpj, 6) AS formatado FROM CLIENTE c



CREATE OR REPLACE PROCEDURE FORMATA_CNPJ
(p_CNPJ IN cliente.cnpj%type, p_CNPJ_SAIDA OUT cliente.cnpj%type)
IS
BEGIN
    p_CNPJ_SAIDA := SUBSTR(p_CNPJ, 1, 3) || '/' || SUBSTR(p_CNPJ, 4, 2) || '-' || SUBSTR(p_CNPJ,6);
END;





DECLARE
    v_CNPJ cliente.cnpj%type;
    v_CNPJ_SAIDA cliente.cnpj%type;
BEGIN
    v_CNPJ := '1234567890';
    v_CNPJ_SAIDA := '1234567890';
    dbms_output.put_line(v_CNPJ || '--' || v_CNPJ_SAIDA);
    USERX.FORMATA_CNPJ(v_CNPJ, v_CNPJ_SAIDA);
    dbms_output.put_line(v_CNPJ || '--'|| v_CNPJ_SAIDA);
END;