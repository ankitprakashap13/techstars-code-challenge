class Company < ApplicationRecord
  has_many :founders
  has_many :categories
end
