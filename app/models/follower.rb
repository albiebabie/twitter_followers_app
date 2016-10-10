class Follower < ActiveRecord::Base

  belongs_to :user

  def self.save_to_database(followers)
    followers.each do |follower|
      Follower.create(
      uid: follower.id, name: follower.name,
      screen_name: follower.screen_name,
      url: "https://twitter.com/#{follower.screen_name}"
      )
    end
  end
end
