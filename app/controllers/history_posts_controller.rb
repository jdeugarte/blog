class HistoryPostsController < ApplicationController

	def create
    @post = Post.find(params[:post_id])
    @hystory_post = @post.hystory_post.create(params[:comment].permit(:commenter, :body))
    redirect_to post_path(@post)
  end

end
