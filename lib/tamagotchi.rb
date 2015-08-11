
class Tamagotchi

  @@time = Time.new()
  @@hunger = 3
  @@playing = 3
  @@sleeping = 3
  @@happiness = 0
  @@name = 'neglect'

  define_method(:initialize) do |color_key|
    @color_key = color_key
  end

  define_method(:egg) do
    @color_key
  end

  define_method(:hunger) do |feed = 0|
    @@hunger += feed
  end

  define_method(:playing) do |play = 0|
    @@playing += play
  end

  define_method(:sleeping) do |nap = 0|
    @@sleeping += nap
  end

  define_method(:happyness) do |stage|
    @@happiness = (((@@hunger + @@playing + @@sleeping)/3.floor) - stage)
  end

  define_method(:check_time) do
    @@time - @@time.Time.new()
  end

  define_method(:name) do |name = "neglect"|
    @@name = name
  end

  define_method(:baby) do
    @@happiness
  end

end
