require 'test_helper'

class UserJobAppControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_job_app_index_url
    assert_response :success
  end

end
