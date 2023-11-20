###########################################################
#COMANDOS en consola:

#irb = interactive ruby
#cls = limpiar

###########################################################
#HOLA MUNDO - INTERPOLACION:

saludo = "hola"
hola = "Fabian Rodriguez"

# puts saludo + " " + hola

user = "Josue Alvarez"
greet = "good afternoon"

#Comillas dobles representen interpolacion con posible concatenacion de variables.
# print "Hello #{user}, I hope you have a #{greet}"

#Comilla simple es texto plano
# puts 'Hello #{user}, I hope you have a #{greet}'


###########################################################
#GET:

#PRINT: Pone todo en la misma linea
#PUT: Hace un salto de linea

print "Introduce tu nombre:"

#Obtiene datos de entrada en la terminal.
name3 = gets

#Llama a una funcion que quita el caracter de salto de linea que tiene la variable.
name3 = name3.chomp

saludo3 = "good afternoon"

puts "Hello #{name3}, I hope you have a #{saludo3}"


###########################################################
#NUMEROS:

#Modulo = %
#Elevado a la 2 = 2 ** 2 

#class: 
edad = 30
edad.class #Es un objeto Fixnum

edadFloat = 30.5
edad.class #Es un objeto Float