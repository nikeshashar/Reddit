class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:index]
	def index
		@posts = Post.all
	end

	def new
		@new_post = Post.new
	end


end
