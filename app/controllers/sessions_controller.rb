class SessionsController < ApplicationController
  def new
  end

  before_action :block_access, except: [:destroy]

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end

  def block_access
    if current_user.present?
      redirect_to users_path
    end
  end
end
