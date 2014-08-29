class Character
  def initialize
    @name == ""
  end

  def name_entry
    input_name
    confirm_name
  end

  def input_name
    puts "Please insert your character's name."
    name = gets.chomp
    if name == ""
      puts "You need to insert a name!"
      input_name
    end
  end

  def confirm_name
    puts "Your name is #{name}. Is that correct? (Y/N)"
    response = gets.chomp
    if response == "N"
      input_name
    elsif response != "Y"
      puts "Please respond with Y/N."
      confirm_name
    end
  end

end
