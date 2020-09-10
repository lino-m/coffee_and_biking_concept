# CLEANUP
# Notice: Output in terminal
puts 'Cleaning Seeds Database'
# Destroying Rides
Ride.delete_all
# Destroying Shops
Shop.delete_all


#SEEDING
# Notice: Output in terminal
puts 'Seeding shops ...'

maastricht = Shop.create(
  shop_manager: 'Bruno Bearonson',
  address: 'Grote Gracht 62-80, 6211 SZ Maastricht, Netherlands',
  description: 'Our shop in Maastricht is located right at the hear of this amazing city!'
  )

amsterdam = Shop.create(
  shop_manager: 'Suzanna Swanson',
  address: 'Nieuwezijds Voorburgwal 329, 1012 RM Amsterdam, Netherlands',
  description: 'Before you get high ... get a coffe, dang it!'
  )


# Notice: Output in terminal
puts 'Seeding rides ...'
6.times do
  Ride.create(
    title: Faker::Marketing.buzzwords,
    content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit ' * 25,
    location: ['Bredestraat 35, 6211 HB Maastricht', 'Daalhemerweg 4,6301 BK Valkenburg'].sample,
    shop_id: [amsterdam.id, maastricht.id].sample
  )
end

# SUCCESS MESSAGE
puts "Seeding Process Message: 'Success'"
