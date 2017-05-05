require 'test_helper'

class UsersHomeTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
    log_in_as(@user)
  end

  test "user home" do
    get root_path
    assert_match @user.following.count.to_s, response.body
    assert_match @user.followers.count.to_s, response.body
  end
end
