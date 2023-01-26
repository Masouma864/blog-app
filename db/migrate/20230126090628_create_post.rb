class CreatePost < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :authorId
      t.string :title
      t.text :text
      t.integer :comments_counter
      t.integer :like_counter

      t.timestamps
    end
  end
end