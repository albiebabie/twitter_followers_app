class Follower < ActiveRecord::Base

  belongs_to :user

  def self.save_to_database(followers_hash)
    followers_hash.each do |follower|
      Follower.find_or_create_by(
      uid: follower.id, name: follower.name,
      screen_name: follower.screen_name,
      url: "https://twitter.com/#{follower.screen_name}"
      )
    end
  end
end
