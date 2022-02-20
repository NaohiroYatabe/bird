class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    logger.debug  params[:user][:name]
    logger.debug  params[:user][:email]
    if @user.save
      logger.debug "if"
            redirect_to root_path
    else
      logger.debug "else"
         render :new
    end
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end