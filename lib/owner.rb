class Owner
  attr_reader :name, :species
  @@all = []
  def initialize(name, species = "human")
    @species = species
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{@species}."
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all select do |c|
      c.owner.name == self.name
    end

  end



  # code goes here
end
