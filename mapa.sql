CREATE TABLE IF NOT EXISTS usuarios(
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nombre_usuario` VARCHAR(20),
    `numero_contacto` VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS coordenadas(
    `longitud` VARCHAR(20),
    `latitud` VARCHAR(20),
    `id_usuario` INTEGER NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

ALTER TABLE usuarios ADD INDEX (id);