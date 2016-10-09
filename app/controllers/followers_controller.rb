class FollowersController < ApplicationController
  def index
    @followers = client.followers
  end
end
