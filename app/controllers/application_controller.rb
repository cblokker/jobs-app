class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate_user!
    redirect_to login_path unless current_user
  end

  def authenticate_applicant!
    redirect_to job_applications_path unless current_user.try(:applicant?)
  end

  def authenticate_employer!
    redirect_to jobs_path unless current_user.try(:employer?)
  end

  def authorize
    if current_user.nil?
      redirect_to login_path, alert: 'You must be logged in to access this page.'
    end
  end
end
