person_list = [
  {
    first_name: 'Alan',
    last_name: 'Nowak',
    email: 'alan_nowak@gmail.com',
    password: 'password'
  },
  {
    first_name: 'Marcin',
    last_name: 'Franek',
    email: 'macrin869@gmail.com',
    password: 'password'
  },
  {
    first_name: 'Adam',
    last_name: 'Castle',
    email: 'castle.me@gmail.com',
    password: 'password'
  },
  {
    first_name: 'Ola',
    last_name: 'Fasola',
    email: 'ola_fasola@gmail.com',
    password: 'password'
  }
]

parking_list = [
  { places: 125, hour_price: 1, day_price: 5, kind: 'outdoor' },
  { places: 50, hour_price: 2, day_price: 15, kind: 'indoor' },
  { places: 10, hour_price: 3, day_price: 20, kind: 'private' },
  { places: 100, hour_price: 1, day_price: 10, kind: 'street' }
]

address_list = [
  { city: 'Wrocław', street: 'ul. 3-go Maja 15', zip_code: '53-100' },
  { city: 'Paryż', street: 'ul. Tadeusza Kościuszki 8', zip_code: '20-505' },
  { city: 'Berlin', street: 'ul. Brandenburska 37', zip_code: '78-153' },
  { city: 'Praga', street: 'ul. Leszczyńska 93', zip_code: '62-765' }
]

car_list = [
  { registration_number: 'ELA1551', model: 'Opel Vectra' },
  { registration_number: 'DW4657', model: 'Mitsubishi eclipse' },
  { registration_number: 'PO7961', model: 'Ford Kuga' },
  { registration_number: 'JAN7314', model: 'Mazda 07' }
]

person_list.each do |data|
  Account.create!(
    email: data[:email],
    password: data[:password],
    password_confirmation: data[:password],
    owner_attributes: {
      first_name: data[:first_name],
      last_name: data[:last_name]
    }
  )
end

address_list.each do |address|
  Address.create!(
    city: address[:city],
    street: address[:street],
    zip_code: address[:zip_code]
  )
end

parking_list.each do |parking|
  Parking.create!(
    places: parking[:places],
    hour_price: parking[:hour_price],
    day_price: parking[:day_price],
    kind: parking[:kind],
    owner: Person.all.sample,
    address: Address.all.sample
  )
end

car_list.each do |car|
  Car.create!(
    registration_number: car[:registration_number],
    model: car[:model],
    owner: Person.all.sample
  )
end

p 'seeds generated'
