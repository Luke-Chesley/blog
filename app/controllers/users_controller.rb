class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  
    # Define the authentication attribute as email
    devise :database_authenticatable, authentication_keys: [:email]
  
    # Add any additional configurations, such as password complexity rules
    validates :password, presence: true, length: { minimum: 6 }, if: -> { new_record? || changes[:password] }
  
    # Associations with other models
    has_many :posts
    has_many :comments
  
    # Custom instance methods
    def full_name
      "#{first_name} #{last_name}"
    end
  end