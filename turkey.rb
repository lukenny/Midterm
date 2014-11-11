module Animal
  attr_reader :weight

  def initialize weight
    @weight = weight
  end

end

class Turkey
   include Animal

end
