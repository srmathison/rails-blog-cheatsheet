class CommentsController < ApplicationController

  def create
    # find a post by the foreign key post id
    @post = Post.find(params[:post_id])
    # define comment with the params we created
    @comment = @post.comments.create(params[:comment].permit(:name, :body))

    redirect_to post_path(@post)
  end

  def destroy
    # find a post by the foreign key post id
    @post = Post.find(params[:post_id])
    # find the comment for the post with comments params 
    @comment = @post.comments.find(params[:id])
    # call the destroy method on that post
    @comment.destroy

    redirect_to post_path(@post)
  end

end
