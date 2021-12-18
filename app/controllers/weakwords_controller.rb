class WeakwordsController < ApplicationController
  def create
    
    word = Word.find(params[:word_id])
    logger.debug("------------------------------------------------------")
    unless word.weak?(current_user)
      word.weak(current_user)
    end
    redirect_to root_path
=begin
    word = Word.find(params[:word_id])
    user = User.find_by(uid: session[:login_uid])
    user.weak_words << word
    redirect_to root_path
=end
  end
  
  def destroy
#=begin
    word = Word.find(params[:id])
    if word.weak?(current_user)
      word.unweak(current_user)
    end
    redirect_to root_path
#=end
  end
end
