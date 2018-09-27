require 'test_helper'

class JobApplicationTest < ActiveSupport::TestCase
  setup do
    @job_application = job_applications(:valid)
  end

  test 'valid job application' do
    assert @job_application.valid?
  end

  test 'invalid if applicant applies to same job' do
    @job_application_dup = @job_application.dup
    assert @job_application.valid?
    assert @job_application_dup.invalid?
  end
end
