# Requerimiento 1
# Se solicita un programa que mediante el uso de métodos
# permita calcular el nuevo salario de un colaborador/a
# en función de un porcentaje mínimo de aumento establecido.

#Esto es para volver al menu dignamente
require_relative 'util'

def calculo_salario
    # Se define variable Salario y se solicita el valor a usuario validando que sea un dato valido
    salario = 0
    while salario <= 0 || !salario.is_a?(Integer) do
        print "Ingrese el salario actual: "
        salario = gets.chomp.to_i
        if salario <= 0 || !salario.is_a?(Integer)
            system("clear")
            puts "\e[0;31mEl salario debe ser un valor numérico positivo.\e[m"
        end
    end
    # Se define el porcentaje a aumentar solicitando al usuario la eleccion, se valida entrada
    numIncremento = 0
    while numIncremento <= 0 || numIncremento >= 4 do
        print "Seleccione la opcion de aumento: [Opcion 1: 5%] - [Opcion 2: 10%] - [Opcion 3: 15%]: "
        numIncremento = gets.chomp.to_i
        unless (1..3).include?(numIncremento)
            system("clear")
            puts "\e[0;31mOpcion no valida, debe elegir entre la opcion 1, 2 o 3\e[m"
        end
    end

    # Se setea el valor del % de incremento segun eleccion de usuario
    incremento = 0
    if numIncremento == 1
        incremento = 5
    elsif numIncremento == 2
        incremento = 10
    else
        incremento = 15
    end
    # Se calcula el salario + aumento segun la eleccion del usuario
    salarioFinal = salario + (salario * (incremento/ 100.0))
    system("clear")
    puts "Salario: #{salario} || Incremento: #{incremento}%"
    puts "====================================================="
    puts "El total del salario mas el incremento es de: #{salarioFinal}"
    puts "====================================================="
    puts
    puts "Presiona cualquier tecla para volver al menu principal.."
    gets
    system("clear")
end