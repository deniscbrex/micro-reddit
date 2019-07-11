# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, length: { maximum: 25 }
  validates :mail, presence: true, length: { maximum: 150 }, format: { with: URI::MailTo::EMAIL_REGEXP }
end
