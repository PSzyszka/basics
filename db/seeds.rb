person_list = [
  [ 'Alan', 'Nowak' ],
  [ 'Marcin', 'Franek' ],
  [ 'Adam', 'Castle' ],
  [ 'Ola', 'Fasola' ]
]

person_list.each do |name|
  Person.create!( first_name: name.first, last_name: name.last )
end

p 'seeds generated'
