class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ingredients, dependent: :destroy
  has_many :cocktails, dependent: :destroy
  has_many :doses, through: :cocktails, dependent: :destroy
  has_many :doses, through: :ingredients, dependent: :destroy
end
