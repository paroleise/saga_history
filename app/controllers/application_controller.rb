class ApplicationController < ActionController::Base

  private
  def request_password
    unless session[:mochi_id]
      redirect_to authorization_path
    end
  end
end
