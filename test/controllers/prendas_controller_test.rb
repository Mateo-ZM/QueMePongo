require 'test_helper'

class PrendasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prendas_index_url
    assert_response :success
  end

end
