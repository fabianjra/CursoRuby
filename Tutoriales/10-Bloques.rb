class Bloques

    ###########################################################
    def bloquesBasico

        #Si el bloque tiene mas de una linea de codigo, usar do-end.
        4.times do 
            puts "Esto es un bloque de codigo, ejecutado N veces. con do"
        end

        #Si el bloque tiene una sola linea de codigo, usar llaves.
        4.times {
            puts "Esto es un bloque de codigo, ejecutado N veces. con llaves"
        }

        #Usar bloque de codigos con parametros
        4.times do |time|
            puts "Bloque en N veces. iteracion numero: #{time}"
        end

        #Usar bloque de codigos con parametros, utilizando llaves:
        4.times { |time|
            puts "Bloque en N veces, con llaves. iteracion numero: #{time}"
        }

    end


    ###########################################################
    #PASAR UN BLOQUE A UNA FUNCION:

    #Si se utiliza yield, pero no se envia ningun bloque, sera ERROR.
    #Se utiliza &block, para indicar que esta esperando un bloque. (opcional)
    def suma(num1, num2, &bloque)

        #yield #Salta al bloque de codigo que se le paso al ser llamado.
        puts "Hola desde una funcion"

        resultado = num1 + num2 #Se genera el valor a enviar

        #Se llama a yield, junto con el parametro que recibe en el llamado del metodo.
        bloque.call resultado #Salta al bloque de codigo que se le paso al ser llamado.

        yield resultado #forma simple.
    end


    ###########################################################
    #[PASAR UN BLOQUE Y VALIDARLO:
    def sumaValidada(num1, num2, &bloque)

        resultado = num1 + num2

        #Valida que se haya enviado un bloque
        if block_given?
            yield resultado
        else
            puts "No se envio un bloque"
        end
        
    end
end


###########################################################
#TEST:

bloques = Bloques.new
# bloques.bloquesBasico

#Se puede enviar argumentos como bloques:
bloques.suma(5, 6) do |x|
    puts "El resultado es: #{x}"
end

#Llamar a una funcion que espera un bloque, pero no se envia.
bloques.sumaValidada(2, 2)