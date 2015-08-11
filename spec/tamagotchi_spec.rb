require('rspec')
require('tamagotchi')

describe(Tamagotchi) do

  describe('#egg') do
    it('an egg appears on the index page') do
      tamagotchi = Tamagotchi.new(456789)
      expect(tamagotchi.egg).to(eq(456789))
    end
  end

  describe('#hunger') do
    it('shows the level of hunger for a tamagotchi') do
      tamagotchi = Tamagotchi.new(456789)
      expect(tamagotchi.hunger).to(eq(3))
    end
  end

  describe('#sleeping') do
    it('shows the level of sleeping needed for a tamagotchi') do
      tamagotchi = Tamagotchi.new(456789)
      expect(tamagotchi.sleeping).to(eq(3))
    end
  end

  describe('#playing') do
    it('shows the level of playing for a tamagotchi') do
      tamagotchi = Tamagotchi.new(456789)
      expect(tamagotchi.playing).to(eq(3))
    end
  end

  describe('#happyness') do
    it('shows the happyness of the tamagotchi on index page') do
      tamagotchi = Tamagotchi.new(456789)
      expect(tamagotchi.happyness(1)).to(eq(2))
    end
  end

  describe('#name') do
    it('returns the name of the baby tamagotchi') do
      tamagotchi = Tamagotchi.new(456789)
      expect(tamagotchi.name('Mina')).to(eq('Mina'))
    end
  end

  describe('#check_time') do
    it('returns the stage the baby is in') do
      tamagotchi = Tamagotchi.new(456789)
      expect(tamagotchi.check_time()).to(eq(1))
    end
  end

  describe('#decrease') do
    it('decreases sleep, hunger, or playing level randomly by 1') do
      tamagotchi = Tamagotchi.new(456789)
      expect(tamagotchi.decrease()).to(eq(true))
    end
  end
end
