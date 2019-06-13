require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movies_index_url
    assert_response :success
  end

  test "should get show" do
    get movies_show_url
    assert_response :success
  end

  test "should get new" do
    get movies_new_url
    assert_response :success
  end

  test "should get create" do
    get movies_create_url
    assert_response :success
  end

  test "should get delete" do
    get movies_delete_url
    assert_response :success
  end

end
