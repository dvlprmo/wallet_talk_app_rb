require 'test_helper'

class PostersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posters_index_url
    assert_response :success
  end

  test "should get show" do
    get posters_show_url
    assert_response :success
  end

  test "should get index" do
    get posters_index_url
    assert_response :success
  end

  test "should get show" do
    get posters_show_url
    assert_response :success
  end

  test "should get edit" do
    get posters_edit_url
    assert_response :success
  end

  test "should get new" do
    get posters_new_url
    assert_response :success
  end

end
