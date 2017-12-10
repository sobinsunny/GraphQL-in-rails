class Farmer < ApplicationRecord
  belongs_to :user
  has_many :products
end
