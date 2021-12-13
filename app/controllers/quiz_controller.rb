class QuizController < ApplicationController
        @@quizlist = []
    def start
        word = Word.where(purpose_id: params[:purpose_id])
        @@quizlist = word.pluck(:id)
        @quizlist_w_id = @@quizlist.pop
        render 'next_quiz'
    end
    
    def correct
        @correctmean = params[:mean] 
        @userresponse = params[:response]
    end
    
    def next_quiz
        if @@quizlist.size > 0
            @quizlist_w_id = @@quizlist.pop
        else
            redirect_to words_path
        end
    end
end
