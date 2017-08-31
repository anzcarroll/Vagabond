class PostsController < ApplicationController
    def show
        @city = City.find(params[:city_id])
        @post = Post.find(params[:id])
        @user = User.find(@post.user_id)
    end

    def new
        @post = Post.new
    end

    def create
        @city = City.find(params[:city_id])
        @post = @city.posts.new(post_params)

            if @post.save
              redirect_to city_path(@city), notice: 'Post was successfully created.'
            else
               flash[:alert] = @post.errors.full_messages.join(", ")
               render :new
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @city = City.find(params[:city_id])
        @post = @city.posts.find(params[:id])
        @post.update(post_params)
        redirect_to city_post_path(@city, @post)
    end

    def destroy
        @city = City.find(params[:city_id])
        @post = @city.posts.find(params[:id])
        @post.destroy
        redirect_to city_path(@city)
    end
    private

      def post_params
        posts = params.require(:post).permit(:title, :description).merge(user_id: current_user.id)
        user_id = { user_id: current_user.id }
        posts
      end

end
