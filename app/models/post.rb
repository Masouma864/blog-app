class Post < ApplicationRecord
  has_many :likes, foreign_key: 'posts_id'
  has_many :comments, foreign_key: 'posts_id'
  belongs_to :user, class_name: "User"
  after_save :post_counter

  def latest_comments
    comments.order(created_at: :desc).limit(5)
  end

  private

  def post_counter
    author.update(posts_counter: author.posts.all.length)
  end
end
