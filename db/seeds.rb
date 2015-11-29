# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Bounenkai2015.all.size == 0
  bounenkai_data = Bounenkai2015.create({box_a_key: "7315", box_b_key: "5319", first_open_box_name: nil})
else
  bounenkai_data = Bounenkai2015.first
  bounenkai_data.first_open_box_name = nil
  bounenkai_data.save
end
