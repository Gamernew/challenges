require 'csv'
source_path = File.join(__dir__, "source.csv")

# it's up to you now!

CSV.foreach('source.csv') do |row|
  puts row.inspect
end
