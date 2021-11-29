class Comment < ApplicationRecord
  #TODO 
  validates :user_comment, presence: true #コメントが空ではないこと
  
  belongs_to :user, optional: true
  belongs_to :word, optional: true
end
