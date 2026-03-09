USE [Curso]
GO

CREATE OR ALTER PROCEDURE [Procedure_CreateLineAluno]
    @Nome NVARCHAR(100),
    @Active BIT,
    @Email NVARCHAR(100),
    @Nascimento DATE,
    @ShowNewLine BIT
    AS
    BEGIN TRANSACTION
        INSERT INTO [Alunos]
        ([Nome],[Active],[Email],[Nascimento])
        VALUES
        (@Nome, @Active, @Email, @Nascimento);

        DECLARE @Id INT = SCOPE_IDENTITY();

        IF (@ShowNewLine = 1) BEGIN
            SELECT TOP 1 * FROM [Alunos] WHERE [Id] = @Id
        END
    COMMIT
