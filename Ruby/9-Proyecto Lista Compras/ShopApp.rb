require "./Item.rb"
require "./Lista.rb"

class ShopApp
    attr_accessor :list

    def initialize()
      @list = Lista.new
    end

    def run
        puts "Bienvenido a la aplicacion"

        loop do 
            puts ""
            puts "1 - Agregar articulo"
            puts "2 - Borrar articulo"
            puts "3 - Mostrar todos los articulos"
            puts "4 - Marcar un articulo"
            puts "5 - Borrar todos los articulos"
            puts "6 - Salir de la aplicacion"

            puts ""
            print "Digite una de las opciones:"
            input = gets.chomp #chomp remueve el salto de linea.

            #Uso de Switch case
            case input
            when '1'
                puts ""
                print "Digite el nombre del articulo:"
                articulo = gets.chomp

                @list.add_item(articulo)
                puts "El articulo fue agregado."

                puts "Lista actual:"
                @list.show_all

            when '2'
                puts ""
                print "Digite el numero del articulo que desea remover: "
                index = gets.chomp

                #Convierte string a integer
                @list.remove_item(index.to_i)

                puts "Lista actual:"
                @list.show_all

            when '3'
                puts ""
                @list.show_all

            when '4'
                puts ""
                print "Digite el numero del articulo que desea marcar: "
                index = gets.chomp

                @list.check_item(index.to_i)

                puts "Lista actual:"
                @list.show_all

            when '5'
                puts ""
                @list.remove_all
                puts "Todos los articulos fueron borrados"

            when '6'
                puts "Gracias. Adios"
                break 

            else
                puts "Operacion no reconocida. Digite una opcion nuevamente"

            end
        end
    end
end

ShopApp.new.run