

-- permite que eu consiga criar usuários e dar acesso para eles
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- criando usuario e senha na tablespace default
-- tablespace: área de trabalho onde o usuário cria suas tabelas
CREATE USER userX IDENTIFIED BY userX DEFAULT TABLESPACE USERS;

-- dando privilégio total de acesso a essa tablespace
GRANT CONNECT, RESOURCE TO userX;

-- neste momento não há tabelas para este user

