class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  # モデルの関連やバリデーションなどを記述

  # モデルの関連
  has_many :articles, dependent: :destroy
  has_many :article_likes, dependent: :destroy
  has_many :comments, dependent: :destroy
end
