###########################################################
#Hashes: Agregar, modificar o borrar elementos

###########################################################
#CREAR: 

#Las llaves no se pueden repetir (error).
#Llave - Valor
contactos = {"Fabian" => 87981123, "Josue" => 78996135}
puts "Contactos original: #{contactos}"

#Se pueden crear hashes con simbolos:
contactosSimbolos = {:fabian => 87981123, :josue => 78996135}

contactosSimbolosSimple = {fabian: 88779988, josue: 11223344}

###########################################################
#BUSCAR: 
#nota: es case sensitive.

#Normal
puts "Numero de contacto: #{contactos["Fabian"]}"

#Con simbolo:
puts "Numero de contacto en simbolo: #{contactosSimbolos[:fabian]}"

#Con simbolo simple:
puts "Numero de contacto en simbolo simple: #{contactosSimbolosSimple[:fabian]}"

#Todos los elementos:
puts "Todos los valores (sin key): #{contactosSimbolosSimple.values}"

#Obtener llaves:
puts "Llaves: #{contactosSimbolosSimple.keys}"

#Saber si la lista, tiene cierta llave:
puts "Tiene la llave? (con true): #{contactosSimbolosSimple.has_key?(:fabian)}"
puts "Tiene la llave? (con false): #{contactosSimbolosSimple.has_key?(:otro)}"

#Saber si la lista, tiene cierto valor:
puts "Tiene el valor? (con true): #{contactosSimbolosSimple.has_value?(88779988)}"
puts "Tiene el valor? (con false): #{contactosSimbolosSimple.has_value?(0)}"

###########################################################
#MODIFICAR: 

contactos["Fabian"] = 888888

puts "Contactos actualizado: #{contactos}"


###########################################################
#AGREGAR: 

#Agregar uno:
contactosSimbolosSimple[:rodriguez] = 00330011
puts "contactosSimbolosSimple actualizado: #{contactosSimbolosSimple}"

#Otra forma de agregar uno:
contactosSimbolosSimple.store(:maria, 909090)
puts "contactosSimbolosSimple actualizado: #{contactosSimbolosSimple}"

#Agregar varios:

#No modifica el original, crea uno nuevo
simpleNuevo = contactosSimbolosSimple.merge({alvarez: 99887744, angelica: 65656565}) 
puts "contactosSimbolosSimple actualizado: #{simpleNuevo}"

puts "Cantidad de contactos simple: #{simpleNuevo.length}"