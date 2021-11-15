class Comment < ApplicationRecord
  #TODO 
  belongs_to :user
  belongs_to :word
end
