class Comment < ApplicationRecord
  #TODO 
  belongs_to :user, optional: true
  belongs_to :word, optional: true
end
