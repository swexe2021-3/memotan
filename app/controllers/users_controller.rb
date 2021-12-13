class UsersController < ApplicationController
  def index
    @users= User.all.order(created_at: :desc)
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(
    uid: params[:user][:uid],
    password: params[:user][:password],
    password_confirmation: params[:user][:password_confirmation])
    if @user.save
      render 'top/login'
      #redirect_to users_path
      flash[:notice] = '新規ユーザーを追加しました'
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
