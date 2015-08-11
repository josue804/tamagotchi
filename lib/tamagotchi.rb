
class Tamagotchi

  @@hunger = 0
  @@playing = 0
  @@sleeping = 0
  @@happiness = 0 

  define_method(:initialize) do |color_key|
    @color_key = color_key
  end

  define_method(:egg) do
    @color_key
  end

  define_method(:hunger) do |feed = 3|
    @@hunger += feed
  end

  define_method(:playing) do |play = 3|
    @@playing += play
  end

  define_method(:sleeping) do |nap = 3|
    @@sleeping += nap
  end

  define_method(:birth) do |happy = 3|
    @@happiness = (@@hunger + @@playing + @@sleeping)/3.floor
  end

end
