CREATE TABLE restaurante (
                             id                  BIGINT       NOT NULL AUTO_INCREMENT,
                             slug                VARCHAR(80)  NOT NULL,
                             nombre              VARCHAR(150) NOT NULL,
                             visitas_necesarias  INT          NOT NULL DEFAULT 10,
                             creado_en           DATETIME(6)  NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
                             PRIMARY KEY (id),
                             CONSTRAINT uk_restaurante_slug UNIQUE (slug),
                             CONSTRAINT ck_restaurante_visitas CHECK (visitas_necesarias > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;