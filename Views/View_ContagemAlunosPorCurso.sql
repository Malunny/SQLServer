USE [Curso]
GO

CREATE OR ALTER VIEW [View_Contagem_AlunosPorCurso] AS
    SELECT 
    [Categorias].[Nome] AS [Categoria_Nome],
    [Cursos].[Nome] AS [Curso_Curso],
    COUNT([AlunoCurso].[CursoId]) AS [Qtd_Alunos]
    FROM
    [AlunoCurso]
    INNER JOIN
    [Cursos] ON [Cursos].[Id] = [AlunoCurso].[CursoId]
    INNER JOIN
    [Categorias] ON [Categorias].[Id] = [Cursos].[CategoriaId]
    GROUP BY
    [Categorias].[Nome], [Cursos].[Nome];
