class AnalisadorLinhaSemHash

    def initialize (line, content)
        @line = line
        @content = content
        @quant = 0
        @word = []
    end

    def generator 

        @content.each{ |i|  
          if @content.count(i) > @quant 
            @quant = @content.count(i)
          end   
        }      

        @content.uniq.each{ |i| 
            if @content.count(i) == @quant 
                @word.push(i)
            end   
        }

    end

    def to_str
        return "

Linha : #{@line}  
Palavra : #{@word} 
Quantidade : #{@quant} 

        "
        # Array : #{@content}  
        # Pode adicionar isso no print 
        # para que tenha melhor vizualização da linha
    end
end
