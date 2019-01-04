class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def edit
		@post = Post.find params[:id]
	end

	def update
		# raise params.inspect
		@article = Post.find(params[:id])
		@article.update(params[:post])
		redirect_to article_path(@article)
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end
end
