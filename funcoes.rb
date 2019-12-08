def inicializa_baralho
    baralho = []

    carta = Carta.new("DART", 23 , 6 ,"C",false, 6 , 5 , 8 , 6 , 5)
    baralho << carta
    carta = Carta.new("LUA", 16 , 4 ,"D",false, 7 , 5 , 8 , 7 , 5)
    baralho.push(carta)
    carta = Carta.new("PHP", 18 , 5 ,"B",false, 7 , 8 , 5 , 6 , 5)
    baralho << carta
    carta = Carta.new("JAVA", 5 , 2 ,"A",false, 8 , 5 , 6 , 8 , 9)
    baralho.push(carta)
    carta = Carta.new("RUBY", 19 , 5 ,"C",true, 7 , 9 , 6 , 6 , 8)
    baralho.push(carta)
    carta = Carta.new("HASKELL", 10 , 3 ,"B",false, 5 , 5 , 9 , 4 , 5)
    baralho.push(carta)
    carta = Carta.new("VBASIC", 32 , 8 ,"D",false, 6 , 5 , 8 , 6 , 6)
    baralho.push(carta)
    carta = Carta.new("JULIA", 20 , 5 ,"D",false, 7 , 7 , 6 , 5 , 6)
    baralho.push(carta)
    carta = Carta.new("ADA", 8 , 2 ,"D",false, 6 , 6 , 8 , 5 , 6)
    baralho.push(carta)
    carta = Carta.new("GO", 12 , 3 ,"D",false, 8 , 8 , 7 , 5 , 5)
    baralho.push(carta)
    carta = Carta.new("COBOL", 27 , 7 ,"C",false, 8 , 5 , 8 , 5 , 5)
    baralho.push(carta)
    carta = Carta.new("PYTHON", 1 , 1 ,"A",false, 7 , 9 , 6 , 7 , 7)
    baralho.push(carta)
    carta = Carta.new("TSCRIPT", 11 , 3 ,"C",false, 7 , 8 , 6 , 6 , 7)
    baralho.push(carta)
    carta = Carta.new("ERLANG", 24 , 6 ,"D",false, 6 , 6 , 6 , 6 , 6)
    baralho.push(carta)
    carta = Carta.new("SWIFT", 14 , 4 ,"B",false, 7 , 8 , 7 , 6 , 6)
    baralho.push(carta)
    carta = Carta.new("RUST", 2 , 1 ,"B",false, 7 , 7 , 7 , 7 , 7)
    baralho.push(carta)
    carta = Carta.new("OCAML", 25 , 7 ,"A",false, 6 , 5 , 7 , 5 , 6)
    baralho.push(carta)
    carta = Carta.new("PERL", 17 , 5 ,"A",false, 7 , 8 , 5 , 6 , 6)
    baralho.push(carta)
    carta = Carta.new("SCHEME", 31 , 8 ,"C",false, 5 , 6 , 7 , 6 , 5)
    baralho.push(carta)
    carta = Carta.new("PASCAL", 20 , 5 ,"D",false, 7 , 8 , 7 , 7 , 7)
    baralho.push(carta)
    carta = Carta.new("OBJETIVE C", 29 , 8 ,"A",false, 7 , 7 , 8 , 7 , 7)
    baralho.push(carta)
    carta = Carta.new("C++", 6 , 2 ,"B",false, 8 , 7 , 9 , 8 , 8)
    baralho.push(carta)
    carta = Carta.new("C", 3 , 1 ,"C",false, 6 , 7 , 10 , 7 , 6)
    baralho.push(carta)
    carta = Carta.new("C#", 4 , 1 ,"D",false, 9 , 7 , 8 , 7 , 8)
    baralho.push(carta)
    carta = Carta.new("RACKET", 22 , 6 ,"B",false, 6 , 5 , 6 , 6 , 5)
    baralho.push(carta)
    carta = Carta.new("JAVASCRIPT", 26 , 7 ,"B",false, 7 , 7 , 8 , 10 , 8)
    baralho.push(carta)
    carta = Carta.new("F#", 7 , 2 ,"C",false, 6 , 5 , 5 , 5 , 5)
    baralho.push(carta)
    carta = Carta.new("ASSEMBLY", 28 , 7 ,"D",false, 3 , 5 , 10 , 6 , 3)
    baralho.push(carta)
    carta = Carta.new("SMALLTALK", 21 , 6 ,"A",false, 5 , 6 , 5 , 6 , 5)
    baralho.push(carta)
    carta = Carta.new("FORTRAN", 15 , 4 ,"C",false, 6 , 6 , 8 , 5 , 6)
    baralho.push(carta)
    carta = Carta.new("LISP", 9 , 3 ,"A",false, 5 , 5 , 6 , 5 , 5)
    baralho.push(carta)
    carta = Carta.new("ALGOL", 30 , 8 ,"B",false, 7 , 7 , 6 , 5 , 5)
    baralho.push(carta)

    baralho.shuffle!
    # puts baralho.inspect

    return baralho
end

def sorteio
    x = 0
    y = 0

    while ( x == y)
        x = rand(1..6)
        y = rand(1..6)
    end

    # puts ("VALOR DE X #{x}")
    # puts ("VALOR DE Y #{y}")

    if (x > y)
        puts "Jogador começa jogando!"
        return 0;
    else
        puts "Computador começa jogando"
        return 1;
    end
end

def mostra_atributos(carta)

    # @name = name
    # @number = nSumber
    # @line = line
    # @type = type
    # @superTrunfo = superTrunfo
    # @conf = conf
    # @learn = learn
    # @efic = efic
    # @port = port
    # @reuse = reuse


    puts "\n\n\nNome: #{carta.name}\nLinha: #{carta.line}\nTipo: #{carta.type}\n\n\n"
    if carta.superTrunfo == true
        puts "------------OPAA! OLHA O SUPERTRUNFO!--------------------------"
    end
    puts "\n\n\n------------------------ATRIBUTOS---------------------------------"
    puts "1 - CONFIABILIDADE: #{carta.conf}"
    puts "2 - APRENDIZAGEM: #{carta.learn}"
    puts "3 - EFICIENCIA: #{carta.efic}"
    puts "4 - PORTABILIDADE: #{carta.port}"
    puts "5 - REUSABILIDADE: #{carta.reuse}\n\n\n"
end

def compara_cartas(baralho_jogador, baralho_computador, atributo)

    carta_1 = baralho_jogador[0]
    carta_2 = baralho_computador[0]
    $monte.push(carta_1)
    $monte.push(carta_2)
    # puts $monte.inspect
    baralho_jogador.shift
    baralho_computador.shift
    $placar_jogador = baralho_jogador.length
    $placar_computador = baralho_computador.length
    # puts "PLACAR: #{$placar_jogador}                | PLACAR: #{$placar_computador}"
    # puts "VALOR DO ATRIBUTO: #{atributo}"

    # puts "CHEGOU\n"

    case atributo
    when 1 
        atrib_carta_1 = carta_1.conf
        atrib_carta_2 = carta_2.conf
        puts "ATRIBUTO ESCOLHIDO: CONFIABILIDADE\n\n"
    when 2
        atrib_carta_1 = carta_1.learn
        atrib_carta_2 = carta_2.learn
        puts "ATRIBUTO ESCOLHIDO: APRENDIZAGEM\n\n"
    when 3
        atrib_carta_1 = carta_1.efic
        atrib_carta_2 = carta_2.efic
        puts "ATRIBUTO ESCOLHIDO: EFICIENCIA\n\n"
    when 4
        atrib_carta_1 = carta_1.port
        atrib_carta_2 = carta_2.port
        puts "ATRIBUTO ESCOLHIDO: PORTABILIDADE\n\n"
    when 5
        atrib_carta_1 = carta_1.reuse
        atrib_carta_2 = carta_2.reuse
        puts "ATRIBUTO ESCOLHIDO: REUSABILIDADE\n\n"
    end

    if ((carta_1.superTrunfo == true) && (carta_2.type != "A"))
        empilhando(baralho_jogador)
        $placar_jogador = baralho_jogador.length
        $placar_computador = baralho_computador.length
        puts "---------------------- SUPERTRUNFO! -------------------------"
        puts "----------------- JOGADOR GANHOU A RODADA -------------------"
        resultado(carta_1, carta_2)
        $monte = []
        return
    end

    if ((carta_2.superTrunfo == true) && (carta_1.type != "A"))
        puts "COMPUTADOR TEM UM SUPERTRUNFO!"
        gets
        empilhando(baralho_computador)
        $placar_jogador = baralho_jogador.length
        $placar_computador = baralho_computador.length
        puts "---------------- COMPUTADOR GANHOU A RODADA -----------------"
        resultado(carta_1, carta_2)
        $monte = []
        return
    end

    if atrib_carta_1 == atrib_carta_2
        puts "----------------------------HOUVE EMPATE------------------------"
        if $placar_jogador == 0 || $placar_jogador == 32
            if ($placar_jogador == 32)
            system ("clear")
            puts "VOCÊ GANHOU =D\n\n"
            gets
            else
            system ("clear")
            puts "VOCÊ PERDEU! ='(\n\n"
            gets
            end
            jogo = -1
            return 0 
        end

        if $jogador_comeca == true
            puts " ------ COMPUTADOR COMEÇA O DESEMPATE -----\n\n"
            gets
            computador_escolhe(baralho_jogador, baralho_computador)
        else
            puts " ------ JOGADOR COMEÇA O DESEMPATE --------\n\n"
            gets
            jogador_escolhe(baralho_jogador, baralho_computador)
        end
    else
        if atrib_carta_1 > atrib_carta_2
            puts "----------------- JOGADOR GANHOU A RODADA -------------------"
            empilhando(baralho_jogador)
        else
            puts "---------------- COMPUTADOR GANHOU A RODADA -----------------"
            empilhando(baralho_computador)

        end
    $placar_jogador = baralho_jogador.length
    $placar_computador = baralho_computador.length
    resultado(carta_1, carta_2)
    $monte = []
    end
end


def jogador_escolhe(baralho_jogador, baralho_computador)
    $jogador_comeca = true
    mostra_atributos(baralho_jogador[0])
    puts "Digite um número para escolher o atributo:"
    atributo = gets.chomp.to_i
    system("clear")
    compara_cartas(baralho_jogador, baralho_computador, atributo)
end

def computador_escolhe(baralho_jogador, baralho_computador)
    $jogador_comeca = false
    puts "Computador esta escolhendo um atributo..."
    gets
    vetor = []
    vetor[0] = baralho_computador[0].conf
    vetor[1] = baralho_computador[0].learn
    vetor[2] = baralho_computador[0].efic
    vetor[3] = baralho_computador[0].port
    vetor[4] = baralho_computador[0].reuse
    maior = vetor.max

    i = 0;

    while (i < 5)
        if vetor[i] == maior
        atributo = i
        end
        i += 1
    end

    # puts "VALOR DO ATRIBUTO DO COMPUTADOR: #{atributo}"
    compara_cartas(baralho_jogador, baralho_computador, atributo+1)
end

def resultado(carta1, carta2)

    puts "JOGADOR: #{$nome_jogador}\n\n"
    puts "NOME: #{carta1.name}\nTIPO #{carta1.type}"
    puts "CONFIABILIDADE: #{carta1.conf}"
    puts "APRENDIZAGEM: #{carta1.learn}"
    puts "EFICIENCIA: #{carta1.efic}"
    puts "PORTABILIDADE: #{carta1.port}"
    puts "REUSABILIDADE: #{carta1.reuse}"
    puts "SUPERTRUNFO: #{carta1.superTrunfo}\n\n"

    puts "COMPUTADOR\n\n"
    puts "NOME: #{carta2.name}\nTIPO #{carta2.type}"
    puts "CONFIABILIDADE: #{carta2.conf}"
    puts "APRENDIZAGEM: #{carta2.learn}"
    puts "EFICIENCIA: #{carta2.efic}"
    puts "PORTABILIDADE: #{carta2.port}"
    puts "REUSABILIDADE: #{carta2.reuse}"
    puts "SUPERTRUNFO: #{carta2.superTrunfo}"

    puts "\nPLACAR:\n\n#{$nome_jogador}: #{$placar_jogador}\nCOMPUTADOR: #{$placar_computador}"
    gets
end

def empilhando(baralho)
    i = 0
    while i < $monte.length
        baralho.push($monte[i])
        i += 1
    end
end

def mostra_monte
    puts "CARTAS NO MONTE:\n\n"
    for carta in $monte
        puts carta.name
    end
    puts "\n\n"
end
