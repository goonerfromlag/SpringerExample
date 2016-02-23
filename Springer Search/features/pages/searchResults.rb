
class SearchResults < SitePrism::Page
  set_url_matcher /springer.com\/query\?.*/
 @msgLIST = []
 @msgListText = []
  element :search_results_header, 'div.header h1'
  element :no_results_msg, 'div#no-results-message'
  element :no_results_msg_list, 'div#no-results-message ul'
  element :first_search_result, '.content-item-list>:nth-child(1)>h2>a'

 def search_results_header_text
   wait_for_search_results_header(20)
   return search_results_header.text
 end

  def check_no_results_msg_is_displayed
    wait_for_no_results_msg(10)
    return no_results_msg.visible?
  end

  def check_no_results_msg_text
    wait_for_no_results_msg(10)
    return no_results_msg.text
  end

  def first_search_result_text
    wait_for_first_search_result(10)
    return first_search_result.text
  end
  end
