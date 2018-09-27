require 'test_helper'

class JobTest < ActiveSupport::TestCase
  test 'valid job' do
    @job = jobs(:valid)
    assert @job.valid?
  end

  test 'invalid without employer' do
    @job = jobs(:invalid)
    assert @job.invalid?
  end
end
