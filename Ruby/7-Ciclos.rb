###########################################################
#CICLOS: 

#LOOP:

#Bloques: Todo lo que está dentro del scope.
# loop {
#     puts "esto es un ciclo con bloque"
# }

def CicloDo
    loop do 
        print "Quieres seguir jugando? s/n: "
    
        respuesta = gets.chomp
    
        if respuesta != "s"
            break #Finaliza el ciclo.
        else 
            puts "Seguimos jugando"
        end
    end
end

#CicloDo


###########################################################
#WHILE: 

def cicloWhile
    
    vidas = 3

    puts "Comienza el juego."

    while vidas > 0 
        puts "Vidas restantes: #{vidas}"

        vidas -= 1
    end

    puts "Se acabo el juego."
end

#cicloWhile


###########################################################
#UNTIL: 

def cicloUntil
    respuesta = ""

    #Hasta que el valor de respueta sea n, entonces el loop se seguira repitiendo.
    until respuesta == "n"
        puts "Estoy jugando"

        print "Moriste. Quieres seguir jugando? s/n: "

        respuesta = gets.chomp
    end
end

cicloUntil

###########################################################
#EACH:

#Utilizado para recorrer Hash, arreglos o cadenas.
def cicloEach
    
    numArray = [1, 2, 3, 4, 5]

    #Numeros:
    numArray.each do |x|
        
        puts "Num: #{x}"
    end

    puts "---"

    #Hash:
    contactsHash = {uuid0: "Fabian", uuid1: "Josue", uuid3: "Rodriguez"}

    #Se puede utilizar corchete o do
    contactsHash.each { |key, value|
        puts "La llave es: #{key}. El valor es: #{value}"
    }

    puts "---"

    contactsHash.each_key do |key| puts "La llave es: #{key}." end

    puts "---"

    contactsHash.each_value { |value| puts "El valor es: #{value}." }

    puts "---"

    #Recorrer un string:
    texto = "Fabian"
    texto.each_char do |letter|
        puts "letra: #{letter}"
    end

end

#cicloEach


###########################################################
#TIMES:

#Exclusivo para numeros
def cicloTimes
    
    10.times do |index|
        puts "iterador times. Index: #{index}"
    end
end

#cicloTimes