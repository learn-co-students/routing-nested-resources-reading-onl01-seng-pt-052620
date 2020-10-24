class AuthorsController < ApplicationController

  def posts_index
    @author = Author.find(params[:id])
    @posts = @author.posts_index
    render template: 'posts/index'
  end 

  def post 
    @author = Author.find(params[:id])
    @post = Post.find(params[:post_id])
    render template: 'posts/show'
  end 

  def show
    @author = Author.find(params[:id])
  end

end
