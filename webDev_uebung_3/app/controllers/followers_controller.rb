class FollowersController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @follower = @user.followers.create(params[:follower].permit(:follower, :body))
    redirect_to user_path(@user)
  end
end
