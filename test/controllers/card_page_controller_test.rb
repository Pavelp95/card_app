require 'test_helper'

class CardPageControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get card_page_show_url
    assert_response :success
  end

end
