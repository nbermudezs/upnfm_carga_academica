# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create({ id_number: '0501-1991-06318', first_name: 'Nestor', last_name: 'Bermudez', email: 'nestor.bermudezs@gmail.com' })
user.add_role(:god)

user = User.create({ id_number: '0501-1991-06319', first_name: 'Mario', last_name: 'Canales', email: 'nestor.bermudez@unitec.edu' })
user.add_role(:admin)
