class Category < ApplicationRecord
  belongs_to :vehicle
  has_many :comments, dependent: :destroy
end
