# CursoRuby

URL del curso: https://www.udemy.com/course/curso-ruby-rails/

## Notas:

- Los archivos ruby son llamados con la extension .rb
- Los archivos .rb se ejecutan desde la terminal con: ruby <nombre del archivo con al extension>

## SINATRA:
- En sinatra todo se lee de arriba hacia abajo.
- Los archivos .erb sirven para hacer HTML embebido con sinatra. Se insertan etiquetas HTML, junto a variables de instancia con las etiquetas <%= valor %>
- layout.erb = Se utiliza para usar globalmente ese archivo HTML como template para todas las paginas.

## Ruby on Rails:
- Es un framework de desarollo web hecho en Ruby.
- URL oficinal: http://rubyonrails.org
- 2 Principios: DRY (Dont repet yourself). || Convention over Configuration (como hacer ciertas cosas).
- Puma es el server encargado de colocar a Ruby on rails en servidor.

### Patron MVC:
- Significado: Movel-View-Controller
    * Model: Estructura de la BD, normalmente para mapear talbas de una BD.
    * View: Muestra informacion al usuario (HTML). Se utilizan los archivos de Ruby embebido (.erb).
    * Controller: Responde a las peticiciones de los usuarios, por clicks o cualquier tipo de evento y se envian a los modelos. Por ultimo, desplega la informacion actualizada a la vista. Es un intermediario entre la vista y el modelo.