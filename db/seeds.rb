# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "json"
require "open-uri"

# api_url = "https://tmdb.lewagon.com/movie/top_rated"
# # Fetch the API response and parse it as JSON
# api_response = URI.open(api_url).read
# api_parsed = JSON.parse(api_response)
# # Loop through the top-rated movies and save them
# api_parsed["results"].first(10).each do |movie_data|
#   movie = Movie.new(
#     title: movie_data["title"],
#     overview: movie_data["overview"],
#     poster_url: "https://image.tmdb.org/t/p/w500/#{movie_data['poster_path']}",
#     rating: movie_data["vote_average"]
#   )
#   movie.save!
# end

# 10.times do
#   Movie.create(
#     title: Faker::Movie.title,
#     overview: Faker::Lorem.sentence(word_count: 10),
#     poster_url: Faker::Internet.url,
#     rating: rand(1..10).to_f
#   )
# end

# db/seeds.rb
Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
