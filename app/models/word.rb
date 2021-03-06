class Word < ApplicationRecord
    #TODO: validates
    validates :user_word, presence: true
    validates :mean, presence: true
    validates :purpose, presence: true
    
    belongs_to :user
    belongs_to :purpose
    has_many :weakwords, dependent: :destroy
    has_many :weak_users, through: :weakwords, source: :user
    has_many :commnents
#=begin
    def weak(user)
      weakwords.create(user_id: user.id)
    end
    
    def unweak(user)
      weakwords.find_by(user_id: user.id).destroy
    end
    
    def weak?(user)
      weak_users.include?(user)
    end
#=end
end
