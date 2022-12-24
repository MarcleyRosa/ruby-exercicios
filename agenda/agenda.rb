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

loop do
  puts "1 - Contatos\n2 - Adicionar Contatos\n3 - Ver Contatos\n4 - Editar Contatos\5 - Remover Contatos\n0 - Sair\n"
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
  end
end