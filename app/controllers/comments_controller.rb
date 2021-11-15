class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def create
    user = User.find_by(uid: session[:login_uid])
    @comment = Comment.new(user_comment: params[:word][:comment],
                                user_id: user.id,
                                word_id: word_id)
    if @comment.save
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
