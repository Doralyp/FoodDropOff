require 'csv'
module Parser
  def parsing(file)
    csv = CSV.read(file, :headers => true, :header_converters => :symbol).map { |row| row.to_hash}
  end
end




# p obj.find_by(:Borough)


