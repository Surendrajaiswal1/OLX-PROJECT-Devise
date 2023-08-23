class CategoriesController < ApplicationController

  def show
   @products = SellProduct.joins(:category).available.merge(Category.where(id:params[:id]))
  end

end
