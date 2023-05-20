class ExtraController < ApplicationController
    def new
    end
  
    def index
      @categories = Category.all
    end
    def show_products
      @products = Product.all
    end
  end
  