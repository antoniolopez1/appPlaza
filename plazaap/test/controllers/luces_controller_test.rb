require 'test_helper'

class LucesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get luces_index_url
    assert_response :success
  end

end
