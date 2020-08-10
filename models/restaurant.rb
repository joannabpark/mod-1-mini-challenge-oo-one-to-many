class Restaurant

  attr_reader :name, :cuisine

  @@all = []
   
  def initialize(name, cuisine)
    @name = name
    @cuisine = cuisine
    @@all << self
  end

  def self.all
    @@all
  end

  def menu_items
    MenuItem.all.select do |menu_instance|
      menu_instance.restaurant == self
    end
  end

  def add_menu_item(dish_name, price)
    new_item = MenuItem.new(self, dish_name, price)
    new_item
  end

  def print_menu
    self.menu_items.map do |item_instance|
    "#{item_instance.dish_name}: #{item_instance.price}"
    end
  end

  def self.biggest_menu
    self.all.max_by do |restaurant_instance|
      restaurant_instance.menu_items.count
    end
  end

  def tasting_menu_cost
    self.menu_items.sum do |item_instance|
      item_instance.price
    end
  end

end # end of Restaurant class