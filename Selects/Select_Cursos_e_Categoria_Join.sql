USE [Curso]
GO

SELECT [Cursos].[Id] AS [Curso_ID],
       [Cursos].[Nome] AS [Nome_Curso],
       [Categorias].[Nome] AS [Nome_Categoria]
FROM Categoria
       JOIN [Cursos] ON [Cursos].[CategoriaId] = [Categorias].[Id]