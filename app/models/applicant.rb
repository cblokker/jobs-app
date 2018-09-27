class Applicant < User
  has_many :job_applications, foreign_key: :user_id, dependent: :destroy

  def has_applied_to?(job)
    JobApplication.find_by(job: job, user: self).present?
  end

  def apply(job_id)
    JobApplication.new(job_id: job_id, user: self).save
  end
end