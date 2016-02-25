class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_filter :brands
  def brands
    products = Product.all
    @brands = []

    products.each do |product|
      @brands.push(product.brand) unless @brands.include?(product.brand)
    end
    @brands
  end
end
