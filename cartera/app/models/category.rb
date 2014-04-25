class Category < ActiveRecord::Base
  has_many :clients
end
