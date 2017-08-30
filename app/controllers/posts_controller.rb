class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @city = City.find(params[:city_id])
        @post = @city.posts.create(post_params)
        redirect_to city_path(@city) 
    end
    private
    
      def post_params
        posts = params.require(:post).permit(:title, :description).merge(user_id: current_user.id)
        user_id = { user_id: current_user.id }
        posts
      end
    
end
