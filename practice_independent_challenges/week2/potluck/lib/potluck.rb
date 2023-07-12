class Potluck
  attr_reader :date, :dishes
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    dishes << dish
  end

  def get_all_from_category(category)
    @dishes.find_all do |dish|
      dish.category == category
    end
  end

  def menu
    #Don't want to do this but using .sort to create
    #a new sorted array was throwing error
    #and couldn't find explanation for it
    # sorted = @dishes.sort_by do |dish|
    #   dish.name
    # end
    grouped_menu = @dishes.group_by do |dish|
      dish.category
    end
    
    require 'pry';binding.pry
    # sorted_menu = {}
    # grouped_menu.sort_by do |k, v|
    #   puts v
    # end
  end
end