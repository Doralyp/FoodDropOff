require_relative 'model'
require_relative 'view'
control = FoodDropLocation.new('drop_off.csv')


View.welcome
View.prompt

borough = View.get_input

if borough == 'BK'
  control.brooklyn
  View.options
  index = View.get_input.to_i
  control.brooklyn(index-1)
elsif borough == "MN"
  control.manhattan
  View.options
  index = View.get_input.to_i
  control.manhattan(index-1)
elsif borough == "QN"
  control.queens
  View.options
  index = View.get_input.to_i
  control.queens(index-1)
elsif borough == "SI"
  control.staten_island
  View.options
  index = View.get_input.to_i
  control.staten_island(index-1)
elsif borough == "BX"
  View.bronx
else
  View.invalid
end

View.goodbye


