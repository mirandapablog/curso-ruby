# populate.rake
require 'faker'

namespace :db do
  desc "Llenar datos default"
  task :populate => :environment do

    Category.delete_all
    Product.delete_all

    10.times do
      category = Category.create(name: Faker::Lorem.sentence)

      10.times do
        Product.create(name: Faker::Lorem.sentence,
                       description: Faker::Lorem.paragraph(2),
                       price: 100.00,
                       category: category
                       )
      end
    end


  end
end
