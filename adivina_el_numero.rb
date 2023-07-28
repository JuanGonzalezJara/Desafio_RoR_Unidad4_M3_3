# Requerimiento 2
# Te solicitan un programa que simule el juego de “Adivina el número”.
# En este programa el computador va a elegir un número aleatorio y el usuario al seleccionar un número debe indicarle si ganó o perdió.
# La condición para ganar es que el número del computador debe ser igual al del jugador. 
# El rango de número va entre 1 hasta n, tomando en consideración que mientras más amplio sea el rango más duradero será el juego.

#Esto es para volver al menu dignamente
require_relative 'util'

def adivina_el_numero
    nivel = 0
    while (1..5).include?(nivel) == false
        puts "Elige sabiamente"
        puts "| \e[0;32mOpcion 1\e[m: 1 digito | \e[0;32mOpcion 2\e[m: 3 digitos | \e[0;32mOpcion 3\e[m: 6 digitos | \e[0;32mOpcion 4\e[m: Digitos Infinitos!! (mentira, solo 202 digitos) | \e[0;32mOpcion 5\e[m: Salir |"
        print "Selecciona la opcion: "
        nivel = gets.chomp.to_i
        puts "Opcion no valida, debe elegir una opcion entre el 1 y el 5" unless (1..5).include?(nivel)
    end

    # Seteamos el numero random
    case nivel
    when 1
        num = rand(1..9)
    when 2
        num = rand(1..999)
    when 3
        num = rand(1..999999)
    when 4
        num = rand(1..99999999999999999999**10)
    when 5
        carga_menu()
        return
    end

    # Comienza el juego
    flagWin = false
    reintento = ""
    while flagWin == false && (1..4).include?(nivel) do
        puts "Has elegido el Nivel de Dificultad #{nivel}."
        puts "Tienes 3 oportunidades para adivinar!"
        for i in 1..3
            puts "Oportunidad #{i}! pssst, es #{num}"
            print "Escribe cual crees que es el numero: "
            prediccion = gets.chomp.to_i
            # validamos que sea un numero valido
            if (1..99999999999999999999**10).include?(prediccion)
                # Comparamos si la prediccion es igual al numero random
                if prediccion == num
                    flagWin = true
                    break
                end
            else
                puts "Tu opcion no es valida, recuerda ingresar un numero"
                print "presiona una tecla para continuar.."
                gets
            end

        end
        if flagWin == true
            puts "=============================================="
            puts "Has Acertado!! El publico se vuelve locooo!!"
            puts "=============================================="
            print "presiona una tecla para volver al menu principal.."
            gets
            carga_menu()
        else
            system("clear")
            puts "Niun brillo"
            print "Deseas reintentar? (S/N): "
            reintento = gets.chomp.to_s.upcase
            while reintento != "S" && reintento != "N"
                system("clear")
                puts "Papi, yo hablo chino?"
                print "Escribe S para Reintentar o N para salir: "
                reintento = gets.chomp.to_s.upcase
            end
            if reintento.upcase == "N"
                flagWin = true
                carga_menu()
                # return
            end
        end
    end
end


# adivina_el_numero()