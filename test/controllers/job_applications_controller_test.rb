require 'test_helper'

class JobApplicationControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:valid_two)
    @applicant = users(:valid_applicant)
    @employer = users(:valid_employer)
  end

  test "should get index as an employer" do
    sign_in_as @employer
    get job_applications_url
    assert_response :success
  end

  test "should not get index as an applicant, should get redirected" do
    sign_in_as @applicant
    get job_applications_url
    assert_response :redirect
  end

  test "should create job application as an applicant" do
    sign_in_as @applicant
    assert_difference('JobApplication.count') do
      post job_applications_url, params: {
        job_application: {
          job_id: @job.id
        }
      }
    end

    assert_redirected_to jobs_url
  end
end
