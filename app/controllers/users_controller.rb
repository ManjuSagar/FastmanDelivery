class UsersController < ApplicationController

  def index
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    flash[:notice] = "Thank you we will contact you soon."
    redirect_to :back
  end

  private

  def user_params
     params.require(:user).permit(:name, :email, :phone)
  end

end