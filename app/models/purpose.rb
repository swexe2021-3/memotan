class Purpose < ApplicationRecord
    validates :user_purpose, presence: true #目的が空ではないこと
    validates :user_purpose, uniqueness: true #目的が重複しないこと
    
    has_many :words
end
