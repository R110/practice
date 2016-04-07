class ShoppingCart
  attr_accessor :items
  def initialize
    @items = []
    @season = "Spring"
    @total = @items.map{|item| item[:cost][@season.to_sym] }.reduce{|a,b| a + b}
  end
  def add_item_to_cart(item)
    @items <<item
  end
  def show_cost
    puts "Total Cost: #{@items.map{|item| item[:cost] }.reduce{|a,b| a + b}}"
  end
  def calc_discount
    grapesCost = cart.items.select{|item| item[:name] == "grapes" }.length / 4
    for i in (0..grapesCost.floor).to_a
      for y in (0..(cart.items.select{|item| item[:name] == "banana" }.length)).to_a
        @total -= 20
      end
    end
    appleCost = cart.items.select{|item| item[:name] == "apple" }.length / 2
    for i in (1..appleCost.floor).to_a
      @total -= 10
    end
    orangeCost = cart.items.select{|item| item[:name] == "orange" }.length / 3
    for i in (1..orangeCost.floor).to_a
      @total -= 5
    end
  end
  def show
    @items.each_with_index do |item, i|
        puts "#{i+1}) #{item[:name]}: #{item[:cost]} "
    end
  end
end


cart = ShoppingCart.new

apple = {:name => "apple", :cost => {:spring => 10, :summer =>10, :autumn =>15, :winter =>12}}
orange = {:name => "orange", :cost => {:spring => 5, :summer => 2, :autumn =>5, :winter =>5}}
grape = {:name => "grape", :cost => {:spring => 15, :summer =>15, :autumn =>15, :winter =>15}}
banana = {:name => "banana", :cost => {:spring => 20, :summer =>20, :autumn =>20, :winter =>21}}
watermelon = {:name => "watermelon", :cost => {:spring => 50, :summer =>50, :autumn =>50, :winter =>50}}

cart.add_item_to_cart(apple)
cart.add_item_to_cart(apple)
cart.add_item_to_cart(apple)
cart.add_item_to_cart(apple)
cart.add_item_to_cart(apple)

cart.add_item_to_cart(orange)
cart.add_item_to_cart(grape)
cart.add_item_to_cart(grape)
cart.add_item_to_cart(grape)
cart.add_item_to_cart(grape)


cart.add_item_to_cart(grape)
cart.add_item_to_cart(watermelon)

  # 1) rooms have desc exits loc
  # 2 character starting rooms
  # 3) move from  room to room
  # 4)invalid moves
  # 5) special commands
  # 6) objects in roo
#
