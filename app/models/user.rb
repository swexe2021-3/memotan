class User < ApplicationRecord
    #TODO: validates
    has_many :weakwords
    has_many :words
    has_many :commnents
end
