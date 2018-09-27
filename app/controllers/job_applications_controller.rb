class JobApplicationsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_applicant!, only: [:create]
  before_action :authenticate_employer!, only: [:index]

  def index
    @jobs = current_user.jobs.includes(job_applications: :user)
  end

  def create
    if current_user.apply(job_applicaion_params[:job_id])
      redirect_to jobs_url, notice: "Applied to job"
    else
      flash.now.alert = "Job application failed"
      redirect_to :root
    end
  end

  private

  def job_applicaion_params
    params.require(:job_application).permit(:job_id)
  end
end