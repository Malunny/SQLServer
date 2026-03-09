USE [Curso]
GO

CREATE OR ALTER PROCEDURE [Procedure_VisualizeUpdateNameCurso]
    @newName NVARCHAR(100),
    @CursoId INT
    AS
    BEGIN TRANSACTION
        UPDATE [Cursos]
        SET [Nome] = @newName
        WHERE [Cursos].[Id] = @CursoId

        SELECT [Cursos].[Id], [Cursos].[Nome]
        FROM [Cursos]
        WHERE [Id] = @CursoId
    ROLLBACK

