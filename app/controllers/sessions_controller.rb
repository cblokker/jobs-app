class SessionsController < ApplicationController
  def new
    if current_user.try(:applicant?)
      redirect_to jobs_path
    elsif current_user.try(:employer?)
      redirect_to job_applications_path
    end
  end

  def create
    user = User.find_by(email: params[:login][:email].downcase)
    if user && user.authenticate(params[:login][:password]) 
      session[:user_id] = user.id.to_s
      redirect_to root_path, notice: 'Successfully logged in!'
    else
      flash.now.alert = 'Incorrect email or password, try again.'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path, notice: 'Logged out!'
  end
end
