require_relative 'calculo_aumento'
require_relative 'adivina_el_numero'
require_relative 'calculo_obesidad'

# Nota interna: Rehacer este codigo, dejar menu solo en un while.. hora de dormir
def menu_inicio
    opcion = 0
    while opcion <= 0 || opcion > do
        puts "Selecciona el programa a Ejecutar"
        puts "------------------------------------------"
        puts "(Opcion 1) Calculo de Aumento Salarial."
        puts "(Opcion 2) Jugar 'Adivina el Numero!'."
        puts "(Opcion 3) Calculo de Aumento Salarial."
        puts "(Opcion 4) Salir."
        puts "------------------------------------------"
        print "Ingrese el numero de su opcion: "
        opcion = gets.chomp.to_i
         unless (1..4).include?(opcion)
    
        if opcion == 1
            
        elsif opcion == 1

        elsif opcion == 3

        elsif opcion == 4

        else
            print "La opcion debe ser numerica y valida\nIngrese el numero de su opcion: "
        end
    
        case opcion
        when 1
            puts "Accediendo a Calculo de Aumento Salarial"
            calculo_salario()
        when 2
            puts "Accediendo al juego 'Adivina el Numero!'"
        when 3
            puts "Accediendo a Calculo de Aumento Salarial"
        end
    end

    puts "Saliendo del programa..."
            # exit

end

menu_inicio()