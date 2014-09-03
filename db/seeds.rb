# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.find_by_email("kodywilson@gmail.com")
admin.update_attribute :admin, true

admin2 = User.find_by_email("renee@nird.us")
admin2.update_attribute :admin, true

admin3 = User.find_by_email("bethany@nird.us")
admin3.update_attribute :admin, true
