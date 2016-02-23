

Given /^I'm on the springer homepage and the search tool is displayed$/ do
  @home = HomePage.new
  @home.load
  expect(@home.check_logo_is_displayed)
  expect(@home.check_seachButton_is_displayed)
  expect(@home.check_seachField_is_displayed)
end


Given(/^I enter '(.*)' in the search field$/) do |query|
  @home.enter_text_in_searchField(query)
end

And(/^I click the submit button$/) do
  @home.click_searchButton
end

Then(/^the search results header contains '(.*)'$/) do |query|
  @results = SearchResults.new
  expect(@results.search_results_header_text.include?(query))
end

Then(/^the search results contain '(.*)'$/) do |query|
  @results = SearchResults.new
  expect(@results.first_search_result_text.include?(query))
  puts @results.first_search_result_text
end

Then(/^the no results message is displayed$/) do
  @results = SearchResults.new
  expect(@results.check_no_results_msg_is_displayed)
  expect(@results.check_no_results_msg_text.include?("Sorry - we couldn’t find what you are looking for."))
end