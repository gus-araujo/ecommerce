class CategoriesController < ApplicationController
	
	def show
		@products = Product.where(:category => @category)
	end

  private

	  def set_category
	    @category = Category.find(params[:id])
	  end

end