class UsersController < ApplicationController
  def index
    @users= User.all.order(created_at: :desc)
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(uid: params[:user][:uid], pass: params[:user][:pass])
    if @user.valid?
      @user.pass = BCrypt::Password.create(params[:user][:pass])
      @user.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path
  end
end
