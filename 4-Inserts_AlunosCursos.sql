USE [Curso]
GO

-- Outra população feita com IA

INSERT INTO [AlunoCurso] ([AlunoId], [CursoId], [PorcentagemConcluido])
VALUES
    -- Alunos no curso de 'Fundamentos de C#' (ID 1)
    (1, 1, 100), (2, 1, 50), (3, 1, 10), (4, 1, 100), (5, 1, 85),
    (6, 1, 100), (7, 1, 0), (8, 1, 100), (9, 1, 45), (10, 1, 100),
    -- Alunos no curso de 'Fundamentos ASP.NET' (ID 2)
    (1, 2, 20), (4, 2, 100), (6, 2, 100), (11, 2, 100), (12, 2, 30),
    (13, 2, 100), (14, 2, 90), (15, 2, 100), (16, 2, 15), (17, 2, 100),
    -- Alunos no curso de 'Fundamentos Blazor' (ID 3)
    (18, 3, 100), (19, 3, 100), (20, 3, 50), (21, 3, 100), (22, 3, 10),
    (23, 3, 100), (24, 3, 100), (25, 3, 75), (26, 3, 100), (27, 3, 0),
    -- Alunos no curso de 'Angular' (ID 4)
    (28, 4, 100), (29, 4, 100), (30, 4, 100), (31, 4, 25), (32, 4, 100),
    (33, 4, 100), (34, 4, 80), (35, 4, 100), (36, 4, 100), (37, 4, 40),
    -- Alunos no curso de 'Flutter' (ID 5)
    (38, 5, 100), (39, 5, 100), (40, 5, 100), (41, 5, 100), (42, 5, 10),
    (43, 5, 100), (44, 5, 100), (45, 5, 100), (46, 5, 100), (47, 5, 95),
    -- Alguns alunos aleatórios em múltiplos cursos
    (50, 1, 100), (50, 2, 100), (50, 3, 10),
    (60, 4, 100), (60, 5, 100),
    (70, 1, 100), (75, 2, 100), (80, 3, 100), (85, 4, 100), (90, 5, 100);

SELECT * FROM AlunoCurso