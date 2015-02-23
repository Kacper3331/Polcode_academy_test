user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

city_1 = City.create(name: "Warsaw", short_name: "Waw")
puts 'CREATED CITY NR 1: ' << city_1.name

city_2 = City.create(name: "Krakow", short_name: "Kr")
puts 'CREATED CITY NR 2: ' << city_2.name

city_3 = City.create(name: "Lodz", short_name: "Ld")
puts 'CREATED CITY NR 3: ' << city_3.name

city_4 = City.create(name: "Katowice", short_name: "Kat")
puts 'CREATED CITY NR 4: ' << city_4.name

city_5 = City.create(name: "Bialystok", short_name: "Bial")
puts 'CREATED CITY NR 5: ' << city_5.name
