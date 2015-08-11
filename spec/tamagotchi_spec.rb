require('rspec')
require('tamagotchi')

describe(Tamagotchi) do

  describe('#birth') do
    it('an egg appears on the index page') do
      tamagotchi = Tamagotchi.new(4567)
      expect(tamagotchi.birth).to(include("Egg appears"))
    end
  end

end
