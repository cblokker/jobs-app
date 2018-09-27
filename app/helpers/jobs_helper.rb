module JobsHelper
  def job_applications_count(job)
    count = job.job_applications_count
    (count == 1) ? "#{count} applicant" : "#{count} applicants"
  end
end
