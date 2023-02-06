class PostsController < ApplicationController
 

  def index
    @posts = @user.posts
  end

  def show
    @post = @user.posts.find(params[:post_id])
  end


 
end
