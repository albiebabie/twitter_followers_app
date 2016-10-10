class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.string :uid
      t.string :name
      # t.string :image_url
      # t.string :url

      t.timestamps null: false
    end
  end
end
