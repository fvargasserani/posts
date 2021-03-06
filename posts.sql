CREATE DATABASE posts;
\c posts
CREATE TABLE post (
    id INT, 
    nombre_de_usuario VARCHAR(100), 
    fecha_de_creacion DATE, 
    contenido VARCHAR(200), 
    descripcion VARCHAR(200), 
    PRIMARY KEY (id));

INSERT INTO post (
    id, 
    nombre_de_usuario, 
    fecha_de_creacion, contenido, 
    descripcion) 
    VALUES (
        1, 
        'Pamela', 
        '2020-11-03', 
        'Esta receta es deliciosa para tomar once con la familia durante los dias de cuarentena. Ingredientes(...) Preparacion(...)', 
        'Receta dulce');

INSERT INTO post (
    id, 
    nombre_de_usuario, 
    fecha_de_creacion, 
    contenido, 
    descripcion) 
    VALUES (
        2, 
        'Pamela', 
        '2020-11-09', 
        'Este kuchen lo aprendi de mi abuela, que nacio en Alemania y me enseno todas sus recetas. Ingredientes(...) Preparacion(...)', 
        'Receta dulce');

INSERT INTO post (
    id, 
    nombre_de_usuario, 
    fecha_de_creacion, 
    contenido, 
    descripcion) 
    VALUES (
        3, 
        'Carlos', 
        '2020-11-10', 
        'Hola amigos, les comparto esta receta que aprendi ahora en pandemia. Ingredientes(...) Preparacion(...)', 
        'Receta salada');

ALTER TABLE post ADD titulo VARCHAR(100);

UPDATE post SET titulo='Galletas de chocolate' WHERE id=1;

UPDATE post SET titulo='Kuchen de manzana' WHERE id=2;

UPDATE post SET titulo='Carne mechada' WHERE id=3;

INSERT INTO post (
    id, 
    nombre_de_usuario, 
    fecha_de_creacion, 
    contenido, 
    descripcion, 
    titulo) 
    VALUES (
        4, 
        'Pedro', 
        '2020-11-10', 
        'Buenas tardes, me comentan mas abajo si les gusta esta receta, la invente hace poco con ayuda de mi esposa. Ingredientes(...) Preparacion(...)', 
        'Receta salada', 
        'Tallarines salteados');

INSERT INTO post (
    id, nombre_de_usuario, 
    fecha_de_creacion, 
    contenido, 
    descripcion, 
    titulo) 
    VALUES (
        5, 
        'Pedro', 
        '2020-11-12', 
        'Buenos dias, les traigo una nueva receta, esta la aprendi en clases de cocina virtuales. Ingredientes(...) Preparacion(...)', 
        'Receta salada', 
        'Aji de gallina');

DELETE FROM post WHERE nombre_de_usuario='Carlos';

INSERT INTO post (
    id, 
    nombre_de_usuario, 
    fecha_de_creacion, 
    contenido, 
    descripcion, 
    titulo) 
    VALUES (
        6, 
        'Carlos', '2020-11-13', 
        'Hola, mi nombre es Carlos. Hoy traigo una receta para compartir con amigos en la casa. Ingredientes(...) Preparacion(...)', 
        'Receta dulce', 
        'Postre tres leches');

CREATE TABLE comentarios (
    id INT, 
    fecha_y_hora_de_creacion TIMESTAMP, 
    contenido VARCHAR(200), 
    FOREIGN KEY (id) REFERENCES post (id));

INSERT INTO comentarios (
    id, 
    fecha_y_hora_de_creacion, 
    contenido) 
    VALUES (
        1, 
        '2020-12-20 11:02:56', 
        'Deliciosa receta!!');

INSERT INTO comentarios (
    id, 
    fecha_y_hora_de_creacion, 
    contenido) 
    VALUES (
        1, 
        '2020-12-24 15:17:59', 
        'Seguro la preparo con mi familia. Gracias!');
        
INSERT INTO comentarios (
    id, 
    fecha_y_hora_de_creacion, 
    contenido) 
    VALUES (
        6, 
        '2020-12-12 16:20:22', 
        'Gracias a todos por compartir sus recetas');

INSERT INTO comentarios (
    id, 
    fecha_y_hora_de_creacion, 
    contenido) 
    VALUES (
        6, 
        '2020-12-14 22:34:20', 
        'Buenisima receta, me quedo rico.');

INSERT INTO comentarios (
    id, 
    fecha_y_hora_de_creacion, 
    contenido) 
    VALUES (
        6, 
        '2020-12-09 17:45:30', 
        'Excelente!');

INSERT INTO comentarios (
    id, 
    fecha_y_hora_de_creacion, 
    contenido) 
    VALUES (
        6, 
        '2020-12-31 18:30:10', 
        'Me quedo lista la cena de ano nuevo.');

INSERT INTO post (
    id, 
    nombre_de_usuario, 
    fecha_de_creacion, 
    contenido, 
    descripcion, 
    titulo) 
    VALUES (
        7, 
        'Margarita', 
        '2020-10-30', 
        'Hola, gracias por admitirme en este grupo. Quiero compartir con ustedes mi especialidad. Ingredientes(...) Preparacion(...)', 
        'Receta salada', 
        'Cazuela de ave');

INSERT INTO comentarios (
    id, 
    fecha_y_hora_de_creacion, 
    contenido) 
    VALUES (
        7, 
        '2020-12-08 11:47:30', 
        'Gracias por compartir, eres un gran chef.');

INSERT INTO comentarios (
    id, 
    fecha_y_hora_de_creacion, 
    contenido) 
    VALUES (
        7, 
        '2020-12-11 12:56:39', 
        'Super');

INSERT INTO comentarios (
    id, 
    fecha_y_hora_de_creacion, 
    contenido) 
    VALUES (
        7, 
        '2020-12-14 15:44:15', 
        'Que delicia!!');

INSERT INTO comentarios (
    id, 
    fecha_y_hora_de_creacion, 
    contenido) 
    VALUES (
        7, 
        '2020-12-20 08:50:33', 
        'Empezare el dia cocinando esta receta');

INSERT INTO comentarios (
    id, 
    fecha_y_hora_de_creacion, 
    contenido) 
    VALUES (
        7, 
        '2020-12-24 20:26:21', 
        'No me lo pierdo para esta navidad');