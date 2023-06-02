# puts 'Cleaning DB...'
# Trainer.destroy_all

# puts 'Creating trainers...'

# Trainer.create!(
#   name: 'Ash',
#   banner_url: 'https://epipoca.com.br/wp-content/uploads/2022/04/ash-pokemon-jornadas-24042022.jpg'
# )

# Trainer.create!(
#   name: 'Misty',
#   banner_url: 'https://1.bp.blogspot.com/-V6Ol_8odVPk/YEeIBh4jMGI/AAAAAAAAs4E/-030GXWvVdg0zGIwGcpmunokEmre7n7lgCLcBGAsYHQ/s1400/misty_pokemon.jpg'
# )

# puts 'Finished! zo/'

puts "Destroying restaurants..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(
  name: "Le Dindon en Laisse",
  address: "18 Rue Beautreillis, 75004 Paris, France"
)
Restaurant.create!(
  name: "Neuf et Voisins",
  address: "Van Arteveldestraat 1, 1000 Brussels, Belgium"
)
puts "Finished!"
