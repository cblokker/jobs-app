class JobsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_applicant!, only: [:index]
  before_action :authenticate_employer!, only: [:new, :create]

  def index
    @jobs = Job.includes(:employer).all.order(:created_at)
    @job_application = JobApplication.new
  end

  def new
    @job = Job.new
  end

  def create
    if current_user.create_new_job_opening(job_params)
      redirect_to job_applications_url, notice: "New job created"
    else
      flash.now.alert = 'Incorrect email or password, try again.'
      render 'new'
    end
  end

  private

  def job_params
    params.require(:job).permit(:title, :description)
  end
end
