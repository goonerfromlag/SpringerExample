require 'site_prism'
#require_relative 'searchFeature'

class HomePage < SitePrism::Page
#  CapybaraDriver.my_driver.manage.window.maximize
  set_url   "http://link.springer.com"


  element :springer_logo, 'a#logo'
  element :search_field, 'input#query'
  element :search_submit_button, 'input.search-submit'

private :springer_logo, :search_field, :search_submit_button

def check_logo_is_displayed
  wait_for_springer_logo(20)
  return springer_logo.visible?
end

def check_seachField_is_displayed
  return search_field.visible?
end

def check_seachButton_is_displayed
  return search_submit_button.visible?
end

def enter_text_in_searchField(searchText)
  wait_for_search_field(20)
  search_field.click
  search_field.set(searchText)
end

  def click_searchButton
    search_submit_button.click
    SearchResults.new
  end

end