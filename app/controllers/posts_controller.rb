class PostsController < ApplicationController
    
    def index
        @posts = Post.all.order(created_at: 'desc')
        # @posts = Post.find(params[:id])
    end
    
end
