
Given("I have a data table") do |table|

  # table is a Cucumber::MultilineArgument::DataTable
  #table.raw converts the table into an array including the column headers
  # table .row convertss the table into an array excluding the column headers
  @data = table.rows
end

Then("I am able to print out the data") do
  @data.each do |i|
    puts "#{i[0]} the goose has a role of #{i[1]}"
  end
end
