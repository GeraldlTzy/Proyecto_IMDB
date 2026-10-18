# Proyecto de Base de Datos de Películas

Primer proyecto del curso **Bases de Datos 1**. Consiste en diseñar e implementar una base de datos relacional de películas en **Oracle Database** y una aplicación de escritorio en **Java** que se conecta a la base de datos mediante JDBC.

## Autores

| Nombre | GitHub |
| ------ | ------ |
| Jose David Serrano | [@Jose-Serrano1](https://github.com/Jose-Serrano1) |
| Gerald Calderón | [@GeraldlTzy](https://github.com/GeraldlTzy) |

**Curso:** Bases de Datos 1

**Institución:** Instituto Tecnológico de Costa Rica

**Periodo:** Semestre 1 / 2024

## Tecnologías

- **Java 21**: aplicación y conexión a Oracle mediante JDBC.
- **Oracle Database**: motor de base de datos.
- **SQL / PL-SQL**: definición del esquema, paquetes, triggers y datos.
- **Apache Maven**: gestión de dependencias y construcción del proyecto Java.
- **Apache NetBeans**: IDE con el que se desarrolló el proyecto.
- **Git y GitHub**: control de versiones.

El driver JDBC de Oracle (`ojdbc11`) y las demás dependencias están declarados en `IMDB/pom.xml`.

## Estructura del repositorio

```text
Proyecto_IMDB/
├── Conceptual_Model/          # Material del modelo conceptual
├── Scripts/                   # Scripts SQL y datos de ejemplo
├── IMDB.zip                   # Copia comprimida del proyecto Java
├── Proyecto IMDB v1.0.pdf     # Enunciado / especificación del proyecto
├── LICENSE
└── README.md
```

## Modelo lógico
<img width="1260" height="1240" alt="ModeloLogico" src="https://github.com/user-attachments/assets/9cdbbbf2-718d-44b9-aff3-b6f94a166c8b" />

## Modelo conceptual
<img width="2020" height="773" alt="ModeloConceptual" src="https://github.com/user-attachments/assets/ae8dfc83-d1bb-4cb9-a0f1-eeba53ca381c" />

## Requisitos previos

- Oracle Database instalado y en ejecución.
- JDK 21 o superior.
- Apache NetBeans con soporte para proyectos Maven.
- Un cliente SQL, por ejemplo Oracle SQL Developer o SQL*Plus.

## Instalación y ejecución

### 1. Obtener el proyecto

Clona el repositorio:

```bash
git clone https://github.com/GeraldlTzy/Proyecto_IMDB.git
cd Proyecto_IMDB
```

### 2. Crear el esquema en Oracle

Ejecuta los scripts SQL en este orden:

1. **Como `SYSTEM` o `SYS`:** ejecuta `Scripts/Tablespace.sql`. Crea los tablespaces y el usuario `su`, y le concede permisos. Antes de ejecutarlo, ajusta las rutas de los archivos `.dbf` a tu instalación de Oracle.
2. **Conectado como `su`:** ejecuta `Scripts/CreateTables.sql`.
3. Ejecuta `Scripts/sequences.sql`.
4. Ejecuta `Scripts/Functions.sql`, que define los paquetes PL/SQL utilizados por la aplicación y por algunos scripts de carga.
5. Ejecuta `Scripts/Triggers.sql`.

Para cargar los datos básicos de ejemplo, ejecuta:

1. `Scripts/Inserts/Countrys.sql`
2. `Scripts/Inserts/insertNationalities.sql`
3. `Scripts/Inserts/InsertBasicInformation.sql`

`InsertBasicInformation.sql` utiliza los paquetes definidos en `Functions.sql` e inserta información básica, administradores y usuarios de ejemplo.

**Notas sobre los scripts:**

- No ejecutes `Scripts/AuditField.sql` después de `CreateTables.sql`: las tablas ya contienen esos campos y el script podría fallar al intentar agregarlos nuevamente.
- No ejecutes `Scripts/drops.sql` durante la instalación normal; elimina objetos del esquema.
- `Scripts/Inserts/Users.sql`, `Scripts/Inserts/ProductAndPerson.sql` y `Scripts/Inserts/Products.sql` contienen datos de ejemplo adicionales. Revisa sus IDs, dependencias y compatibilidad antes de ejecutarlos o combinarlos con las otras cargas.
- `Scripts/Test.sql` contiene operaciones de prueba y no forma parte de la instalación normal.
- `Scripts/Queries.sql` reúne consultas de ejemplo; ejecútalas individualmente y revisa su sintaxis y nombres de columnas según el esquema actual.

### 3. Configurar la conexión JDBC

La configuración está en `IMDB/src/main/java/Connect/ConnectDB.java`. La conexión principal del código usa:

```text
URL:      jdbc:oracle:thin:@localhost:1521:BD1GERALD
Usuario:  su
Clave:    su
```

La URL está escrita en formato `host:puerto:SID`. Asegúrate de que el SID/servicio de tu instalación coincida. El script `Tablespace.sql` crea el usuario `su` con la clave `su`; cambia las credenciales si tu entorno utiliza otras.

**Importante:** el método `insertAdmin` de `ConnectDB.java` contiene otra URL, `jdbc:oracle:thin:@localhost:1521:Basedatos1`. Si utilizas ese método, comprueba y ajusta la conexión para que apunte a la base de datos correcta.

### 4. Abrir y ejecutar en NetBeans

1. Abre NetBeans y selecciona **File > Open Project**.
2. Selecciona la carpeta `IMDB/` (la que contiene `pom.xml`).
3. Espera a que Maven resuelva las dependencias del proyecto.
4. Haz clic derecho en el proyecto y selecciona **Run**. La acción de ejecución configurada para NetBeans inicia `Interface.MainWindow`.

También puedes compilar el proyecto desde una terminal con Maven, dentro de `IMDB/`:

```bash
mvn clean package
```

La aplicación requiere que Oracle esté disponible y que la conexión JDBC esté configurada correctamente.

## Licencia

Este proyecto está bajo la licencia [GNU General Public License v3.0](LICENSE).
