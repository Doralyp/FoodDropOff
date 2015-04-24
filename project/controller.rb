require_relative 'model'
require_relative 'view'
control = FoodDropLocation.new('drop_off.csv')


View.welcome
View.prompt

borough = View.get_input

if borough == 'BK'
  control.brooklyn
elsif borough == "MN"
  control.manhattan
elsif borough == "QN"
  control.queens
elsif borough == "SI"
  control.staten_island
elsif borough == "BX"
  View.bronx
else
  View.invalid
end

View.options

