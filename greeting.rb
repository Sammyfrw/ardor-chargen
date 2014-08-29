class Greeting
  attr_reader :response

  def initialize
    say_hello
    get_response
    read_response
  end

  private

  def say_hello
    puts "Hello! Welcome to Ardor-chargen. Type END at any time to exit the program."
    puts "Enter a command for what would you like to do."
    puts "Type NEW CHARACTER to generate a new character."
    puts "Type LOAD CHARACTER to load up an existing character."
  end

  def prompt_user
    response = get.chomp
  end

  def read_response
    if response == "NEW CHARACTER"
      Character.new
    elsif response == "LOAD CHARACTER"
      Character.load
    elsif response == "END"
      exit
    else
      puts "Please input a valid response."
      say_hello
    end
  end

end
