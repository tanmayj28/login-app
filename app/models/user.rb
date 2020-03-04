# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  enum gender: {male: 0, female: 1, others: 2}
  validates :first_name, :last_name, :email, :password, :country, presence: true
  validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
end
