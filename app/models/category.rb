class Category < ApplicationRecord
    has_many :products # Category.first.products
end
