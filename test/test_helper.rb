ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # move into universal helper method
  def sign_in_as(user)
    post "/login", params: {
      login: {
        email: user.email,
        password: 'testpassword'
      }
    }
  end
end
