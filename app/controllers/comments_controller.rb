class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  
  def new
    @comment = Comment.new
  end
  
  def create
    #user = User.find_by(uid: session[:login_uid])
    @comment = Comment.new(user_comment: params[:comment][:user_comment],
                                user_id: nil,
                                word_id: params[:comment][:word_id])
    if @comment.save!
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to root_path
  end
end
