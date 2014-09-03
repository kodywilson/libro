# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(kodywilson@gmail.com renee@nird.us bethany@nird.us).each do |maily|
    admin = User.find_by_email(maily)
    admin.update_attribute :admin, true if admin != nil
end
