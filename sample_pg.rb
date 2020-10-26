# Use the pg library
require 'pg'
# PG::connect(dbname: "goya")により、rubyからgoyaDBに接続し
# Store the connection information in a variable named connection
connection = PG::connect(dbname: "goya")
connection.internal_encoding = "UTF-8"
begin
  #Manipulate PostgreSQL using the # connection variable
  # .exec "select weight, give_for from crops;" in goyaDB
  #Execute the # SQL statement directly and store the result in the result variable
  result = connection.exec("select weight, give_for from crops where give_for not in ('自家消費');")
  # Process each fetched line
  result.each do |record|
      # Take each line and output it on the terminal with puts
      puts "Goya size：#{record["weight"]}　Sold by：#{record["give_for"]}"
  end
ensure
  #Finally, .finish disconnects the connection to the database
  connection.finish
end
#skdjfghksjdfgh
