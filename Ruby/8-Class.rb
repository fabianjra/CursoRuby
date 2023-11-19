###########################################################
#INSTANCIAS DE CLASES:

#Primitivos:
arrayVG = Array.new
cadena = String.new("Instancia de la clase stirng")

#Clases propias (CamelCase):
class Auto

    #Inicializador
    def initialize()
      puts "Se ejecuto el inicializador"
    end
end


###########################################################
#VARIABLES DE INSTANCIA:

class Perro 

    #Atributos
    def raza
        "Pastor Aleman" 
    end

    def color
        "Cafe" 
    end

    def edad
        "5" 
    end
end

perro = Perro.new

puts "Clase Perro = Raza: #{perro.raza}, Color:  #{perro.color}, Edad: #{perro.edad}"


###########################################################
#CLASE CON INICIALIZADOR:

class Persona 

    def initialize(nombre, edad, sexo)
      @nombre = nombre
      @edad = edad
      @sexo = sexo
    end

    #Este metodo devuelve la ultima linea de codigo, por eso no importa si tiene edad al inicio.
    def nombre
        @edad
        @nombre
    end

    def edad
        @edad
    end

    def sexo
        @sexo
    end

    #SET:
    def setEdad=(nuevaEdad)
        @edad = nuevaEdad
    end

end

persona1 = Persona.new("Fabian", "28", "masculino")

puts "Clase Persona = nombre: #{persona1.nombre}, edad:  #{persona1.edad}, sexo: #{persona1.sexo}"
persona1.setEdad = 33
puts "Clase Persona (actualizado) = nombre: #{persona1.nombre}, edad:  #{persona1.edad}, sexo: #{persona1.sexo}"


###########################################################
#CLASE CON READER, WRITTER (GET Y SET) - METODOS:

class Estudiante

    #GETTER:
    #attr_reader :nombre, :color, :edad

    #SETTER:
    # attr_writer :nombre, :color, :edad

    #GETTER Y SETTER:
    attr_accessor :nombre, :edad, :sexo

    def initialize(nombre, edad, sexo)
        @nombre = nombre
        @edad = edad
        @sexo = sexo
    end

    def habla
        puts "hablando..."
    end

    def descripcion(genero)
        puts "Soy de edad: #{@edad} y soy de genero: #{@genero}"
    end

end

estudiante1 = Estudiante.new("Josue", "24", "masculino")

puts "Clase Estudiante = nombre: #{estudiante1.nombre}, edad:  #{estudiante1.edad}, sexo: #{estudiante1.sexo}"

estudiante1.nombre = "Fabian Rodriguez"
estudiante1.edad = "35"
estudiante1.sexo = "M"

puts "Clase Estudiante (actualizado) = nombre: #{estudiante1.nombre}, edad:  #{estudiante1.edad}, sexo: #{estudiante1.sexo}"

#Llamado de un metodo
estudiante1.habla
estudiante1.descripcion("hombre")

#to_s = ToString
puts "Tengo : #{estudiante1.edad.to_s} años"

#Obtener todos los metodos disponibles de una clase para saber cuales son:
puts "Metodos disponibles: #{estudiante1.methods}" #Aparecen todos los metodos. Incluso los que se heredan de la clase objeto.

#Saber si un metodo existe:
puts "Existe el metodo habla?: #{estudiante1.respond_to?("habla")}"

#el ID unico del objeto:
puts "ID del objeto: #{estudiante1.object_id}"