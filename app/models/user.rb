class User < ApplicationRecord
    #TODO: validates
    validates :uid, presence: true #ユーザー名が空ではないこと
    validates :uid, uniqueness: true #ユーザー名が重複しないこと
  
    validates :password, presence: true, confirmation: true

    
    has_many :weakwords, dependent: :destroy
    has_many :words, dependent: :destroy
    has_many :commnents
    
    attr_accessor :password, :password_confirmation
    
    def password=(val)
        if val.present?
        self.pass = BCrypt::Password.create(val)
        end
        @password = val
    end
end
