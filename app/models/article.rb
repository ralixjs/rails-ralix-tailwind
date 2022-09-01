class Article < ApplicationRecord
  belongs_to :user

  validates :title, :body, presence: true
  validates :title, length: { minimum: 5 }
  validates :body, length: { minimum: 50 }
end
