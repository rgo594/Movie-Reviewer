# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


resp = JSON.parse(RestClient.get "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=be88eec84f09
c039b6c361bdf5e07e11")
