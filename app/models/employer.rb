class Employer < User
  has_many :jobs, dependent: :destroy
  has_many :job_applications, through: :jobs

  def create_new_job_opening(job_params)
    Job.new(job_params.merge!(employer: self)).save
  end
end
