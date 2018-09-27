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

  # polymorphic approach
  # belongs_to :userable, polymorphic: true, dependent: :destroy
  # user just has :email, :password, :and deals w/ all auth
end
