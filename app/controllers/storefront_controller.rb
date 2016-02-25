class StorefrontController < ApplicationController
  def all_items
    @products = Product.all
  end

  def items_by_category
    @category = Category.find(params[:cat_id])
    @products_by_cat = @category.products
  end

  def items_by_brand
    @brand_name = params[:brand]
    @products = Product.all
    @products_by_brand = []

    @products.each do |product|
      @products_by_brand.push(product) if product.brand == params[:brand]
    end
  end
end
