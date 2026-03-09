USE [Curso]
GO

CREATE OR ALTER VIEW view_ContagemCursosPorCategoria AS
    SELECT 
        [Categoria].[Nome], COUNT([Cursos].[CategoriaId]) AS [Qtd_Cursos]
    FROM 
        [Categoria]
    LEFT JOIN
        [Cursos] ON [Cursos].[CategoriaId] = [Categoria].[Id]
    GROUP BY
        [Categoria].[Nome]