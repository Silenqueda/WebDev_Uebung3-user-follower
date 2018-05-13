class FollowersController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @follower = @user.followers.create(params[:follower].permit(:follower, :body))

    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @follower = @user.follower.find(params[:id])
    @follower.destroy

    redirect_to user_path(@user)
  end
end
