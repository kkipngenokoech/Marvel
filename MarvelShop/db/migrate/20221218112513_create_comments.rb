class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.string :feedback

      t.timestamps
    end
  end
end
