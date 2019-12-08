require_relative 'carta'
require_relative 'funcoes'


    system ("clear")
    puts ("------------------- SUPER-TRUNFO -----------------------\n\n")
    puts ("Digite o nome do jogador:")
    $nome_jogador = gets.chomp

    puts ("\nSeja bem-vindo #{$nome_jogador}!\n\n")

    puts ("INTRODUÇÃO DO JOGO:\n\nO jogo baseia-se na comparação dos valores de sua
carta com a dos outros jogadores. Para sua carta vencer, a característica
escolhida precisa ter valor maior ou menor (em alguns casos) do que a carta
dos seus adversários. Quando sua carta vence, você ganha a carta dos seus adversários
e a próxima carta de sua pilha aparece para uma nova jogada.")
    gets

    puts ("PLACAR\nO placar mostra o número de cartas que você e seus
adversários possuem. O placar vai se alterando automaticamente a cada rodada.
Em caso de empate as cartas ficam no monte e um placar mostra quantas
cartas estão lá. Quando um jogador vencer a próxima rodada, ele ganha todas
as cartas do monte.")
    gets

    puts ("APERTE ENTER PARA COMEÇAR")
    gets
    system("clear")

    jogo = 1
    rodada = 1

    baralho = []
    baralho = inicializa_baralho

    $monte = []

    # puts baralho.inspect

    baralho_jogador = []
    baralho_computador = []

    baralho_jogador = baralho[0..15]
    $placar_jogador = baralho_jogador.length

    # puts "PLACAR DO JOGADOR #{placar_jogador}"
    # puts "JOGADOR\n\n\n"
    # puts baralho_jogador.inspect


    baralho_computador = baralho[16..31]
    $placar_computador = baralho_computador.length

    # puts "PLACAR DO COMPUTADOR #{placar_computador}"
    # puts "COMPUTADOR\n\n\n"
    # puts baralho_computador.inspect

    controle = sorteio()
    # puts ("VALOR CONTROLE: #{controle}")

    while jogo != -1 
    if controle%2 == 0
        system("clear")
        puts "----------------- É A VEZ DO JOGADOR -------------------"
        jogador_escolhe(baralho_jogador, baralho_computador)
        
    else 
        system("clear")
        puts "---------------- É A VEZ DO COMPUTADOR -----------------"
        computador_escolhe(baralho_jogador, baralho_computador)
    end

    rodada += 1
    controle += 1

    if $placar_jogador == 0 || $placar_jogador == 32
        if ($placar_jogador == 32)
        system ("clear")
        puts "BEM JOGADO!\n\n"
        else
        system ("clear")
        puts "QUE PENA!\n\n"
        end
        puts ("FORAM JOGADAS #{rodada} RODADAS")
        gets
        jogo = -1 
    end
end

