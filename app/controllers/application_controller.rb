# coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  private
    def current_user
      @current_user ||= Staff.find(session[:card_code]) if session[:card_code]
    end

    def authorize
      redirect_to login_path, :alert => "Not Authorized!" if current_user.nil?
    end

    def is_admin?
      session[:card_code] == '0000'
    end

    def is_boss?
      u = User.find_by_username(session[:card_code])
      u.roles =~ /boss/
    end

  helper_method :current_user, :authorize, :is_admin?, :is_boss?
end
