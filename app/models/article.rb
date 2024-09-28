class Article < ApplicationRecord
  belongs_to :user

  has_rich_text :body
  has_one :rich_text, class_name: 'ActionText::RichText', as: :record

  validates :title, :body, presence: true
  validates :title, length: { minimum: 5 }

  def self.ransackable_attributes(auth_object = nil)
    ["title"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["rich_text"]
  end
end
