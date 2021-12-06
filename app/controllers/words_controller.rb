class WordsController < ApplicationController
  def index
    
    @words = Word.all.order(created_at: :desc)
  end

  def new
    @word = Word.new
  end

  def create
    user = User.find_by(uid: current_user.uid)
    purposeid = Purpose.find_by(user_purpose: params[:word][:purpose]).id
    @word = Word.new(user_word: params[:word][:user_word], 
                    mean: params[:word][:mean],
                    user_id: user.id,
                    purpose_id: purposeid)
    if @word.save
      flash[:notice] = '単語を追加しました'
      redirect_to root_path
    else
      render 'new'
    end 
  end

  def destroy
    word = Word.find(params[:id])
    word.destroy
    flash[:notice] = '単語を削除しました'
    redirect_to root_path
  end
end
