Given("I access the bbc login page") do
  @bbcsite = BBCSite.new
  @bbcsite.bbc_homepage.visit_homepage
  @bbcsite.bbc_homepage.click_sign_in
  expect(@bbcsite.bbc_homepage.current_url).to eq 'https://account.bbc.com/signin'
end

When("I input a correct username") do
  @bbcsite.bbc_sign_in_page.fill_in_username 'rwhitehouse@spartaglobal.com'
end

When("I input a correct password") do

  @bbcsite.bbc_sign_in_page.fill_in_password 'Password123'
end

When("I click login") do
  @bbcsite.bbc_sign_in_page.click_sign_in
end

Then("I will be logged in") do
  expect(@bbcsite.bbc_homepage.sign_in_link_text).to eq 'Your accout'
end

Then("I will see an error for blank details") do
  expect(@bbcsite.bbc_sign_in_page.find_username_err_msg).to eq "Something's missing. Please check and try again."
  expect(@bbcsite.bbc_sign_in_page.find_password_err_msg).to eq "Something's missing. Please check and try again."
end
