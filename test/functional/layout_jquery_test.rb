require File.dirname(__FILE__) + '/../test_helper'

class LayoutJqueryTest < ActionController::TestCase
  setup do
    @controller = WelcomeController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    User.current = nil
    @request.session[:user_id] = 1
  end

  test "jquery is included with noConflict() mode by default" do
    get :index
    assert_response :success
    assert_tag :script, :attributes => { :src => /jquery(.*)\.min\.js/ }
    assert_tag :script, :attributes => { :src => /jquery(.*)\.min\.js/ }
    assert_tag :script, :content => /jQuery\.noConflict\(\)/
  end
end
