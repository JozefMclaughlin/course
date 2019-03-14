class SandwichIndex
  include Capybara::DSL

  def visit_index
    visit('/')
  end

  def click_sandwich_link name
    click_link(name)

  end

  def find_all_sandwich
    find_all('.content').length
  end
end
