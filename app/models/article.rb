class Article < ApplicationRecord
  belongs_to :user

  has_rich_text :body

  validates :title, :body, presence: true
  validates :title, length: { minimum: 5 }

  def self.ransackable_attributes(auth_object = nil)
    ["title", "body"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
