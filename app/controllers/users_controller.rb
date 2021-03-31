class UsersController < ApplicationController
  def index
    
  end

  def new
    @new_user = User.new
  end

  def create
    @new_user = User.create(sign_up_params)
    if @new_user.save
      redirect_to posts_url
    else
      flash[:alert] = "Something went wrong, please try again!"
      render :new
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password)
  end

end
