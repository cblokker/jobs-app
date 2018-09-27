require 'test_helper'

class EmployerTest < ActiveSupport::TestCase
  setup do
    @employer = users(:valid_employer)
  end

  test 'valid employer' do
    assert @employer.valid?
  end
end
