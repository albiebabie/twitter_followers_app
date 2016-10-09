class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key = Rails.application.secrets['twitter_app_key']
      config.consumer_secret = Rails.application.secrets['twitter_app_secret']
      config.access_token = session['access_token']
      config.access_token_secret = session['access_token_secret']
    end
  end

  helper_method :current_user

end
