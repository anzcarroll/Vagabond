class UsersController < ApplicationController
  #The only user page non-devise related. Shows the user their basic info, and their posts. You can redirect to devise options from this page
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

end
