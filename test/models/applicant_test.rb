require 'test_helper'

class ApplicantTest < ActiveSupport::TestCase
  setup do
    @applicant = users(:valid_applicant)
    @job = jobs(:valid)
   end

  test 'valid applicant' do
    assert @applicant.valid?
  end

  test 'has applied to' do
    @applicant.apply(@job.id)
    @applicant.apply(@job.id)
    assert @applicant.has_applied_to?(@job)
  end
end
