require 'colored'

class View

  def self.welcome
    system 'clear'
    puts "*" * 125
    puts
    puts "Welcome to our Food Drop Off locater! Please put in your borough and we will show you a list of locations to choose from.".bold.black
    puts
    puts "*" * 125
  end




  def self.prompt
    puts "Please enter your borough's abbreviation: ".bold.blue
    puts " Brooklyn: BK \n Manhattan: MN \n Queens: QN \n Staten Island: SI \n DA Bronx: BX \n".blue
  end

  def self.invalid
    puts "\nThis is not a valid borough!".bold.blue
  end

  def self.get_input
    gets.chomp
  end

  def self.select
    puts "Please select a location from the list by typing the number"
  end

  def self.bronx
    puts "Sorry, there are no food drop locations in DA Bronx! The closest would be in Manhattan.".bold.blue
  end

  def self.options
    puts "Which location would you like more info on?".blue
  end

  def to_s

  end

  def self.goodbye
    puts "Thanks for using our program and being a part of the solution. Just so you know, approximately 40% of the food in the US ends up in landfills!".bold.green
  end

end
