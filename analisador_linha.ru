class AnalisadorLinha

    def initialize (line, content)
        @line = line
        @content = content
        @quant = 0
        @word = []
        @wordAux = {}
    end

    def generator 

        @content.each{ |i|  @wordAux[i] = @content.count(i) }

        @wordAux.each{ |k,v|  
            if v > @quant 
                @quant = v
            end  
        }

        @wordAux.each{ |k,v| 
            if v == @quant 
                @word.push(k)
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

line_num = 0

File.open('words.txt').each do |line|

    lineArray = line.split(" ")

    analise = AnalisadorLinha.new(line_num, lineArray)
    analise.generator

    print analise.to_str
    line_num += 1

end












