class SessionsController < ApplicationController

def new
  end

  def create
    user = User.find_by(:email => params[:email])
    if user.present? #&& user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_url(user), :notice => "Welcome back #{user.email}"
    else
      logger.info "Somebody tried to login with an email of #{params[:email]}"
      flash[:error] = "Something went wrong please try again!"
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "Signed out successfully."
  end

end
