class PostsController < ApplicationController
    
    def index
        @posts = Post.all.order(created_at: 'desc')
    end
    
    def show
        @posts = Post.find(params[:id])
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to posts_path
        else
            # p "エラー確認: #{@post.errors.inspect}"
            render "new", status: :unprocessable_entity
        end
    end
    
    private
    def post_params
        params.require(:post).permit(:title, :body)
    end
end
