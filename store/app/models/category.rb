class Category < ActiveRecord::Base
  self.per_page = 2

  has_many :products
end
