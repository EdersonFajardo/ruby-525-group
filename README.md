# Prueba de Backend Grupo 525

Prueba backend para el grupo 525, con CRUD, validaciones de modelo, presenter y lisado de data en JSON.

## Requisitos

- Ruby (versión 3.0.0p0 (2020-12-25 revision 95aff21468))
- Ruby on Rails (versión 7.0.7.2)

## Configuración

1. Clona este repositorio en tu máquina local.
2. Ejecuta `bundle install` para instalar las gemas necesarias.
3. Ejecuta `rails db:migrate` para crear la base de datos y ejecutar las migraciones.
4. Otros pasos de configuración si es necesario.

## Uso

### CRUD de Usuarios

- **Crear un Usuario:** Accede a `/users/new` para crear un nuevo usuario.
- **Editar un Usuario:** Accede a `/users/:id/edit` para editar un usuario existente.
- **Ver un Usuario:** Accede a `/users/:id` para ver los detalles de un usuario.
- **Eliminar un Usuario:** Accede a `/users/:id` y selecciona "Eliminar" para eliminar un usuario.

### Listar Usuarios en Formato JSON

- **Listar Todos los Usuarios en Formato JSON:** Accede a `/users/index_json` para obtener una lista de todos los usuarios en formato JSON.



