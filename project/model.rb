require_relative 'parse'
require 'colored'

class FoodDropLocation
  include Parser
  def initialize(file)
    @file = parsing(file)
  end

  def brooklyn(index = nil)
    count = 1
    if index == nil
      bk_arr = @file.select { |row| row[:borough] == "BK"}
      bk_arr.each do|location| puts "\n#{count}.)#{location[:name]} \n #{location[:location]}".gsub!(/\(([^\)]+)\)/, " ")
        count += 1
      end
    else
      bk_arr = @file.select { |row| row[:borough] == "BK"}
      bk_arr[index].each_pair {|key, value| puts "#{key}: #{value}"}
    end
  end

  def manhattan(index = nil)
    count = 1
    if index == nil
      mn_arr = @file.select {|row| row[:borough] == "MN"}
      mn_arr.each do|location| puts "\n#{count}.)#{location[:name]} \n #{location[:location]}".gsub!(/\(([^\)]+)\)/, " ")
        count += 1
      end
    else
      mn_arr = @file.select { |row| row[:borough] == "MN"}
      mn_arr[index].each_pair {|key, value| puts "#{key}: #{value}"}
    end
  end

  def queens(index = nil)
    count = 1
    if index == nil
      qn_arr = @file.select{|row| row[:borough] == "QN"}
      qn_arr.each do|location| puts "\n#{count}.)#{location[:name]} \n #{location[:location]}".gsub!(/\(([^\)]+)\)/, " ")
        count += 1
      end
    else
      qn_arr = @file.select { |row| row[:borough] == "QN"}
      qn_arr[index].each_pair {|key, value| puts "#{key}: #{value}"}

    end
  end

  def staten_island(index = nil)
    count = 1
    if index == nil
      si_arr = @file.select {|row| row[:borough] == "SI"}
      si_arr.each do|location| puts "\n#{count}.)#{location[:name]} \n #{location[:location]}".gsub!(/\(([^\)]+)\)/, " ")
        count += 1
      end
    else
    si_arr = @file.select { |row| row[:borough] == "SI"}
      si_arr[index].each_pair {|key, value| puts "#{key}: #{value}"}
    end
  end

end

# test = FoodDropLocation.new('drop_off.csv')
# test.brooklyn
