@agenda = [
  { nome: 'Natalia', telefone: '991588454'},
  { nome: 'José', telefone: '981580023'},
  { nome: 'Frederico', telefone: '988778454'},
]

def lista
  puts "--------Contatos--------"
  @agenda.each do |contato|
    puts "#{contato[:nome]} - #{contato[:telefone]}"
  end
  puts "------------------------"
end

def adicionar
  print "Nome: "
  nome = gets.chomp
  print "Telefone: "
  telefone = gets.chomp

  @agenda << { nome: nome, telefone: telefone }
  puts "---Contato Adicionado---"
  puts "#{nome}"
  puts "------------------------"
end

def contato
  puts "Achar contato"
  nome = gets.chomp
  @agenda.each do |contato|
    if contato[:nome].downcase.include?(nome.downcase)
      puts "-----------------------------------------"
      puts "#{contato[:nome]} - #{contato[:telefone]}"
      puts "-----------------------------------------"
    end
  end
end

def editar 
  print "Qual nome deseja editar: "
  nome = gets.chomp

  @agenda.each do |contato|
    if contato[:nome].downcase == (nome.downcase)
      print "Digite novo nome: "
      novo_nome = contato[:nome]
      contato[:nome] = gets.chomp;
      contato[:nome] = contato[:nome].empty? ? novo_nome : contato[:nome]

      print "Digite telefone: "
      novo_telefone = contato[:telefone]
      contato[:telefone] = gets.chomp;
      contato[:telefone] = contato[:telefone].empty? ? novo_telefone : contato[:telefone]
    end
  end

end

def remover
  print "Qual contato deseja remover: "
  nome = gets.chomp

  @agenda.each do |contato|
    if contato[:nome].downcase == (nome.downcase)
      indice = @agenda.index(contato)
      @agenda.delete_at(indice)
    end
  end
end

loop do
  puts "1 - Contatos\n2 - Adicionar Contatos\n3 - Ver Contatos\n4 - Editar Contatos\n5 - Remover Contatos\n0 - Sair\n"
  option = gets.chomp.to_i;
    case option
      when 0;
        puts "Encerrado";
      break;
      when 1;
        lista;
      when 2;
        adicionar;
      when 3;
        contato
      when 4
        editar
      when 5
        remover
      else
        puts "--------------"
        puts "Opção invalida"
        puts "--------------"
  end
end