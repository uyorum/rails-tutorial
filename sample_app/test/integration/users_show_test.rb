require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  test "show user" do
    get user_path(@user)
    assert_template 'users/show'

    @user.toggle!(:activated)
    get user_path(@user)
    assert_redirected_to root_url
  end
end
