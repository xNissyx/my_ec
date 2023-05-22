class Product < ApplicationRecord
  validates :name, :caption, :price, presence: true
end
