require "sinatra"

#Leer contenido de un archivo. en este caso, un archivo txt
def workshop_content(name)
    File.read("workshops/#{name}.txt")

    #En caso de error, retorna nil
    rescue Errno::ENOENT
        return nil
end

#Escritura de archivos.
def save_workshop(name, description)

    #Crea un archivo y se coloca en la carpeta de workshops
    #Cuando se intenta abrir un archivo que no existe, entonces lo que hace es crearlo.
    File.open("workshops/#{name}.txt", "w") do |file|
        file.print(description)
    end
end

#Borrar un archivo txt (taller)
def delete_workshop(name)
    File.delete("workshops/#{name}.txt")
end

get '/' do 
    @files =  Dir.entries("workshops")

    #se agrega el arhiv erb y se asigna como simbolo:
    erb :home
end

#Se usa primero arriba las rutas especificas y se deja la ultima de /:name como un default.
get '/create' do
    erb :create
end

#obtener de forma dinamica el nombre de la URL
get '/:name' do
    @name = params[:name]

    #Variable de instancia para obtener el contenido de los archivos txt:
    @description = workshop_content(@name)
    erb :workshop
end

#Cargar los datos en la pagina de modificar
get '/:name/edit' do

    @name = params[:name]
    @description = workshop_content(@name)

    erb :edit  
end

#Metodo post
post '/create' do

    #Se almacena la informacion recibida del formulario en el Submit
    @name = params["name"]
    @description = params["description"]

    @text = "El taller fue creado exitosamente."
    save_workshop(@name, @description)

    erb :message

    # "<p> #{@name} y #{@description}</p>"
end

#Metodo HTTP UPDATE: Modificar un taller.
put '/:name' do

    @name = params["name"]
    @description = params["description"]

    save_workshop(@name, @description)

    redirect @name
end

#Metodo HTTP delete: Borrar un taller.
delete '/:name' do 
    @name = params[:name]
   
    delete_workshop(@name)

    @text = "El taller fue eliminado exitosamente."
    erb :message
end