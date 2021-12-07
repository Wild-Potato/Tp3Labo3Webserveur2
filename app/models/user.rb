#Raphael Bergeron 2021-11-05
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:github]

  # Relations
  has_many :recettes

  # Validations
  validates :email, uniqueness: true, presence: true
  validate :valide_email # Voir la méthode privée du même nom
  #validates :nom, :prenom, presence: true

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    unless user
       user = User.create(
          prenom: data['login'],
          email: data['email'],
          password: Devise.friendly_token[0,20],
          isAdmin: 1
         
        )
    end
    user
  end


  # Fonctionnalité privé au modèle
  private
  def valide_email
    unless self.email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      errors.add(:email, "is not an email")
    end
  end
end
