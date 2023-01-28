class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  after_save :comment_counter

  private

  def comment_counter
    post.update(comments_counter: post.comments.all.length)
  end
end
