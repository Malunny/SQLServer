CREATE DATABASE[Curso]

USE [Curso]

CREATE TABLE [Alunos]
(
    [Id] INT NOT NULL IDENTITY(1,1),
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] VARCHAR(100) NOT NULL,
    [Nascimento] DATE,
    [ACTIVE] BIT NOT NULL DEFAULT 0,

    CONSTRAINT [PK_Alunos] PRIMARY KEY([Id]),
    CONSTRAINT [UQ_Email_Alunos] UNIQUE([Email])
)
GO

CREATE TABLE [Categorias]
(
    [Id] INT NOT NULL IDENTITY(1,1),
    [Nome] NVARCHAR(100) NOT NULL,

    CONSTRAINT [PK_Categorias] PRIMARY KEY([Id])
)
GO

CREATE TABLE [Cursos]
(
    [Id] INT NOT NULL IDENTITY(1,1),
    [Nome] NVARCHAR(100) NOT NULL,
    [CategoriaId] INT NOT NULL,
    [Active] BIT NOT NULL DEFAULT 0

    CONSTRAINT [PK_Cursos] PRIMARY KEY([Id]),
    CONSTRAINT [UQ_Nome_Cursos] UNIQUE([Nome]),
    CONSTRAINT [FK_Categoria_Id] FOREIGN KEY([CategoriaId]) 
    REFERENCES [Categorias](Id)
)
GO

CREATE TABLE [AlunoCurso]
(
    [AlunoId] INT NOT NULL,
    [CursoId] INT NOT NULL,
    [PorcentagemConcluido] INT NOT NULL DEFAULT 0,

    CONSTRAINT [PK_AlunoCurso] PRIMARY KEY([AlunoId],[CursoId])
)
GO

CREATE TABLE [Certificados]
(
    [AlunoId] INT NOT NULL,
    [CursoId] INT NOT NULL,
    [DataConclusao] DATE NOT NULL

    CONSTRAINT [PK_Certificados] PRIMARY KEY([AlunoId],[CursoId])
)
GO

ALTER TABLE [Cursos]
    ADD CategoriaID INT NOT NULL;

ALTER TABLE [Cursos]
    ADD CONSTRAINT [FK_Categoria_Id] FOREIGN KEY([CategoriaId]) 
    REFERENCES [Categorias](Id);