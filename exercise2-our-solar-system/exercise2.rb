class System

  attr_reader :bodies
  def initialize(bodies)
    @bodies = []
  end

  def add(body) 
    @bodies.push body
  end

  def total_mass
    total_mass = 0
    @bodies.each do |body|
      total_mass += body
  end
  total_mass
  end
end

class Body
  attr_reader :name, :mass
  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

  class Planets < Body
    attr_accessor :day, :year
    def initialize(name, mass, day, year)
      super(name, mass)
      @day = day
      @year = year
    end
  end

  class Stars < Body
    attr_reader :type
    def initialize(name, mass, type)
      super(name, mass)
      @type = type
    end
  end

  class Moons < Body
    attr_accessor :month, :planet
    def initialize(name, mass, month, planet)
      super(name, mass)
      @month = month
      @planet = planet
    end
  end
