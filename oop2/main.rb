require_relative 'car'
require_relative 'truck'
require_relative 'sport_car'

truck = Truck.new
truck.start_engine
puts "Truck RPM: #{truck.current_rpm}"


car = Car.new
car.start_engine
puts "Car RPM: #{car.current_rpm}"

sport_car = SportCar.new
sport_car.start_engine
puts "Sport Car RPM: #{sport_car.current_rpm}"