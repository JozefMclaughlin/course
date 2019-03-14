

Given("I am on the index page") do
  indexsandwich.visit_index
end


Then("I should have 5 sandwiches") do
  expect(indexsandwich.find_all_sandwich).to eq 5
end




When(/^I click on a sandwich link (.*)$/) do |name|
  indexsandwich.click_sandwich_link name
end

Then(/^I should be on a show page with id (.*)$/) do |id|
  expect(current_url).to eq "http://localhost:9292//#{id}"
end
