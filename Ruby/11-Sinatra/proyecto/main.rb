require "sinatra"

#Leer contenido de un archivo. en este caso, un archivo txt
def workshop_content(name)
    File.read("workshops/#{name}.txt")

    #En caso de error, retorna nil
    rescue Errno::ENOENT
        return nil
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