class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 8 }, on: :create

  def applicant?
    type == 'Applicant'
  end

  def employer?
    type == 'Employer'
  end
end
