class User < ApplicationRecord
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_one_attached :avatar
  has_many :articles, dependent: :destroy

  def name
    @name ||= self[:name].presence || email.split("@").first
  end

  protected

  def password_required?
    new_record? || password.present?
  end
end
