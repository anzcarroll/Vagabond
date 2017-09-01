class PostsController < ApplicationController
    #post show page to show details about what city the post was in, who posted it, and post details
    def show
        @city = City.find(params[:city_id])
        @post = Post.find(params[:id])
        @user = User.find(@post.user_id)
    end
    #page to render the form for a NEW post
    def new
        @post = Post.new
    end
    #non visual method to verify if a post is created and saved, and redirect if post saves
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
    #Page to render the form to EDIT a post
    def edit
        @post = Post.find(params[:id])
    end
    #non visual method to update the post and redirect the user
    def update
        @city = City.find(params[:city_id])
        @post = @city.posts.find(params[:id])
        @post.update(post_params)
        redirect_to city_post_path(@city, @post)
    end
    #method to delete a post upon delete button being clicked on the postshow page
    def destroy
        @city = City.find(params[:city_id])
        @post = @city.posts.find(params[:id])
        @post.destroy
        redirect_to city_path(@city)
    end
    private
      # private method to ensure only the proper parameters come if on the create and update methods
      def post_params
        posts = params.require(:post).permit(:title, :description).merge(user_id: current_user.id)
        user_id = { user_id: current_user.id }
        posts
      end

end
