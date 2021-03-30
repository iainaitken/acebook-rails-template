class UsersController < ApplicationController
  def index
    
  end

  def new
    @new_user = User.new
  end

  def create
    @new_user = User.create(sign_up_params)
    if @new_user.save
      p "user saved"
      redirect_to posts_url
    else
      p "print else activated"
      render :new
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password)
  end
end
