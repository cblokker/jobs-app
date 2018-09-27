require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:valid)
    Job.last.destroy # hack. why can't we just not load this invalid fixure?
    @applicant = users(:valid_applicant)
    @employer = users(:valid_employer)
  end

  test "should get index as an applicant" do
    sign_in_as @applicant
    get jobs_url
    assert_response :success
  end

  test "should not get index as an applicant, should get redirected" do
    get jobs_url
    assert_response :redirect
  end

  test "should get new job as an employer" do
    sign_in_as @employer
    get new_job_url
    assert_response :success
  end

  test "should not get new job as an applicant, should be redirected" do
    get new_job_url
    assert_response :redirect
  end

  test "should create job as an employer" do
    sign_in_as @employer
    assert_difference('Job.count') do
      post jobs_url, params: {
        job: {
          title: @job.title,
          description: @job.description,
          employer_id: @job.employer_id
        }
      }
    end

    assert_redirected_to job_applications_url
  end
end
