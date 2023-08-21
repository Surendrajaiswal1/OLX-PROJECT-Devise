class CategoriesController < ApplicationController
    def index
        @categories = Category.all
      end
    
      def show
       @products = SellProduct.joins(:category).available.merge(Category.where(id:params[:id]))
      end    
end
