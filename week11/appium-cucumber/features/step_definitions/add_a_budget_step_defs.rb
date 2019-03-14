Given("I can access the app") do
  expect(homepage.check_homepage_displayed).to be true
end

When("I click budget") do
  homepage.click_on_budget_page

end

Then("the budget page opens") do
expect(budgetpage.check_page).to be true
end

When("I enter a budget") do
  budgetpage.create_budget
end

Then("the budget is saved and displayed") do
  expect(budgetpage.check_for_added_budget).to eq 'budget name'
end

Given("a budget is displayed") do
  budgetpage.create_budget
  expect(budgetpage.check_for_added_budget).to eq 'budget name'
end

When("I delete the budget") do
  budgetpage.access_edit

end

Then("it will be removed form the list") do
  pending # Write code here that turns the phrase above into concrete actions
end
