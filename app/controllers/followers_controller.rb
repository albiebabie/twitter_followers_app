class FollowersController < ApplicationController

  # def new
  #   @user = User.find(params[:user_id])
  #
  # end
  def index
    # @followers = client.followers
    #
    # @followers.each do |follower|
    #   @follower = Follower.new(user_params)
    #   @follower.uid = follower.id
    #   @follower.name = follower.name
    #   @follower.create
    # end

    byebug

    @display_followers = Follower.all
  end

  private

  # def followers
  #   @followers = client.followers
  # end

  def user_params
    params.require(:current_user).permit(:id)
  end
end
