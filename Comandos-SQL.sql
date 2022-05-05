Comandos SQL 

CREATE DATABASE - cria banco de dados
DROP  DATABASE - excluir banco de dados
-- comentário no MySQL
USE - usar banco de dados
CREATE TABLE - criar tabela
exemplo:   CREATE TABLE nomeTabela(
	        id int(11) primary key auto_incremet,
	        nome varchar(100) not null,
	        sobrenome varchar(200),
	        endereço text,
	        idade int(3)
        );

Tipos de Campos
CHAR - caracteres (string) de tamanho fixo
VARCHAR - caracteres (string) de tamanho variável
INT - números inteiros
FLOAT - números fracionários (ponto flutuante)
AUTO_INCREMENT - o valor do campo será incrementado automaticamente

Restrições (Constraints) - Usadas para limitar o tipo de dados que pode entrar em uma tabela. Isso garante a precisão e a confiabilidade dos dados na tabela.
 
São restrições:
NOT NULL - a coluna não pode ser nula (null)
UNIQUE   - Garante que todos os valores em uma coluna sejam diferentes (sem valores repetidos)
PRIMARY KEY  - Uma combinação de NOT NULL e UNIQUE. Identifica exclusivamente cada linha em uma tabela
FOREIGN KEY  - Identifica exclusivamente uma linha / registro em outra tabela
CHECK - Garante que todos os valores em uma coluna satisfaçam uma condição específica
DEFAULT - Define um valor padrão para uma coluna quando nenhum valor é especificado

RENAME TABLE - renomear tabela
exemplo: RENAME TABLE nomeTabela TO nomeTabelaBD;

DROP TABLE - excluir tabela
exemplo: DROP TABLE nomeTabela;

TRUNCATE TABLE - excluir os dados da tabela e reinicia o AUTO INCREMENT 
exemplo: TRUNCATE TABLE nomeTabela;

ALTER TABLE - modificar a estrutura da tabela, podendo acrescentar, excluir e alterar campos.
exemplo: ALTER TABLE nomeTabela;
         ADD descricao atributo;    -- ADD - adiciona campo a tabela
         ADD valor atributo;        -- atributo(varchar ou int ou float)

SHOW COLUMNS FROM - mostra as colunas da tabela
exemplo: SHOW COLUMNS FROM nomeDaTabela;

INSERT INTO - inserir registros na tabela
exemplo: INSERT INTO nomeTabela (nome, endereço, idade) VALUES ('Bruno', 'Copacabana','25');

DROP COLUMN - exclui um campo da tabela
exemplo: ALTER TABLE NomeDaTabela
         DROP COLUMN NomeDaColuna;

MODIFY COLUMN - modifica um campo da tabela
exemplo: ALTER TABLE NomeDaTabela
         MODIFY COLUMN NomeDaColuna atributo(varchar ou int ou float);

SELECT - selecionar a coluna desejada
exemplo: SELECT coluna1, coluna2 FROM tabela;
SELECT * FROM - selecionar todas as colunas 
exemplo: SELECT * FROM nomeTabela;

DISTINCT - não retorna dados duplicados
exemplo: SELECT (DISTINCT) coluna1, coluna2 FROM nomeTabela;

WHERE - selecionar apenas os dados que atendem a uma condição especificada 
exemplo: SELECT coluna1, coluna2 FROM tabela WHERE condição = 'abc'
-- exemplo: SELECT * FROM produtos WHERE preço > '100' and preço < '500'

-- Operadores lógicos - descrição
        =           igual
        >           maior que
        <           menor que
        >=          maior que ou igual
        <=          menor que ou igual
        <>          diferente que
        AND         E
        OR          OU
