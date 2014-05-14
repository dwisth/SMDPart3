require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get societyAdvSearch" do
    get :societyAdvSearch
    assert_response :success
  end

  test "should get eventAdvSearch" do
    get :eventAdvSearch
    assert_response :success
  end

  test "should get dispResults" do
    get :dispResults
    assert_response :success
  end

end
