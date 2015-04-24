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

  def self.select
    puts "Please select a location from the list by typing the number"
  end

  def self.bronx
    puts "Sorry, there are no food drop locations in DA Bronx! The closest would be in Manhattan.".bold.magenta
  end

end
