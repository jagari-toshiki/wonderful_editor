class Article < ApplicationRecord
  belongs_to :user
  has_many :article_likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { in: 5..100 }
  validates :body, presence: true
end
