@cor =  [1,2,3,4,5,6]
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

cor = [1,3,2,25,9,20]
master = Master_mind.new
master.verifica_cor_posicao(cor,@cor)