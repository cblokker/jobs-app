require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
   setup do
    # @applicant = users(:valid_applicant) 
    sign_in_as users(:valid_applicant) 
   end

   test "logged in" do 
      # get "/jobs"
      # assert_response :success
   end 

   test "not authenticated should get redirect" do
     # get :show
     # assert_response :redirect
  end

  def sign_in_as(user)
    post "/login", params: {
      login: {
        email: user.email,
        password: 'testpassword'
      }
    }
  end
end

# users(name).perishable_signature )