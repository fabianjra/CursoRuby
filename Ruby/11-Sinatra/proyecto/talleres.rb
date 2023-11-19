require "sinatra"

get '/' do 
    @files =  Dir.entries("workshops")

    @valor = 2

    #se agrega el arhiv erb y se asigna como simbolo:
    erb :home
end