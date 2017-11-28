class Vehicle < ApplicationRecord
  has_many :categories, dependent: :destroy
end
