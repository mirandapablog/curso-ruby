class ProductsController < ApplicationController
  def index
    @products = [ {name: 'Shuco Clasico', price: 1},
                  {name: 'Shuco chorizo', price: 5},
                  {name: 'Transmetro', price: 10}
                ]

    @current_page = 'productos'
  end
end
