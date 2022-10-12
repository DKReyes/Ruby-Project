# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'

Card.destroy_all

csv_file = Rails.root.join('db/Yugi_db_cleaned.csv')
csv_data = File.read(csv_file)

yugioh = CSV.parse(csv_data, headers: true)

Card.create(
  card_name: "Test",
  card_type: "Testing",
  card_image: "",
  attributes: "",
  stats: ""
)

# yugioh.each do |data|
#   if data['Card_name'] && data['Card type']
#     Card.create(
#       card_name: data['Card_name'],
#       card_type: data['Card type']
#       # card_image: data['Image_name'],
#       # attributes: data['Attribute'],
#       # stats: data['ATK / DEF']
#     )
#   end
# end
