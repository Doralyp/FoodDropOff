require_relative 'parse'

class FoodDropLocation
  include Parser
  def initialize(file)
    @file = parsing(file)
  end

  def brooklyn
    count = 1
    bk_arr = @file.select do |row|
      row[:borough] == "BK"
    end
    bk_arr.each do|location| puts "#{count}. #{location[:name]} \n #{location[:location]}".gsub!(/\(([^\)]+)\)/, " ")
      count += 1
    end

  end

  def manhattan

  end

  def queens


  end

  def staten_island

  end

end

test = FoodDropLocation.new('drop_off.csv')
test.brooklyn
