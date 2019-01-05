# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, uniqueness: { case_sensitive: false }, presence: true, length: { minimum: 3, maximum: 30 }
  has_many :messages
  has_secure_password
end
