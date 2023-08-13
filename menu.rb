# agrega los programas (rb) que contienen los metodos
require_relative 'calculo_aumento'
require_relative 'adivina_el_numero'
require_relative 'calculo_obesidad'

# Menu que permite seleccionar el programa a ejecutar
def menu_inicio
    opcion = 0
    while opcion <= 0 || opcion >= 5 do
        puts "Selecciona el programa a Ejecutar"
        puts "------------------------------------------"
        puts "(Opcion 1) Calculo de Aumento Salarial."
        puts "(Opcion 2) Jugar 'Adivina el Numero!'."
        puts "(Opcion 3) Calculo de IMC."
        puts "(Opcion 4) Salir."
        puts "------------------------------------------"
        print "Ingrese el numero de su opcion: "
        opcion = gets.chomp.to_i
    
        # llama al metodo segun la opcion elegida
        case opcion
        when 1
            system("clear")
            puts("¡Bienvenido/a al Calculo de Aumento Salarial!")
            calculo_salario()
            opcion = 0
        when 2
            system("clear")
            puts("¡Bienvenido/a al juego 'Adivina el Numero!")
            adivina_el_numero()
            opcion = 0
        when 3
            system("clear")
            puts("¡Bienvenido/a al sistema de cálculo IMC!")
            caculo_imc_con_obesidad()
            opcion = 0
        when 4
            puts "Saliendo del programa..."
            exit
        else
            system("clear")
            puts "\e[0;31mLa opcion debe ser numerica y valida (entre 1 y 5)\e[m"
            opcion = 0
        end
    end
end

# Se llama al metodo que levanta el menu una vez que finaliza un programa o cuando se ingresa inicialmente
system("clear")
menu_inicio()