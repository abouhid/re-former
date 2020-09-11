class UsersController < ApplicationController
  def new
    @users = User.all
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @users = User.all

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def index
    @users = User.all
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to new_user_path
    else
      render :new
    end
  end

<<<<<<< HEAD
  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
=======
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
        redirect_to new_user_path
    else
      render :new
    end
>>>>>>> 436bb24bdc18de825627903f037db23ab37e82e4
  end

  private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
