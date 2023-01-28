class Like < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  after_save :like_counter

  validates :likes_counter, numericality: { greater_than_or_equal_to: 0 }

  private

  def like_counter
    post.update(likes_counter: post.likes.all.length)
  end
end
