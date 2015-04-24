require 'colored'
class View
  def self.welcome
    system 'clear'
    puts "*" * 125
    puts
    puts "Welcome to our Food Drop Off locater! Please put in your borough and we will show you a list of locations to choose from.".bold.green
    puts
    puts "*" * 125
  end

  def self.prompt
    puts "Please enter your borough: ".bold.red
  end
  def self.invalid
    puts "This is not a valid borough!".bold.magenta
  end
  def self.get_input
    gets.chomp
  end

end