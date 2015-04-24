require_relative 'parse'
require 'colored'

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
    count = 1
    mn_arr = @file.select do |row|
      row[:borough] == "MN"
    end
    mn_arr.each do|location| puts "#{count}. #{location[:name]} \n #{location[:location]}".gsub!(/\(([^\)]+)\)/, " ")
      count += 1
    end

  end

  def queens
    count = 1
    qn_arr = @file.select do |row|
      row[:borough] == "QN"
    end
    qn_arr.each do|location| puts "#{count}. #{location[:name]} \n #{location[:location]}".gsub!(/\(([^\)]+)\)/, " ")
      count += 1
    end


  end

  def staten_island
    count = 1
    si_arr = @file.select do |row|
      row[:borough] == "SI"
    end
    si_arr.each do|location| puts "#{count}. #{location[:name]} \n #{location[:location]}".gsub!(/\(([^\)]+)\)/, " ")
      count += 1
    end

  end

end

# test = FoodDropLocation.new('drop_off.csv')
# test.brooklyn
