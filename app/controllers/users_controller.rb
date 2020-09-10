class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def edit
     @user = User.find(params[:user])
  end

  def update
    if @user.update(user_params)
      redirect_to edit_user_path(@user)
    else
      render :edit
    end
  end

  def create
    # @user =  User.new(username: params[:username], email: params[:email], password: params[:password])
    @user=User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
