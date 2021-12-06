class QuizController < ApplicationController
    def start
        word = Word.where(purpose_id: params[:purpose_id])
        quizlist = word.pluck(:id)
        if @quizlist_w_id = quizlist.pop
        render 'start'
        else
        redirect_to words_path
        end
    end
    
    def correct
        @correctmean =  Word.find(@quizlist_w_id).mean
        
        @userresponse = params[:response]
    end
end
