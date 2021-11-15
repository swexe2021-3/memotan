class Word < ApplicationRecord
    #TODO: validates
    has_many :weakwords
    has_many :commnents
    
end
