person_list = [
  [ 'Alan', 'Nowak' ],
  [ 'Marcin', 'Franek' ],
  [ 'Adam', 'Castle' ],
  [ 'Ola', 'Fasola' ]
]

# parking_list = [
#   [ 125, 1, 5, 'outdoor' ]
# ]

# address_list = [
#   [ 'Wrocław', 'ul. 3-go Maja', '53-100' ]
# ]

# car_list = [
#   [ 'ELa1551', 'Opel' ]
# ]

person_list.each do |name|
  Person.create!( first_name: name.first, last_name: name.last )
end

# parking_list.each do |parking|
#   Parking.create!( places: parking.first, hour_price: parking.second, day_price: parking.third, kind: parking.last )
# end

# address_list.each do |address|
#   Address.create!( city: address.first, street: address.second, zip_code: address.last )
# end

# car_list.each do |car|
#   Car.create!( registration_number: car.first, model: car.last )
# end

p 'seeds generated'
