class CommentsController < ApplicationController
  def index
    @comments = Comment.where(word_id: params[:id])
  end
  
  def new
    @comment = Comment.new(word_id: params[:id])
  end
  
  def create
    user = current_user
    @comment = Comment.new(user_comment: params[:comment][:user_comment],
                                user_id: user,
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
