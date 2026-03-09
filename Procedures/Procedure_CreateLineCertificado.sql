USE [Curso]
GO

CREATE OR ALTER PROCEDURE [Procedure_CreateLineCerticado]
    @AlunoId INT,
    @CursoId INT,
    @ShowNewLine BIT
    AS
    BEGIN TRANSACTION
        INSERT INTO [Certificados]
        ([AlunoId],[CursoId],[DataConclusao])
        VALUES
        (@AlunoId, @CursoId, GETDATE());

        IF (@ShowNewLine = 1) BEGIN
            SELECT TOP 1 * FROM [Certificados] 
            WHERE [AlunoId] = @AlunoId 
            AND   [CursoId] = @CursoId
        END
    COMMIT

EXEC [Procedure_CreateLineCerticado] 1, 1, 1