class Follower < ActiveRecord::Base

  belongs_to :user, class_name: "User", foreign_key: "user_id"

  # def self.save_to_database(followers)
  #   followers.each do |follower|
  #     @follower = Follower.new()
  #
  #     .create(
  #     uid: follower.id, name: follower.name
  #     )
  #   end
  # end

end
