class Word < ApplicationRecord
    #TODO: validates
    has_many :weakwords
    has_many :commnents
=begin
    def weak(user)
      weakwords.create(user_id: user.id)
    end
    
    def unweak(user)
      weakwords.find_by(user_id: user.id).destroy
    end
    
    def weak?(user)
      weak_users.include?(user)
    end
=end
end
