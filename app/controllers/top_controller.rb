class TopController < ApplicationController
  def main
    if current_user
      redirect_to words_path
    else
      render 'login'  
    end
  end
  
  def login
    user = User.find_by(uid: params[:uid])
    if user && BCrypt::Password.new(user.pass) == params[:pass]
      session[:login_uid] = user.uid
      redirect_to words_path
    else
      render 'login'
    end
  end
  
  def logout
    session.delete(:login_uid)
    render 'login'
  end
end
