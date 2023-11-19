###########################################################
#METODOS:

#Definicion de un metodo, con la palabra revervada "def" y "end" para terminar el metodo.
def metodoSaludo

    print "Introduce tu nombre:"
    name = gets
    name = name.chomp
    greet = "good afternoon"
    puts "Hello #{name}, I hope you have a #{greet}"

end

#No es necesario utilizar parentesis cuando no reciba parametros, pero se puede utilizar sin problema.
#metodoSaludo() #Tambien valido.
#metodoSaludo

###########################################################
#PARAMETROS:

def metodoSaludoConParametros(nombre, saludo)

    greet = "good afternoon"
    puts "Hello #{nombre}, I hope you have a #{saludo}"

end

print "Introduce tu nombre:"
nameParam = gets
nameParam = nameParam.chomp

#metodoSaludoConParametros(nameParam, "good morning")

###########################################################
#RETURN:

def suma(num1, num2)
    suma = num1 + num2
    return suma
end

a = 1
b = 4
resultado = suma(a, b)

puts "El resultado es: #{resultado}"