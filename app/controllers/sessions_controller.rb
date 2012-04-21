class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user and user.authenticate(params[:password]) # success
      session[:user_id] = user.id
      session[:card_code] = user.username
      redirect_to root_url, :notice => "Logged in successful"
    else # fail
      flash.now.alert = "Username or Password is invalid"
      render "new"
    end
  end

  def destroy
    session[:card_code] = nil
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out successful"    
  end

end

