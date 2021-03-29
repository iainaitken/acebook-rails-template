class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(sign_up_params)
    if @user.save
      redirect_to posts_url
    else
      render :new
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password)
  end
end
