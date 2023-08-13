# Requerimiento 2
# Te solicitan un programa que simule el juego de “Adivina el número”.
# En este programa el computador va a elegir un número aleatorio y el usuario al seleccionar un número debe indicarle si ganó o perdió.
# La condición para ganar es que el número del computador debe ser igual al del jugador. 
# El rango de número va entre 1 hasta n, tomando en consideración que mientras más amplio sea el rango más duradero será el juego.

#Esto es para volver al menu dignamente
require_relative 'util'

# Solicitamos al usuario seleccionar el nivel de dificultad validando su entrada
def adivina_el_numero
    nivel = 0
    while (1..5).include?(nivel) == false
        puts "Elige sabiamente"
        puts "|\e[0;32mOpcion 1\e[m: 1 digito"
        puts "|\e[0;32mOpcion 2\e[m: 3 digitos"
        puts "|\e[0;32mOpcion 3\e[m: 6 digitos"
        puts "|\e[0;32mOpcion 4\e[m: Digitos Infinitos!! (mentira, solo 202 digitos)"
        puts "|\e[0;32mOpcion 5\e[m: Salir"
        print "Selecciona la opcion: "
        nivel = gets.chomp.to_i
        unless (1..5).include?(nivel)
            system("clear")
            puts "\e[0;31mOpcion no valida, debe elegir una opcion entre el 1 y el 5\e[m"
        end
    end

    # Seteamos el numero random segun la dificultad seleccionada
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
        # Volvemos al menu principal si se elige la opcion 5
        carga_menu()
        return
    end

    # Comienza el juego, seteamos una flag para controlar cuando hay un acierto
    flagWin = false
    # variable para controlar los intentos
    reintento = ""
    # Iteramos mientras no exista un acierto, validamos nuevamente que la dificultad se haya seleccionado previamente
    while flagWin == false && (1..4).include?(nivel) do
        system("clear")
        puts "Has elegido el Nivel de Dificultad #{nivel}."
        puts "Tienes 3 oportunidades para adivinar!"
        # Iteramos con un for para controlar los intentos
        for i in 1..3
            puts "Oportunidad #{i}!"
            # Agregamos una ayudita para el nivel mas dificil
            if i == 3 && nivel == 4
                puts "\e[0;32mPista\e[m: El numero tiene #{num.to_s.length} digitos"
            end
            print "Escribe cual crees que es el numero: "
            prediccion = gets.chomp.to_i
            # validamos que sea un numero valido
            if (1..99999999999999999999**10).include?(prediccion)
                # Comparamos si la prediccion es igual al numero random
                if prediccion == num
                    flagWin = true
                    break
                else
                    print "\e[0;31mRespuesta Incorrecta\e[m, "
                end
            else
                system("clear")
                puts "\e[0;31mTu opcion no es valida, recuerda ingresar un numero\e[m"
                print "Has utilizado un intento, presiona Enter para continuar.."
                gets
                system("clear")
            end

        end
        # Validamos si la flag ha cambiado por un acierto o por intentos agotados
        if flagWin == true
            puts "=============================================="
            puts "\e[0;32mHas Acertado!! El publico se vuelve locooo!!\e[m"
            puts "=============================================="
            puts
            print "Presiona Enter para volver al menu principal.."
            gets
            carga_menu()
        else
            system("clear")
            puts "No has acertado el numero... 🤡"
            print "Deseas reintentar? (S/N): "
            reintento = gets.chomp.to_s.upcase
            # Validamos la opcion ingresada
            while reintento != "S" && reintento != "N"
                system("clear")
                puts "Papi, yo hablo chino?"
                print "Escribe S para Reintentar o N para salir: "
                reintento = gets.chomp.to_s.upcase
            end
            if reintento.upcase == "N"
                flagWin = true
                carga_menu()
            end
        end
    end
end


# adivina_el_numero()