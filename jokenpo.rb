def calcula_vencedor(sua_escolha, pc_escolha)
    resultado = (sua_escolha - pc_escolha) % 3
    if resultado == 1
        'Você ganhou!'
    elsif resultado == 2
        'O PC ganhou!'
    else
        'Deu empate!'
    end

end

opcoes = {
    1 => 'Pedra',
    2 => 'Papel',
    3 => 'Tesoura'
}

novo_jogo = 's'
while novo_jogo == 's'

opcoes.each do |k, v|
    puts "#{k} - #{v}"
end

puts 'Escolha uma das opções: '
sua_escolha = gets.to_i

while opcoes[sua_escolha].nil?
    print 'Opção inválida! Escolha novamente: '
    sua_escolha = gets.to_i
end

pc_escolha = Random.rand(3) + 1

puts "\nVocê escolheu #{sua_escolha}"
puts "O PC escolheu #{pc_escolha}\n\n"

print calcula_vencedor(sua_escolha, pc_escolha)

print "\n\nDeseja jogar noamente? (s/n): "
novo_jogo = gets.chomp
end

puts 'Obrigado por jogar!'