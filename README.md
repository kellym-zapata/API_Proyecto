API REST - Proyecto Final Evidencia GA7-220501096-AA5-EV04
Formación: Tecnólogo en Análisis y Desarrollo de Software - SENA  
Evidencia: GA7-220501096-AA5-EV04 - Desarrollo Backend y Pruebas

Descripción

Este proyecto consiste en la implementación de una API REST con Node.js y Express para la gestión de Usuarios, Clientes y Productos, cumpliendo con los requisitos de la guía de aprendizaje No. 7 del SENA.

La API permite realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) con conexión a base de datos MySQL, y ha sido probada con Postman.

Tecnologías Utilizadas

- Node.js
- Express
- MySQL
- Postman
- Git / GitHub
- JavaScript
- body-parser / cors / dotenv

Instalación

1. Clona este repositorio:
git clone https://github.com/kellym-zapata/API_Proyecto/

2. Instala las dependencias:
npm install

3. Crea un archivo .env con la configuración de tu base de datos
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=tu_contraseña
DB_NAME=be_leon_db
PORT=3000

4. Inicia el servidor
node index.js

6. Endpoins de la API

Productos
| Método | URL                  | Descripción                 |
| ------ | -------------------- | --------------------------- |
| GET    | `/api/productos`     | Obtener todos los productos |
| GET    | `/api/productos/:id` | Obtener producto por ID     |
| POST   | `/api/productos`     | Crear nuevo producto        |
| PUT    | `/api/productos/:id` | Actualizar producto         |
| DELETE | `/api/productos/:id` | Eliminar producto           |

Usuarios
| Método | URL                 | Descripción                |
| ------ | ------------------- | -------------------------- |
| GET    | `/api/usuarios`     | Obtener todos los usuarios |
| GET    | `/api/usuarios/:id` | Obtener usuario por ID     |
| POST   | `/api/usuarios`     | Crear nuevo usuario        |
| PUT    | `/api/usuarios/:id` | Actualizar usuario         |
| DELETE | `/api/usuarios/:id` | Eliminar usuario           |

Clientes
| Método | URL                 | Descripción                |
| ------ | ------------------- | -------------------------- |
| GET    | `/api/clientes`     | Obtener todos los clientes |
| GET    | `/api/clientes/:id` | Obtener cliente por ID     |
| POST   | `/api/clientes`     | Crear nuevo cliente        |
| PUT    | `/api/clientes/:id` | Actualizar cliente         |
| DELETE | `/api/clientes/:id` | Eliminar cliente           |

Pruebas
Las pruebas se encuentran en el archivo: API_Proyecto.postman_collection.json
Puedes importarlo directamente en Postman para probar todos los endpoints.

Evidencia de Pruebas
Capturas de pantalla de las pruebas exitosas (en la carpeta evidencias)
Video mostrando el funcionamiento de la API
Documentación del ciclo de desarrollo (en PDF)

Control de Versiones
Este proyecto utiliza Git para el control de versiones. El repositorio está disponible en: https://github.com/kellym-zapata/API_Proyecto/

Estado del Proyecto:
Finalizado y probado. Listo para entrega.

Contacto:
Si tienes preguntas o sugerencias, puedes escribirme a: kellyzzapata@gmail.com

Licencia
Este proyecto es de uso académico para el SENA. Todos los derechos reservados.
