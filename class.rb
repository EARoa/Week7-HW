class Log
  @@log_array = []

    def self.log
      p @@log_array
    end
    def self.add_to_log(animal)
      @@log_array << "#{animal} ate some fish"
    end
end

class Fish

  def eat
  puts "#{@animal} ate some fish."
  end
end


class Panda < Fish

  def initialize
    @animal = "Panda"
  end
  def eat
    puts "#{@animal} is eating some fish."
    Log.add_to_log(@animal)
  end
end


class Shark < Fish

  def initialize
    @animal = "Shark"
  end
  def eat
    puts "#{@animal} is eating some fish"
    Log.add_to_log(@animal)
  end
end

panda = Panda.new
panda.eat
shark = Shark.new
shark.eat


Log.log
