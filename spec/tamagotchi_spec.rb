require('rspec')
require('tamagotchi')

describe(Tamagotchi) do

  describe('#birth') do
    it('an egg appears on the index page') do
      tamagotchi = Tamagotchi.new(456789)
      expect(tamagotchi.birth).to(eq(456789))
    end
  end

end
