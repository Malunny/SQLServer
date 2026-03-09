USE [Curso]
GO

CREATE OR ALTER PROCEDURE [Procedure_DeleteLineCursos]
    @Id INT
    AS
    BEGIN TRANSACTION
        DELETE [Cursos]
        WHERE [Id] = @Id
    COMMIT