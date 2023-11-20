#Arreglos: Agregar, modificar o borrar elementos

###########################################################
#CREAR: 

#Nuevo arreglo vacio:
arrayEmpty = []
#arrayEmpty = Array.new #Tambien es valido.
puts arrayEmpty

#Crear un arreglo repetido cierta cantidad de veces:
arregloRepetido = Array.new(3, "Mario Bros")
#Salida: ["Mario Bros", "Mario Bros", "Mario Bros"]

#CREAR UN ARREGLO:
arrayVideoGames = ["Zelda", "Warzone", "Metal gear"]
puts arrayVideoGames

#Posicion 2:
puts "Videojuego posicion 2: #{arrayVideoGames[1]}"

#primero:
puts"Videojuego posicion primero: #{arrayVideoGames.first}"

#ultimo:
puts"Videojuego posicion ultimo: #{arrayVideoGames.last}"

#Fetch: otra forma de obtener una posicion:
#Se puede validar con un segundo parametro:
puts"Videojuego posicion fetch: #{arrayVideoGames.fetch(500, "No hay un juego en esta poscion")}"


###########################################################
#AGREGAR: 

#Agregar elemento:
arrayVideoGames << "Splinter cell"
puts "Nuevo arreglo: #{arrayVideoGames}"

#Otra foram de agregar elemento:
arrayVideoGames.push("Tony hawks Pro Skater")
puts "Nuevo arreglo: #{arrayVideoGames}"

#Otra forma de agregar elementos:
arrayVideoGames += ["Vanguard", "Attack on titan"]
puts "Nuevo arreglo: #{arrayVideoGames}"

#Agregar elemento al inicio:
arrayVideoGames.unshift("Fifa 2023")
puts "Nuevo arreglo: #{arrayVideoGames}"


###########################################################
#ELIMINAR: 

#Remover primer elemento:
arrayVideoGames.shift
puts "Nuevo arreglo: #{arrayVideoGames}"

#Remover ultimo elemento:
arrayVideoGames.pop
puts "Nuevo arreglo: #{arrayVideoGames}"


###########################################################
#OBTENER: 

#Obtiene el arreglo, solamente los N cantidad primeros elementos (sin eliminarlos):
puts "Solo los primeros N elemtos, pero NO eliminados: #{arrayVideoGames.drop(4)}"
puts "Nuevo arreglo: #{arrayVideoGames}"

#Obtiene elementos en un rango:
puts "Rango: #{arrayVideoGames.slice(1, 3)}"