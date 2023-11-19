###########################################################
#CONDICIONES:

def ingresarBar
    print "Digita tu edad: "
    edad = gets

    edadInt = Integer(edad)

    if edadInt < 18
        puts "Es menor de edad, no puedes entrar ni puedes beber"
    elsif edadInt <= 21
        puts "Es menor de edad, puedes entrar pero no peudes beber"
    else 
        puts "Es mayor de edad, peuides ebntrar y beber"
    end
end

while true
ingresarBar
end