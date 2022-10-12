# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'

Card.destroy_all
Rarity.destroy_all

csv_file = Rails.root.join('db/Yugi_db_cleaned.csv')
csv_data = File.read(csv_file)

yugioh = CSV.parse(csv_data, headers: true)

# Card.create(
#   name: "One",
#   ability: "Spell",
#   photo: "Test",
#   ele: "Light",
#   power: "400 / 500")

yugioh.each do |data|
  rarity = Rarity.find_or_create_by(name: data["Rarity"])

  if rarity && rarity.valid?
    rarity.card.create(
      name: data['card name'],
      ability: data['Card type'],
      photo: data['image'],
      ele: data['Attribute'],
      power: data['ATK / DEF']
    )
  end
end
