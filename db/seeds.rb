# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Bounenkai2015.all.size == 0
  bounenkai_data = Bounenkai2015.create({box_a_key: "7315", box_b_key: "5319", open_first_box: false})
else
  bounenkai_data = Bounenkai2015.first
  bounenkai_data.open_first_box = false
  bounenkai_data.save
end
