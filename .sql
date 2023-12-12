CREATE DATABASE Biblioteca;

USE Biblioteca;

CREATE TABLE Livros (
    CodigoLivro INT PRIMARY KEY,
    Titulo VARCHAR(255),
    AnoPublicacao YEAR
);

CREATE TABLE Autores (
    CodigoAutor INT PRIMARY KEY,
    Nome VARCHAR(255)
);

CREATE TABLE LivrosAutores (
    CodigoLivro INT,
    CodigoAutor INT,
    PRIMARY KEY (CodigoLivro, CodigoAutor),
    FOREIGN KEY (CodigoLivro) REFERENCES Livros(CodigoLivro),
    FOREIGN KEY (CodigoAutor) REFERENCES Autores(CodigoAutor)
);

CREATE TABLE Usuarios (
    NumeroUsuario INT PRIMARY KEY,
    Nome VARCHAR(255)
);

CREATE TABLE Emprestimos (
    NumeroEmprestimo INT PRIMARY KEY,
    NumeroUsuario INT,
    CodigoLivro INT,
    DataEmprestimo DATE,
    DataDevolucaoPrevista DATE,
    FOREIGN KEY (NumeroUsuario) REFERENCES Usuarios(NumeroUsuario),
    FOREIGN KEY (CodigoLivro) REFERENCES Livros(CodigoLivro)