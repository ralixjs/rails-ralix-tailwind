class User < ApplicationRecord
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :omniauthable,
         omniauth_providers: [:facebook, :google_oauth2, :github]

  has_one_attached :avatar
  has_many :articles, dependent: :destroy

  def name
    @name ||= self[:name].presence || email.split("@").first
  end

  def self.from_omniauth(auth)
    data = auth.info

    User.where(email: data['email']).first_or_create do |user|
      user.name = data['name']
      user.password = Devise.friendly_token[0,20] if user.new_record?
    end
  end

  def self.ransackable_attributes(auth_object = nil)
    ["name", "email", "created_at"]
  end

  protected

  def password_required?
    new_record? || password.present?
  end
end
