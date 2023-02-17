class AddFieldsToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :review, :string
    add_column :reviews, :picture, :image
  end
end
