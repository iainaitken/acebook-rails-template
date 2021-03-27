class User < ApplicationRecord
  # has_one_attached :image

  validates :name, presence: true # turn off as per spec
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :password, presence: true, length: { minimum: 6, maximum: 10}
end
