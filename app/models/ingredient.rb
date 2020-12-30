class Ingredient < ApplicationRecord
  has_many :doses
  belongs_to :user

  validates :name, presence: true, uniqueness: true
end
