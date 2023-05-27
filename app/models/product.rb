class Product < ApplicationRecord
    belongs_to :category #Product.fisrt.category
    has_one_attached :image
    default_scope { order(:name) }
    has_many :orders
end
