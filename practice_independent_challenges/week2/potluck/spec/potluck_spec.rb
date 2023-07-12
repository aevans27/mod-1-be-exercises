require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  it "exists" do
    pot = Potluck.new("7-13-18")
    expect(pot).to be_an_instance_of(Potluck)
    expect(pot.date).to eq("7-13-18")
    expect(pot.dishes).to eq([])
  end

  it "add food" do
    pot = Potluck.new("7-13-18")
    coucous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

    pot.add_dish(coucous_salad)
    pot.add_dish(cocktail_meatballs)
    expect(pot.dishes).to eq([coucous_salad, cocktail_meatballs])
    expect(pot.dishes.length).to eq(2)
  end

  it "add more food" do
    pot = Potluck.new("7-13-18")
    coucous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)

    pot.add_dish(coucous_salad)
    pot.add_dish(summer_pizza)
    pot.add_dish(roast_pork)
    pot.add_dish(cocktail_meatballs)
    pot.add_dish(candy_salad)
    expect(pot.get_all_from_category(:appetizer)).to eq([coucous_salad, summer_pizza])
    expect(pot.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
  end

  it "food menu" do
    pot = Potluck.new("7-13-18")
    coucous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    bean_dip = Dish.new("Bean Dip", :appetizer)

    pot.add_dish(coucous_salad)
    pot.add_dish(summer_pizza)
    pot.add_dish(roast_pork)
    pot.add_dish(cocktail_meatballs)
    pot.add_dish(candy_salad)
    pot.add_dish(bean_dip)

    menu_result = {
      :appetizers=>["Bean Dip", "Couscous Salad", "Summer Pizza"],
      :entres=>["Cocktail Meatballs", "Roast Pork"],
      :desserts=>["Candy Salad"]
    }

    expect(pot.menu).to eq(menu_result)

    expect(pot.ratio(:appetizer)).to eq(50.0)


  end
end