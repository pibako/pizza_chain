# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

AdminUser.create(:email => 'pizza@chain.com', :password => 'pizzachain', :password_confirmation => 'pizzachain')

Restaurant.create([
  {:id => 1, :name => "Pizza Mia!", :created_at => "2013-09-19 18:03:22", :updated_at => "2013-09-19 18:03:22" },
  {:id => 2, :name => "Pizza Place!", :created_at => "2013-09-19 18:31:00", :updated_at => "2013-09-19 18:31:00" },
  {:id => 3, :name => "Grande Pizza", :created_at => "2013-09-20 08:29:29", :updated_at => "2013-09-20 11:16:54" },
  {:id => 4, :name => "Pizzzzza!", :created_at => "2013-09-20 08:51:29", :updated_at => "2013-09-20 11:19:34" }
], :without_protection => true )

Pizza.create([
  { :restaurant_id => 1, :name => "Pepperoni", :price => 32.0, :description => "Pepperoni, mozzarella, authentic tomato sauce", :created_at => "2013-09-20 10:01:19", :updated_at => "2013-09-20 10:01:19" },
  { :restaurant_id => 2, :name => "Chicken", :price => 33.0, :description => "semi dried tomatoes, capsicum, chicken, mozzarella, cheddar, tomato sauce\r\n", :created_at => "2013-09-20 11:20:55", :updated_at => "2013-09-20 11:20:55" },
  { :restaurant_id => 2, :name => "Beef", :price => 34.0, :description => "mushrooms, onion, beef, mozzarella, cheddar, tomato sauce", :created_at => "2013-09-20 11:20:55", :updated_at => "2013-09-20 11:20:55" },
  { :restaurant_id => 3, :name => "Cheese", :price => 35.0, :description => "mozzarella, cheddar cheese, authentic tomato sauce", :created_at => "2013-09-20 11:19:34", :updated_at => "2013-09-20 11:19:34" },
  { :restaurant_id => 3, :name => "Ham & Cheese", :price => 22.0, :description => "Ham, Cheese", :created_at => "2013-09-20 11:19:34", :updated_at => "2013-09-20 11:19:34" },
  { :restaurant_id => 4, :name => "Mozharella", :price => 26.0, :description => "Cheese and tomatoes\r\n", :created_at => "2013-09-20 10:34:55", :updated_at => "2013-09-20 10:34:55" },
  { :restaurant_id => 4, :name => "Pepperoni", :price => 33.0, :description => "Pepperoni, mozzarella, authentic tomato sauce", :created_at => "2013-09-20 11:16:54", :updated_at => "2013-09-20 11:16:54" },
  { :restaurant_id => 4, :name => "Italiano", :price => 29.0, :description => "Italian Sausage, Capsicum, Onions, Mozzarella", :created_at => "2013-09-20 11:16:54", :updated_at => "2013-09-20 11:16:54" }

], :without_protection => true )

Schedule.create([
  { :restaurant_id => 2, :open_monday => "08:00", :close_monday => "20:00", :open_tuesday => nil, :close_tuesday => nil, :open_wednesday => nil, :close_wednesday => nil, :open_thursday => nil, :close_thursday => nil, :open_friday => nil, :close_friday => nil, :open_saturday => "08:00", :close_saturday => "20:00", :open_sunday => nil, :close_sunday => nil, :created_at => "2013-09-20 10:00:44", :updated_at => "2013-09-20 10:00:44" },
  { :restaurant_id => 1, :open_monday => "08:00", :close_monday => "20:00", :open_tuesday => nil, :close_tuesday => nil, :open_wednesday => nil, :close_wednesday => nil, :open_thursday => nil, :close_thursday => nil, :open_friday => nil, :close_friday => nil, :open_saturday => "08:00", :close_saturday => "20:00", :open_sunday => nil, :close_sunday => nil, :created_at => "2013-09-20 10:00:51", :updated_at => "2013-09-20 10:00:51" },
  { :restaurant_id => 3, :open_monday => "11:00", :close_monday => "20:00", :open_tuesday => nil, :close_tuesday => nil, :open_wednesday => nil, :close_wednesday => nil, :open_thursday => nil, :close_thursday => nil, :open_friday => nil, :close_friday => nil, :open_saturday => "09:00", :close_saturday => "22:00", :open_sunday => nil, :close_sunday => nil, :created_at => "2013-09-20 10:31:12", :updated_at => "2013-09-20 11:19:34" },
  { :restaurant_id => 4, :open_monday => "11:00", :close_monday => "21:00", :open_tuesday => nil, :close_tuesday => nil, :open_wednesday => nil, :close_wednesday => nil, :open_thursday => nil, :close_thursday => nil, :open_friday => nil, :close_friday => nil, :open_saturday => "10:00", :close_saturday => "23:00", :open_sunday => nil, :close_sunday => nil, :created_at => "2013-09-20 10:00:58", :updated_at => "2013-09-20 11:16:54" }
], :without_protection => true )
