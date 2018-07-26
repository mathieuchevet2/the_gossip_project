class AddIndexToAll < ActiveRecord::Migration[5.2]
  def change
  	add_reference :users, :city, foreign_key: true
  	add_reference :gossips, :user, foreign_key: true
  	add_reference :likes, :user, foreign_key: true
  	add_reference :likes, :gossip,  foreign_key: true
  	add_reference :likes, :comment,  foreign_key: true
  	add_reference :tags, :gossip,  foreign_key: true
  	add_reference :comments, :user, foreign_key: true
  	add_reference :comments, :gossip, foreign_key: true
  	add_reference :comment_acomments, :comment, foreign_key: true


  end
end
