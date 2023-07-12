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
    app_array = get_all_from_category(:appetizer).map do |dish|
      dish.name
    end.sort

    entres_array = get_all_from_category(:entre).map do |dish|
      dish.name
    end.sort

    desserts_array = get_all_from_category(:dessert).map do |dish|
      dish.name
    end.sort

    {
      appetizers: app_array,
      entres: entres_array,
      desserts: desserts_array
    }
    #Don't want to do this but using .sort to create
    #a new sorted array was throwing error
    #and couldn't find explanation for it
    # sorted = @dishes.sort_by do |dish|
    #   dish.name
    # end
    # clean_menu = []
    # @dishes.each do |dish|


    # grouped_menu = @dishes.group_by do |dish|
    #   dish.category
    # end
    
    # require 'pry';binding.pry
    # sorted_menu = {}
    # grouped_menu.sort_by do |k, v|
    #   puts v
    # end
  end

  def ratio(category)
    (get_all_from_category(category).length.to_f / @dishes.length) * 100
  end
end