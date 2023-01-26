class CreateComment < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :authorId
      t.text :postId
      t.text :text

      t.timestamps
    end
  end
end
