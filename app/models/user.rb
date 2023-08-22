class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  # モデルの関連やバリデーションなどを記述
end
