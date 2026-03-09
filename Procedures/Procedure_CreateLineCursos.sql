USE [Curso]
GO

CREATE OR ALTER PROCEDURE [Procedure_CreateLineCursos]
    @Nome NVARCHAR(100),
    @Active BIT,
    @CategoriaId INT,
    @ShowNewLine BIT
    AS
    BEGIN TRANSACTION
        INSERT INTO [Cursos]
        ([Nome],[Active],[CategoriaId])
        VALUES
        (@Nome, @Active, @CategoriaId);

        -- Isso aqui adquire o id da linha criada no código
        DECLARE @Id INT = SCOPE_IDENTITY();

        IF (@ShowNewLine = 1) BEGIN
            SELECT TOP 1 * FROM [Cursos] WHERE [Id] = @Id
        END

    COMMIT