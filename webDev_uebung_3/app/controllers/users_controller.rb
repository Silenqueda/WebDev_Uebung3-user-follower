class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if  @user.save
    redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  @user = User.find(params[:id])

  #hier stimmt was nicht. . . undefined method 'permit' line 32
  if @user.update(params[:user].permit(:title, :text))
    redirect_to @user
  else
    render 'edit'
  end
end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end


 private
  def user_params
    params.require(:user).permit(:title, :text)
  end
end
