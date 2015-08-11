
class Tamagotchi

  define_method(:initialize) do |color_key|
    @color_key = color_key
  end

  define_method(:birth) do
    @color_key
  end
end
