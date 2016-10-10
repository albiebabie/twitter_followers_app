class FollowersController < ApplicationController

  def index
    Follower.save_to_database(followers)
    @display_followers = Follower.all
  end

  private

  def followers
    @followers = client.followers
  end
end
