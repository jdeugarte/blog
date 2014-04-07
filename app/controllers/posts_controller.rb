class PostsController < ApplicationController
	skip_before_filter :verify_authenticity_token 
	
	def index
		@posts=Post.order(:created_at)
	end

	def crear
		
	end

	def show
		@post=Post.find(params[:id])
		
	end

	def reporte
		@posts=Post.all
	end
	
	def liked
		@post = Post.find(params[:id])
		a=@post.likes
		@post.likes=a+1
		@post.save
		redirect_to('/posts/show/'+params[:id])
	end
	
	def search
		@posts = Post.all	
	end	
	
	def create
		@post = Post.new(post_params)
		@post.likes=0
		@post.save
		redirect_to("/posts")
	end

	def delete
		@post=Post.find(params[:id])
		@post.delete
		redirect_to("/posts")
	end

	def update
		@post=Post.find(params[:id])
	end


	def edit
		@post=Post.find(params[:id])
		@post.update(params[:post].permit(:title, :text))

		redirect_to("/posts")
	end
	
	def like
		@post=Post.find(params[:id])
		@post.likes=@post.likes+1
		@post.save
		redirect_to("/posts")
	end
	
	def post_params
		params.require(:post).permit(:title, :text)
	end
end
