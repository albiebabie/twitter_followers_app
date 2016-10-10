class FollowersController < ApplicationController

  def index
    Follower.save_to_database(followers_hash)
    @display_followers = Follower.all
  end

  private

  def followers_hash
    @followers = client.followers
  end
end
