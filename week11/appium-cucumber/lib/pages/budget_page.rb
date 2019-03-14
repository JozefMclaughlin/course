class Budgetpage

  def initialize driver
    @driver = driver
    @name = 'budget name'
  end

  def check_page
    @driver.find_element(:id, "protect.budgetwatch:id/action_calendar").displayed?
  end

  def create_budget
    @driver.find_element(:id, "protect.budgetwatch:id/action_add").click
    @driver.find_element(:id, "protect.budgetwatch:id/budgetNameEdit").send_keys (@name)
    @driver.find_element(:id, "protect.budgetwatch:id/valueEdit").send_keys ('30.00')
    @driver.find_element(:id, "protect.budgetwatch:id/action_save").click
  end

  def check_for_added_budget
    @driver.find_elements(:id, "protect.budgetwatch:id/budgetName")[-2].text
  end

  def access_edit
    (@driver.find_elements(:id, "protect.budgetwatch:id/budgetName")[-2]).touch_action(:press,  hold: 1000)
  end

end
