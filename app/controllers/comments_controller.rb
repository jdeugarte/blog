class CommentsController < ApplicationController
def create
    @post = Post.find(params[:id])
    @ = @post.comments.create(params[:comment].permit(:commenter, :body))
    redirect_to '/posts/index'
  end

end
