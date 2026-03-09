USE [Curso]
GO

INSERT INTO [Categoria]([Nome])
    VALUES 
    ('Backend'),
    ('Frontend'),
    ('Mobile')

INSERT INTO [Cursos] ([Nome],[CategoriaId])
    VALUES
    ('Fundamentos de C#', 1),
    ('Fundamentos ASP.NET', 1),
    ('Fundamentos Blazor', 2),
    ('Angular', 2),
    ('Flutter', 3)


 