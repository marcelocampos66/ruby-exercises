# attr_reader => leitura
# attr_writer => escrita
# attr_accessor => leitura & escrita

class Car
  attr_accessor :name, :fab, :color
  attr_reader :year
  attr_reader :engine
  attr_reader :status

  def initialize(name, fab, color, year, engine)
    @name = name
    @fab = fab
    @color = color
    @year = year
    @engine = engine
    @status = false
  end

  def turn_on_car()
    @status = !@status
  end

  def print_car_basic_infos()
    puts "Name: #{self.name}, \nColor: #{self.color}, \nYear: #{self.year}, \nEngine: #{self.engine}"
  end

end

impala = Car.new('Impala', 'Chevrolet', 'Black', 1967, 'V8')

impala.print_car_basic_infos()

puts "Car Status: #{impala.status}"

puts 'Ligando o carro!'
impala.turn_on_car()

puts "Car Status: #{impala.status}"
