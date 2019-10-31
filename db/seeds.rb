# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
User.create! :email => 'admin@corporation.com', :password => 'admin123', :password_confirmation => 'admin123', kudos_count: 3
User.create! :email => 'john@corporation.com', :password => 'admin123', :password_confirmation => 'admin123', kudos_count: 3
User.create! :email => 'jim@corporation.com', :password => 'admin123', :password_confirmation => 'admin123', kudos_count: 3
User.create! :email => 'james@corporation.com', :password => 'admin123', :password_confirmation => 'admin123', kudos_count: 3
User.create! :email => 'jessica@corporation.com', :password => 'admin123', :password_confirmation => 'admin123', kudos_count: 3
User.create! :email => 'jimmy@corporation.com', :password => 'admin123', :password_confirmation => 'admin123', kudos_count: 3
