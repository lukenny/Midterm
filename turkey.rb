module Animal
  attr_reader :weight

  def initialize weight
    @weight = weight
  end

end

class Turkey
   include Animal


  def gobble_speak pleading
    pleading.gsub!(/[a-z]/, "Gobble")
end
end
