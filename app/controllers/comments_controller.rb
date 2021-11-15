class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def create
    user = User.find_by(uid: session[:login_uid])
    #@comment = Comment.new(, user_id: user.id,)
  end
end
