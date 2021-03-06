# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

def create_user
  puts 'Creating user'
  User.create(name: 'New user', email: 'email@example.com')
end

def create_article
  puts 'Creating article'
  Article.create(title: 'cool', body: 'this is a cool article')
end

def create_search
  puts 'creating search'
end

create_user
create_article
create_search
