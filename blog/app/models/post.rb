class Post < ActiveRecord::Base
  validates :title, presence: {message: 'Sos un mula'}, uniqueness: true
  validates :body, presence: true

  belongs_to :author
end
