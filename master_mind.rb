@cor = [1, 2, 3, 4, 5, 6].shuffle!
puts @cor

class Master_mind
  def initialize
    @max_rodadas = 0
    @tentativas = 0
  end

  def verifica_cor_posicao(cor,cor2)
    cont =0
    cont2 =0
    cor.each_with_index do |valor, index|
      cor2.each_with_index do |cor, i|
        if(valor == cor && index != i)
          cont += 1
        end
        if(valor == cor && index == i)
          cont2 += 1
        end
      end
    end
    puts " cor correta e posição errada ---> #{cont}"
    puts "cor e posição correta -----> #{cont2}"

    if cont2 == cor.length
      puts "Parabéns! Você venceu!"
      return true
    end

    return false
  end

  def iniciar_jogo(cor)
    puts "-------------------------------- Iniciando jogo --------------------------------"
    puts "Digite o número de rodadas que deseja jogar: [1-10]"
    @max_rodadas = gets.chomp.to_i

    @max_rodadas.times do |i|
      puts "Rodada #{i + 1} de #{@max_rodadas}"
      puts "Digite os números correspondentes às cores separados por vírgula! [1-9]"
      cor_atual = gets.chomp.split(",").map(&:to_i)

      verifica_cor_posicao(cor_atual,cor)

      @tentativas += 1
      if @tentativas == @max_rodadas
        puts "Fim de jogo! Suas tentativas acabaram."
      end
    end
  end

end

# start interaction
master = Master_mind.new
master.iniciar_jogo(@cor)
