class Homepage

  def initialize driver
    @driver = driver
  end


  def check_homepage_displayed
    @driver.find_element(:id, "protect.budgetwatch:id/action_settings").displayed?
  end

  def click_on_budget_page
    @driver.find_elements(:id, "protect.budgetwatch:id/menu")[0].click
  end
  
end
