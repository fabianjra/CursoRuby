###########################################################
#OPERADORES LOGICOS:

def Evaluar(calificacion)

    if calificacion == 0 || calificacion == 1
        print "Reprobado"

    elsif calificacion > 1 && calificacion < 5
        print "Casi apruebas"

    elsif calificacion > 7 && calificacion <= 9
            print "aprobado"

    elsif calificacion >= 10 
            print "nota perfecta"

    else
        print "Calificacion no valida"
    end
end

print "Digita la calificacion: "
calificacion = gets.to_i #Valida las letras y las convierte a cero

Evaluar(calificacion)