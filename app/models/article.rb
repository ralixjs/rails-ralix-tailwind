class Article < ApplicationRecord
  belongs_to :user

  has_rich_text :body

  validates :title, :body, presence: true
  validates :title, length: { minimum: 5 }
end
