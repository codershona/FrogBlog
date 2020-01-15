  module Blog
    class PostsController < BlogController

    before_action :set_post, only: [:show, :edit, :update, :destroy]

    # GET /posts
    # GET /posts.json
    def index
      ## perform a paginated query:
      #  @posts = Post
     @posts = Post.most_recent.published.paginate(page: params[:page], per_page: 3) 
    end

    # GET /posts/1
    # GET /posts/1.json
    def show
        @post = Post.friendly.find(params[:id])
    end



  end


  end