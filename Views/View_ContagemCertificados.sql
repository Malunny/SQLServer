USE [Curso]
GO

CREATE OR ALTER VIEW [View_Contagem_Certificados] AS
    SELECT 
    [Categorias].[Nome] AS [Categoria_Nome],
    [Cursos].[Nome] AS [Curso_Curso],
    COUNT([Certificados].[CursoId]) AS [Qtd_Certificados]
    FROM
    [Certificados]
    INNER JOIN [Cursos] ON [Certificados].[CursoId] = [Cursos].[Id]
    INNER JOIN [Categorias] ON [Cursos].[CategoriaId] = [Categorias].[Id]
    GROUP BY [Categorias].[Nome], [Cursos].[Nome]
