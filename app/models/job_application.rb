class JobApplication < ApplicationRecord
  belongs_to :job, counter_cache: true
  belongs_to :user # applicant

  delegate :name, to: :user, prefix: true # applicant

  validates_uniqueness_of :user_id, scope: :job_id
  validates_presence_of :user_id, :job_id
end
