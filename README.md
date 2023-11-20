# CursoRuby

URL del curso: https://www.udemy.com/course/curso-ruby-rails/

## Notas:

- irb = Comando para el interactive ruby.
- Los archivos ruby son llamados con la extension .rb
- Los archivos .rb se ejecutan desde la terminal con: ruby <nombre del archivo con al extension>

## SINATRA:
- En sinatra todo se lee de arriba hacia abajo.
- Los archivos .erb sirven para hacer HTML embebido con sinatra. Se insertan etiquetas HTML, junto a variables de instancia con las etiquetas <%= valor %>
- layout.erb = Se utiliza para usar globalmente ese archivo HTML como template para todas las paginas.

### Patron MVC:
- Significado: Movel-View-Controller
    * Model: Estructura de la BD, normalmente para mapear talbas de una BD.
    * View: Muestra informacion al usuario (HTML). Se utilizan los archivos de Ruby embebido (.erb).
    * Controller: Responde a las peticiciones de los usuarios, por clicks o cualquier tipo de evento y se envian a los modelos. Por ultimo, desplega la informacion actualizada a la vista. Es un intermediario entre la vista y el modelo.

## Ruby on Rails:
- Es un framework de desarollo web hecho en Ruby.
- URL oficinal: http://rubyonrails.org
- 2 Principios: DRY (Dont repet yourself). || Convention over Configuration (como hacer ciertas cosas).
- Puma es el server encargado de colocar a Ruby on rails en servidor.
- En la carpeta db/migrate = Se encontraran las migraciones realizadas, o sea, las tablas creadas.
- Recurso: En Rails un recurso es una operacion de CRUD.
- Scaffolds: comandos que permiten crear recursos CRUD.
- Ejemplo Scaffold -> COMANDO: ruby bin/rails generate scaffold Courses

- Acceder a IRB mediante el comando: "rails console" en el directorio raiz:

    - Obtener registros:
        * Course.all = se ejecuta el comando para obtener todos los cursos. Esto es un ejemplo
        * Course.first = Obtiene el primer record de la tabla.
        * Course.last = Obtiene el ultimo registro.
        * Course.find(1) = Obtiene un registro basado en un ID.
        * Course.where(id: 2) = Filtra por parametros.
        * Course.where("id = 2")
        * Course.exists? 3 = Si existe un curso que ID sea 3. (retorna true o false)
        * Documentacion de los filtros: https://api.rubyonrails.org/
    
    - Crear registros:
        * course1 = Course.new = Instancia nueva vacia
        * course1.title = "iOS desde cero"
        * course1.save = Guarda el curso que se creo como instancia.
    
    - Actualizar registros:
        * c = Course.find(1) = Se obtiene una variable con la instancia obtenida, la cual se va a modificar.
        * c.title = "Curse de Ruby desde cero"
        * c.save = Cada vez que se realice un cambio, se guarda con save.

    - Borrar registros:
        * c = Course.find(1) = Se obtiene una variable con la instancia obtenida, la cual se va a eliminar.
        * c.destroy = Elimina el registro

- Funciones fuera de IRB:
    - Crear una migracion:
        * ruby bin/rails generate migration addDescriptionToCourses description:text = Agrega una nueva columna a la tabla. Esto no genera los cambios automaticamente
        * ruby bin/rails db:migrate = Ejecuta la migracion

- Vistas:
    * Partial: Son vistas parciales que se utilizan dentro de otras vistas. Se establecen con un guin bajo en su inicio. EJEMPLO: _form.html.erb