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
        puts "El salario debe ser un valor numérico positivo." if salario <= 0 || !salario.is_a?(Integer) 
    end
    # Se define el porcentaje a aumentar solicitando al usuario la eleccion, se valida entrada
    numIncremento = 0
    while numIncremento <= 0 || numIncremento >= 4 do
        print "Seleccione la opcion de aumento: [Opcion 1: 5%] - [Opcion 2: 10%] - [Opcion 3: 15%]: "
        numIncremento = gets.chomp.to_i
        puts "Opcion no valida, debe elegir entre la opcion 1, 2 o 3" unless (1..3).include?(numIncremento)
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
    puts "====================================================="
    puts "El total del salario aumentado es de: #{salarioFinal}"
    puts "====================================================="
end