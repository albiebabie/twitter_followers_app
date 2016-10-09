class SessionsController < ApplicationController
  def create
    @user = User.from_omniauth(auth_hash)
    flash[:success] = "Welcome, #{@user.name}!"
    redirect_to root_path
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
