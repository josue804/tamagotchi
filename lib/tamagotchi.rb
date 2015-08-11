
class Tamagotchi

  @@time = Time.new()
  @@hunger = 3
  @@playing = 3
  @@sleeping = 3
  @@happiness = 0
  @@name = 'neglect'
  @@time_passed = 0

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
    if @@time - Time.new() < -30

      decrease

      @@time_passed += @@time - Time.new()
      @@time = Time.new()
    end

    if @@time_passed <= 0 && @@time_passed > -15
      1
    elsif @@time_passed < -15 && @@time_passed >= -45
      2
    elsif @@time_passed < -45 && @@time_passed >= -90
      3
    elsif @@time_passed < -90
      4
    end
  end

  define_method(:name) do |name = "neglect"|
    @@name = name
  end

  define_method(:baby) do
    @@happiness
  end

  define_method(:decrease) do
    to_decrease = (rand() % 3).floor()

    if to_decrease == 0
      @@hunger -= 1
      true#decrease food
    elsif to_decrease == 1
      @@playing -= 1#decrease play
      true
    elsif to_decrease == 2
      @@sleeping -= 1#decrease sleep
      true
    end


  end

end
