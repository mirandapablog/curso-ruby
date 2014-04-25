class Client < ActiveRecord::Base
  validates :name, presence: true
  validates :balance, numericality: true

  belongs_to :category

end
