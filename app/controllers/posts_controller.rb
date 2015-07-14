class PostsController < ApplicationController
  
  def index
    # this will list all the posts with the newer posts ontop
    @posts = Post.all.order('created_at DESC')
  end

  def new
  end

  # in order to to save post
  def create
    # this creates/saves the post
    @post = Post.new(post_params)
    @post.save

    redirect_to @post 
  end

  def show
    # define @post
    # find post by post id
    @post = Post.find(params[:id])
  end

  # security feature 
  # WARNING this must be at the end of all methods 
  # or else any methods below will be private/errors will occur
  private
  # which params we will allow - strong parameters
  # post_params we defined above in Post.new
  def post_params 
    # permiting the title and body for the post
    params.require(:post).permit(:title, :body)
  end

end
