USE [Curso]
GO

CREATE OR ALTER PROCEDURE [Procedure_CreateRelationAlunoCurso]
    @AlunoId INT,
    @CursoId INT,
    @ShowNewLine INT
    AS
    BEGIN TRANSACTION
        INSERT INTO [AlunoCurso]
        ([AlunoId],[CursoId],[PorcentagemConcluido])
        VALUES
        (@AlunoId,@CursoId,0);

        IF (@ShowNewLine = 1) BEGIN
            SELECT TOP 1 * FROM [AlunoCurso] 
            WHERE [AlunoId] = @AlunoId 
            AND [CursoId] = @CursoId

            SELECT 
                [Alunos].[Nome] AS [Aluno],
                [Cursos].[Nome] AS [Curso_Sendo_Estudado]
            FROM
                [AlunoCurso]
            INNER JOIN
                [Alunos] ON [AlunoId] = [Alunos].[Id]
            INNER JOIN
                [Cursos] ON [CursoId] = [Cursos].[Id]
         END
    COMMIT