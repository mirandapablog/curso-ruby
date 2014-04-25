class Author < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :posts
end
