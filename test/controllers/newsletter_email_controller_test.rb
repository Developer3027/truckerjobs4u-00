require "test_helper"

class NewsletterEmailControllerTest < ActionDispatch::IntegrationTest
  test "should get email" do
    get newsletter_email_email_url
    assert_response :success
  end

  test "should get pp_check:boolean" do
    get newsletter_email_pp_check:boolean_url
    assert_response :success
  end
end
