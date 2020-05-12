require 'test_helper'

class DenialControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get denial_index_url
    assert_response :success
  end

end
