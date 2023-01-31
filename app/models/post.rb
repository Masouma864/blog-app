class Post < ApplicationRecord

  belongs_to :user
  has_many :comments
  has_many :likes
  after_save :update_posts_counter
  has_many :likes, foreign_key: 'posts_id'
  has_many :comments, foreign_key: 'posts_id'
  belongs_to :user, class_name: 'User'
  after_save :post_counter


  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :likes_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }

  def update_posts_counter
    user.update(posts_counter: user.posts.count)
  end

  def most_recent_5_comments
    comments.order(created_at: :DESC).limit(5)
  end
end
