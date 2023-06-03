class Product < ApplicationRecord
    belongs_to :category #Product.fisrt.category
    has_one_attached :image
    has_many :orders
end
