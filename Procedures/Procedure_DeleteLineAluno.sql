USE [Curso]
GO

CREATE OR ALTER PROCEDURE [Procedure_DeleteLineAluno]
    @Id INT
    AS
    BEGIN TRANSACTION
        DELETE [Alunos]
        WHERE [Id] = @Id
    COMMIT