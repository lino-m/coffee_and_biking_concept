# CLEANUP
# Notice: Output in terminal
puts "Cleaning Seeds Database"
# Destroying Rides
Ride.delete_all

#SEEDING
# Notice: Output in terminal
puts "Seeding rides ..."
6.times do
  Ride.create(
    title: Faker::Marketing.buzzwords,
    content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit " * 25,
    location: ['Bredestraat 35, 6211 HB Maastricht', 'Daalhemerweg 4,6301 BK Valkenburg'].sample
  )
end
