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
