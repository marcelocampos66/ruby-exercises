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
puts '============================================'

################################################################################

class CombatCar < Car
  attr_reader :weapon, :type

  def initialize(name, fab, color, year, engine, weapon)
    super(name, fab, color, year, engine)
    @type = 'Combat Car'
    @weapon = weapon
  end

  def car_weapon()
    puts "Weapon: #{self.weapon}"
  end

  def print_car_basic_infos
    puts "Name: #{self.name},
    Color: #{self.color},
    Year: #{self.year},
    Engine: #{self.engine}
    Classe: #{self.type}
    Weapon: #{self.weapon}"
  end

end

detonator = CombatCar.new('Viper', 'Dodge', 'Red', 2005, 'V10', 'Machine Gun')

puts "Car Status: #{detonator.status ? 'On' : 'Off'}"
puts 'Ligando o carro!'
detonator.turn_on_car()
puts "Car Status: #{detonator.status ? 'On' : 'Off'}"

detonator.print_car_basic_infos()
