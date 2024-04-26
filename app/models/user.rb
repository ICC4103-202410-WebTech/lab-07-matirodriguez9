class User < ApplicationRecord

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { minimum: 6 }
    
    before_save :downcase_email

    has_many :posts

    private

    def downcase_email
        self.email = email.downcase
    end
end