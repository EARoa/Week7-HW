# Modules allow re-use of code, without inheritance.

module Logs

@@log_array = []

      def self.log
        p @@log_array
      end
      def self.add_to_log(animal)
        @@log_array << "#{animal} ate some fish"
      end
end


module Fish
  def eat

  puts "#{@animal} ate some fish."
 Logs.add_to_log(@animal)
  end

  def show                                                     #defines second method of module
    p "#{@name} is an animal that eats fish"                   #interpolates instacne name when called be variable
  end

end




# =============================


class Panda
  def initialize
  @animal = "Panda"
end
  include Logs
  include Fish

end


class Shark
  def initialize
    @animal = "Shark"
  end
  include Logs
  include Fish

end


panda = Panda.new
shark = Shark.new

panda.eat
shark.eat

Logs.log
