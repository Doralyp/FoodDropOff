require_relative 'model'
require_relative 'view'

View.welcome
View.prompt

borough = View.get_input

if borough == 'BK'
  #do whatever
elsif borough == "MN"
  #do whatever
elsif borough == "QN"
  #do whatever
elsif borough == "SI"
  #do whatever
else
  View.invalid


end

