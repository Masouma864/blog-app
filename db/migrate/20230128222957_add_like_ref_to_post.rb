class AddLikeRefToPost < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :post, null: false, foreign_key: true
  end
end
