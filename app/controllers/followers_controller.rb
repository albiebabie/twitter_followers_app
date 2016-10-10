class FollowersController < ApplicationController

  # def create
    # Follower.save_to_database(followers_hash)
    # redirect_to :action => 'index'
  # end

  def index
    Follower.save_to_database(followers_hash)
    @display_followers = Follower.all
  end

  private

  def followers_hash
    @followers = client.followers
  end
end
