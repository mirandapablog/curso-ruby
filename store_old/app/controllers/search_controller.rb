class SearchController < ApplicationController
  def index
    q = '%'+ params.fetch(:q, '') + '%'

    @categories = Category.where("name like ?", q )

    @products = Product.where("name like ? or description like ?", q, q)
  end
end
