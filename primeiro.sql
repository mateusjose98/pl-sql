

-- PLSQL - linguagem imperativa estruturada com controle de fluxo, tratamento de exceptions,
-- orientação a objetos, etc

-- vantagens do PL SQL

-- Procedural Language SQL

-- Eficiente e confiabilidade



-- Estrutura básica

-- DECLARE
 -- COMPONENTES DE TRABALHO (CONSTANTE, VARIAVEIS, ETC)
-- BEGIN
-- COMANDOS DE EXECUÇÃO
-- END;

-- SET serveroutput ON;

DECLARE

	V_ID NUMBER(5):= 10;

BEGIN
	dbms_output.put_line(V_ID);
	V_ID := 1;
	dbms_output.put_line(V_ID);
	
END;


