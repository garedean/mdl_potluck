require 'date'

r = Random.new

# initial user seeds
# ------------------------------------------------

User.create(email: "admin@test.com", password: "123abc!!", admin: true)

if true

# category seeds
# ------------------------------------------------

c1 = Category.create(name: 'Meats')
  c2 = c1.children.create(name: 'Chicken')
    c2.children.create(name: 'Whole Chicken')
    c2.children.create(name: 'Chicken Breast')
    c2.children.create(name: 'Chicken Legs')
    c2.children.create(name: 'Chicken Drumstick')
    c2.children.create(name: 'Ground Chicken')

  c3 = c1.children.create(name: 'Beef')
    c3.children.create(name: 'Beef Steak')
    c3.children.create(name: 'Beef Roast')
    c3.children.create(name: 'Ground Beef')

  c4 = c1.children.create(name: 'Turkey')
    c4.children.create(name: 'Whole Turkey')
    c4.children.create(name: 'Turkey Breast')
    c4.children.create(name: 'Ground Turkey')

  c5 = c1.children.create(name: 'Pork')
    c5.children.create(name: 'Pork Chops')
    c5.children.create(name: 'Pork Roast')
    c5.children.create(name: 'Ground Pork')

  c6 = c1.children.create(name: 'Buffalo')
    c6.children.create(name: 'Buffalo Steak')
    c6.children.create(name: 'Buffalo Roast')
    c6.children.create(name: 'Ground Buffalo')

  c7 = c1.children.create(name: 'Lamb')
    c7.children.create(name: 'Lamb Steak')
    c7.children.create(name: 'Lamb Roast')
    c7.children.create(name: 'Ground Lamb')

  c8 = c1.children.create(name: 'Fish')
    c9 = c8.children.create(name: 'Salmon')
      c9.children.create(name: 'Whole Salmon')
      c9.children.create(name: 'Salmon Fillet')
      c9.children.create(name: 'Salmon Steaks')

    c10 = c8.children.create(name: 'White fish')
      c10.children.create(name: 'Whole Whitefish')
      c10.children.create(name: 'Whitefish Fillet')

  c11 = c1.children.create(name: 'Shellfish')
    c11.children.create(name: 'Shrimp')
    c11.children.create(name: 'Clams')
    c11.children.create(name: 'Mussels')

c12 = Category.create(name: 'Raw Fruits & Veggies')
  c13 = c12.children.create(name: 'Potatoes')
    c13.children.create(name: 'Russet Potatoes')
    c13.children.create(name: 'Red Potatoes')
    c13.children.create(name: 'Yukon Potatoes')
    c13.children.create(name: 'Sweet/Yams')

  c14 = c12.children.create(name: 'Roots')
    c14.children.create(name: 'Carrots')
    c14.children.create(name: 'Radishes')
    c14.children.create(name: 'Beets')
    c14.children.create(name: 'Parsnips')

  c16 = c12.children.create(name: 'Green Veggies')
    c16.children.create(name: 'Celery')
    c16.children.create(name: 'Cucumber')
    c16.children.create(name: 'Spinach')
    c16.children.create(name: 'Lettuce')

  c17 = c12.children.create(name: 'Mushrooms')
    c17.children.create(name: 'White')
    c17.children.create(name: 'Portabello')
    c17.children.create(name: 'Crimini')

  c18 = c12.children.create(name: 'Squashes')
    c18.children.create(name: 'Pumpkins')
    c18.children.create(name: 'Acorn Squash')
    c18.children.create(name: 'Butternut Squash')
    c18.children.create(name: 'Spaghetti Squash')

  c19 = c12.children.create(name: 'Onions & Garlic')
    c19.children.create(name: 'Yellow Onion')
    c19.children.create(name: 'White Onion')
    c19.children.create(name: 'Garlic')
    c19.children.create(name: 'Green Onion')
    c19.children.create(name: 'Leeks')
    c19.children.create(name: 'Shallots')

c20 = Category.create(name: 'Grains & Beans')
  c20.children.create(name: 'Flour')
  c20.children.create(name: 'Whole Grains')
  c20.children.create(name: 'Beans')

c21 = Category.create(name: 'Baked Goods & Sweets')
  c21.children.create(name: 'Bread')
  c21.children.create(name: 'Cake')
  c21.children.create(name: 'Candy')
  c21.children.create(name: 'Pastries')

c22 = Category.create(name: 'Seasonings')
  c23 = c22.children.create(name: 'Herbs')
    c23.children.create(name: 'Rosemary')
    c23.children.create(name: 'Parsley')
    c23.children.create(name: 'Sage')
    c23.children.create(name: 'Thyme')

  c24 = c22.children.create(name: 'Spices')
    c24.children.create(name: 'Cumin')
    c24.children.create(name: 'Paprika')
    c24.children.create(name: 'Coriander')
    c24.children.create(name: 'China 5 Spice')
    c24.children.create(name: 'Salt')

c26 = Category.create(name: 'Bottles+Cans+Jars+Bags')
  c27 = c26.children.create(name: 'Bottles')
    c27.children.create(name: 'Vinegar')
    c27.children.create(name: 'Oil')
    c27.children.create(name: 'Condiment')
    c27.children.create(name: 'Beverage')

  c26.children.create(name: 'Cans')
  c26.children.create(name: 'Jars')
  c26.children.create(name: 'Bags')

c28 = Category.create(name: 'Dairy+Eggs')
  c28.children.create(name: 'Milk')
  c28.children.create(name: 'Eggs')
  c28.children.create(name: 'Butter')
  c28.children.create(name: 'Cream')

# c29 = Category.create(name: "AAAAAA")
#   c30 = c29.children.create(name: "BBBBBB")
#     c31 = c30.children.create(name: "CCCCCC")
#       c32 = c31.children.create(name: "DDDDDD")
#         c33 = c32.children.create(name: "EEEEEE")
#           c34 = c33.children.create(name: "FFFFFF")
#             c35 = c34.children.create(name: "GGGGGG")

# location seeds
# ------------------------------------------------

l1 = Location.create(name: 'Kitchen')
  l1.children.create(name: 'Under Counter')
    l2 = l1.children.create(name: 'Spice Area')
      l2.children.create(name: 'Spice Top Shelves')
      l2.children.create(name: 'Spice Middle Shelves')
      l2.children.create(name: 'Spice Bottom Shelves')

l3 = Location.create(name: 'Dishwasher Room')
  l3.children.create(name: 'Deli Fridge #1')
    l4 = l3.children.create(name: 'Deli Left Door')
      l4.children.create(name: 'Left Door Top')
      l4.children.create(name: 'Left Door Middle')
      l4.children.create(name: 'Left Door Bottom')
    l5 = l3.children.create(name: 'Deli Right Door')
      l5.children.create(name: 'Middle Door Top')
      l5.children.create(name: 'Middle Door Middle')
      l5.children.create(name: 'Middle Door Bottom')

  l3.children.create(name: 'Deli Fridge #2')
    l8 = l3.children.create(name: 'Deli Left Door')
      l8.children.create(name: 'Door')
      l8.children.create(name: 'Top Shelves')
      l8.children.create(name: 'Middle Shelves')
      l8.children.create(name: 'Bottom Shelves')
    l9 = l3.children.create(name: 'Deli Left Door')
      l9.children.create(name: 'Door')
      l9.children.create(name: 'Top Shelves')
      l9.children.create(name: 'Middle Shelves')
      l9.children.create(name: 'Bottom Shelves')

  l10 = Location.create(name: 'Loading Dock')
    l10.children.create(name: 'Floor')
    l10.children.create(name: 'Shelves')

  l11 = Location.create(name: 'Back Hall')
    l11.children.create(name: 'Shelves')
    l11.children.create(name: 'Floor')
    l12 = l11.children.create(name: 'Fridge #8')
      l12.children.create(name: 'Top')
      l12.children.create(name: 'Middle')
      l12.children.create(name: 'Bottom')
    l13 = l3.children.create(name: 'Freezer #7')
      l9.children.create(name: 'Top')
      l9.children.create(name: 'Middle')
      l9.children.create(name: 'Bottom')

  l14 = Location.create(name: 'Back Room')
    l15 = l14.children.create(name: 'Freezer #3')
      l15.children.create(name: 'Top')
      l15.children.create(name: 'Middle')
      l15.children.create(name: 'Bottom')

    l16 = l14.children.create(name: 'Freezer #4')
      l16.children.create(name: 'Top')
      l16.children.create(name: 'Middle')
      l16.children.create(name: 'Bottom')

    l17 = l14.children.create(name: 'Freezer #5')
      l17.children.create(name: 'Top')
      l17.children.create(name: 'Middle')
      l17.children.create(name: 'Bottom')

    l18 = l14.children.create(name: 'Freezer #6')
      l18.children.create(name: 'Top')
      l18.children.create(name: 'Middle')
      l18.children.create(name: 'Bottom')

    l19 = l14.children.create(name: 'Shelves')
      l19.children.create(name: 'Cove/Closet')
      l19.children.create(name: 'Metal Racks')

    l20 = l14.children.create(name: 'Table')
      l20.children.create(name: 'Top')
      l20.children.create(name: 'Lower Shelf')

  l23 = Location.create(name: 'Walk-In Fridge')
    l24 = l23.children.create(name: 'Front')
      l25 = l24.children.create(name: 'Left')
        l25.children.create(name: 'Top')
        l25.children.create(name: 'Middle')
        l25.children.create(name: 'Bottom')

      l26 = l24.children.create(name: 'Right')
        l26.children.create(name: 'Top')
        l26.children.create(name: 'Middle')
        l26.children.create(name: 'Bottom')

    l27 = l23.children.create(name: 'Back')
      l28 = l27.children.create(name: 'Left')
        l29 = l28.children.create(name: 'Top')
          l29.children.create(name: 'Middle')
          l29.children.create(name: 'Bottom')


    l32 = Location.create(name: 'Alleyway')
      l33 = l32.children.create(name: 'Building Side')
        l33.children.create(name: 'Top')
        l33.children.create(name: 'Middle')
        l33.children.create(name: 'Bottom')
      l34 = l32.children.create(name: 'Opposite Side')
        l34.children.create(name: 'Top')
        l34.children.create(name: 'Middle')
        l34.children.create(name: 'Bottom')

      # l35 = Location.create(name: "AAA_location")
      #   l36 = l35.children.create(name: "BBB_location")
      #     l37 = l36.children.create(name: "CCC_location")
      #       l38 = l37.children.create(name: "DDD_location")
      #         l38.children.create(name: "EEE_location")

# ingredient seeds
# ------------------------------------------------

locations = Location.where({name: ["Bottom",
                                   "Middle",
                                   "Top",
                                   "Floor",
                                   "Door",
                                   "Right",
                                   "Left",
                                   "Under Counter",
                                   "Spic7e Top Shelves",
                                   "Spice Middle Shelves",
                                   "Spice Bottom Shelves",
                                   "Shelves"]} )

bottom_level_categories = []

Category.all.each do |category|
  bottom_level_categories << category if category.is_childless?
end

1000.times do
  Ingredient.create(category_id:  bottom_level_categories.sample.id,
                    location_id: locations.sample.id,
                    expiration_date: Date.today + r.rand(90..1000))
end

Ingredient.all.each do |ingredient|
  ingredient.update_descendants_count
end

# cart seeds
# ------------------------------------------------

cart = Cart.create

40.times do
  cart.ingredients << Ingredient.find(r.rand(1..10))
end

end
