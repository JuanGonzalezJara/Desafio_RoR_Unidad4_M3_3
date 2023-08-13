# Requerimiento 3
# Utilizando como base el ejercicio de cálculo de IMC en la guía de 
# ejercicios, agregar en el cálculo de Obesidad los elementos faltantes
# dado que la obesidad se subdivide en 3 niveles.
# Deberás agregar a la lógica condicional los cálculos para esos tres niveles.

def formula_imc(valor1, valor2)
    imc = valor1 / valor2**2
    return imc
end

def calcular_imc(imc)
    # Aplicamos la logica del analisis de IMC
    puts "====================================================="
    puts("Tu índice de masa corporal es => #{format("%.2f",imc)}")
    if imc < 18.5
        puts "El índice calculado es Bajo de peso"
        puts "====================================================="
    elsif imc <= 18.5 || imc <= 24.9
        puts "El índice calculado es Normal"
        puts "====================================================="
    elsif imc <= 25.0 || imc <= 29.9
        puts "El índice calculado es Sobrepeso"
    else
        # Aplicamos la logica de analisis cuando el IMC es igual a Sobrepeso
        if imc < 35.0
            puts "El índice calculado es Obesidad Grado I: Moderado"
            puts "====================================================="
        elsif imc > 35.0 && imc < 40.0
            puts "El índice calculado es Obesidad Grado II: Severo"
            puts "====================================================="
        else
            puts "El índice calculado es Obesidad Grado III: Muy Severo!"
            puts "====================================================="
        end
    end
    puts
    puts "Presiona Enter para volver al menu principal.."
    gets
    system("clear")
end

def caculo_imc_con_obesidad()
    peso = 0.0
    altura = 0.0
    # Solicitamos el peso validando la entrada de datos
    while peso <= 0 || !peso.is_a?(Float) do
        print "Ingrese el peso actual (en kilogramos): "
        peso = gets.chomp.to_f
        if peso <= 0 || !peso.is_a?(Float)
            system("clear")
            puts "\e[0;31mEl peso debe ser un valor numérico positivo.\e[m"
        else
            system("clear")
            puts "Ingrese el peso actual (en kilogramos): #{peso}"
        end
    end
    # Solicitamos la altura validando la entrada de datos
    while altura <= 0 || !altura.is_a?(Float) do
        print "Ingrese la altura actual (en metros): "
        altura = gets.chomp.to_f
        if altura <= 0 || !altura.is_a?(Float)
            system("clear")
            puts "\e[0;31mLa altura debe ser un valor numérico positivo.\e[m"
            puts "Ingrese el peso actual (en kilogramos): #{peso}"
        else
            system("clear")
            puts "Peso Ingresado: #{peso} kg.  |  Altura Ingresada: #{altura} mts."
        end
    end
    # Llamamos al metodo que realizara el calculo y enviamos sus resultados a otro metodo que lo analizara
    calcular_imc(formula_imc(peso, altura))
end

