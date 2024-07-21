# Diagrama de Entidad-Relación (DER)
![alt text](./der/community_der.png)

# Estructura de la Base de Datos

## Tabla "work_invitation"

### Estructura
La tabla "work_invitation" tiene la siguiente estructura  

| Llave Compuesta                                                                           |
|-------------------------------------------------------------------------------------------|
| `PRIMARY KEY ("client_fk", "professional_fk")`                                            |

| Columna           | Tipo                | Restricciones                                |
|-------------------|---------------------|----------------------------------------------|
| `client_fk`       | **FOREIGN KEY**     | NOT NULL                                     |
| `professional_fk` | **FOREIGN KEY**     | NOT NULL                                     |
| `sender`          | **user_types**      | NOT NULL                                     |
| `accepted_at`     | **DATE**            |                                              |
| `created_at`      | **TIMESTAMP**       | NOT NULL DEFAULT CURRENT_TIMESTAMP           |
| `updated_at`      | **TIMESTAMP**       | NOT NULL DEFAULT CURRENT_TIMESTAMP           |

### Descripción
[COMPLETAR_DESCRIPCION]

---

## Tabla "client_has_professional"

### Estructura
La tabla "client_has_professional" tiene la siguiente estructura  

| Llave Compuesta                                                                                               |
|---------------------------------------------------------------------------------------------------------------|
| `PRIMARY KEY ("client_fk", "professional_fk")`                                                                |
| `FOREIGN KEY ("client_fk", "professional_fk") REFERENCES "work_invitation"("client_fk", "professional_fk")`   | 

| Columna           | Tipo                | Restricciones                                |
|-------------------|---------------------|----------------------------------------------|
| `client_fk`       | **FOREIGN KEY**     | NOT NULL                                     |
| `professional_fk` | **FOREIGN KEY**     | NOT NULL                                     |
| `deleted_at`      | **TIMESTAMP**       |                                              |
| `created_at`      | **TIMESTAMP**       | NOT NULL DEFAULT CURRENT_TIMESTAMP           |
| `updated_at`      | **TIMESTAMP**       | NOT NULL DEFAULT CURRENT_TIMESTAMP           |

### Descripción
[COMPLETAR_DESCRIPCION]