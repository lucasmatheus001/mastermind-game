@cor =  [1,2,3,4,5,6]
@cor.shuffle!

class Master_mind
  
  def verifica_cor_posicao(cor,cor2)
    cont =0
    cont2 =0
    cor.each_with_index do |valor, index|
      cor2.each_with_index do |cor, i| 
        if(valor == cor && index != i)
          cont += 1
        end
        if(valor == cor && index == i)
          puts cor
          cont2 += 1
        end
      end
    end
    puts " cor correta e posição errada ---> #{cont}"
    puts "cor e posição correta -----> #{cont2}"

  end
end

# start interaction
master = Master_mind.new
rodadas =0
puts "-------------------------------- Inciando jogo --------------------------------"
puts " Digite o numero de rodadas que deseja jogar: [1-10]"
rodadas = gets.chomp.to_i
rodadas.times do |i|
  puts "Digite os numeros correspondente as cores separados por virgula! [1-9]"
  cor =  gets.chomp.split(",").map(&:to_i)
  puts cor
  master.verifica_cor_posicao(cor,@cor)
end