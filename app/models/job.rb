class Job < ApplicationRecord
  belongs_to :employer, class_name: 'Employer', foreign_key: 'employer_id'
  has_many :job_applications, dependent: :destroy
  has_many :applicants, through: :job_applications

  delegate :name, to: :employer, prefix: true
end
