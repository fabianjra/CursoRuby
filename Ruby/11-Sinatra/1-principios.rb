require "sinatra"

#Ejecuta el siguiente bloque en el root.
get '/' do

    #Libreria etandar de ruby, para obtener una lista de archivos:
    @files =  Dir.entries("workshops")

    @files.each do |file|
        "<a>#{file}</a>"
    end
end 

#Se establece una ruta: (/imagenes)
get '/imagenes' do
    "<h1>Imagenes del sitio web</h1>

    <p>Inserte aqui imagen</p>"
end 