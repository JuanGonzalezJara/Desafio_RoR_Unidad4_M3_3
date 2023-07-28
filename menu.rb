# agrega los programas (archivos) que contiene los metodos
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
            puts "Accediendo a Calculo de Aumento Salarial"
            calculo_salario()
            opcion = 0
        when 2
            puts "Accediendo al juego 'Adivina el Numero!'"
            adivina_el_numero()
            opcion = 0
        when 3
            puts "Accediendo a Calculo de IMC"
            # funcion()
            opcion = 0
        when 4
            puts "Saliendo del programa..."
            exit
        else
            puts "La opcion debe ser numerica y valida"
            opcion = 0
        end
    end
end

# Se llama al metodo que levanta el menu
menu_inicio()