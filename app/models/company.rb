class Company < ApplicationRecord
  has_many :founders
  has_many :categories

  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :founded_on, presence: true
end
