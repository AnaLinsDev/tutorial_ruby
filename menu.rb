require_relative('AnalisadorLinha')

line_num = 0

File.open('words.txt').each do |line|

    lineArray = line.split(" ")

    # analise = AnalisadorLinhaSemHash.new(line_num, lineArray)
    analise = AnalisadorLinha.new(line_num, lineArray)
    analise.generator

    print analise.to_str
    line_num += 1

end
