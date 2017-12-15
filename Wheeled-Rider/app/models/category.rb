class Category < ApplicationRecord
  belongs_to :vehicle # should also belong to users the way you have it mapped out.
  has_many :comments
end
