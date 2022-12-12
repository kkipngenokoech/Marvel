class CreateCommentsJoinTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :tshirt, foreign_key: true
  end
end
