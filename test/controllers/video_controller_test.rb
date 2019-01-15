require 'test_helper'

class VideoControllerTest < ActionDispatch::IntegrationTest
  test "should get chef_recipe:references" do
    get video_chef_recipe:references_url
    assert_response :success
  end

  test "should get url:text" do
    get video_url:text_url
    assert_response :success
  end

end
