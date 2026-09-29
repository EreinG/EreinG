CREATE TABLE premio (
                        id              BIGINT       NOT NULL AUTO_INCREMENT,
                        restaurante_id  BIGINT       NOT NULL,
                        nombre          VARCHAR(150) NOT NULL,
                        activo          BOOLEAN      NOT NULL DEFAULT TRUE,
                        PRIMARY KEY (id),
                        CONSTRAINT fk_premio_restaurante
                            FOREIGN KEY (restaurante_id) REFERENCES restaurante (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;