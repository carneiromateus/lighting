class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  def getProducts

  	products = Spree::SpreeProduct.all
    # puts "\n\n\n"params['q']
  	response = {products: products, status: "success"}
  end
end
