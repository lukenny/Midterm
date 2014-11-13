class Dinner

attr_accessor :kind, :menu, :guests

	def initialize kind
 		@kind = kind
		@guests = guests
		@menu = menu
	end

# Use inject here
	def seating_chart_size
		guests.inject(0){|x,y| x + y.length}
	end

# context "menu"
	def menu
  menu = {
      :diet => :vegan,
			:proteins => ["Tofurkey", "Hummus"],
      :veggies => [:ginger_carrots, :potatoes, :yams],
      :desserts => {:pies => [:pumkin_pie],
      :other => ["Chocolate Moose"],
      :molds => [:cranberry, :mango, :cherry]}
  }
  end


# expected: "Tonight we have proteins Tofurkey and Hummus, and veggies Ginger Carrots, Potatoes, and Yams."
def whats_for_dinner
		proteins = ["Tofurkey", "Hummus"].join(' and ')

		veggies = [:ginger_carrots , :potatoes, :yams].\
  	map{|x| x}.join(', ').split(/ |\_/).map(&:capitalize).join(" ").\
		insert(-5, 'and ')

		"Tonight we have proteins #{proteins}, and veggies #{veggies}."
	end

end

class ThanksgivingDinner < Dinner
end
