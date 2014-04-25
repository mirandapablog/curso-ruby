# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean


javier = Author.create( name: 'Javier' )
carlos = Author.create( name: 'Carlos' )
luis = Author.create( name: 'Luis' )

Post.find_or_create_by( title: 'Uno', body: 'Uno', author_id: javier.id)
Post.find_or_create_by( title: 'Dos', body: 'Dos', author_id: javier.id)
Post.find_or_create_by( title: 'Tres', body: 'Tres', author_id: javier.id)
