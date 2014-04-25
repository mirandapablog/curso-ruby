namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    require 'database_cleaner'

    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean

    # [Category, Product, Person].each(&:delete_all)

    Category.populate 20 do |category|
      category.name = Populator.words(1..3).titleize
      Product.populate 1..10 do |product|
        product.category_id = category.id
        product.name = Populator.words(1..5).titleize
        product.description = Populator.sentences(2..10)
        product.price = [4.99, 19.95, 100]
        product.created_at = 2.years.ago..Time.now
      end
    end

    Person.populate 100 do |person|
      person.name    = Faker::Name.name
      person.company = Faker::Company.name
      person.email   = Faker::Internet.email
      person.phone   = Faker::PhoneNumber.phone_number

      Address.populate 1..3 do |address|
        address.person_id = person.id
        address.street_address  = Faker::Address.street_address
        address.city    = Faker::Address.city
        address.state_abbr   = Faker::Address.state_abbr
        address.zip_code     = Faker::Address.zip_code
      end
    end
  end
end
