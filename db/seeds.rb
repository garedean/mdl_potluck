require 'date'

r = Random.new

# category seeds
# ------------------------------------------------

Category.create(name: 'Meats', children:[
  Category.create(name: 'Chicken', children:[
    Category.create(name: 'Whole Chicken'),
    Category.create(name: 'Chicken Breast'),
    Category.create(name: 'Chicken Legs'),
    Category.create(name: 'Chicken Drumstick'),
    Category.create(name: 'Ground Chicken')
  ]),
  Category.create(name: 'Beef', children:[
    Category.create(name: 'Beef Steak'),
    Category.create(name: 'Beef Roast'),
    Category.create(name: 'Ground Beef')
  ]),
  Category.create(name: 'Turkey', children:[
    Category.create(name: 'Whole Turkey'),
    Category.create(name: 'Turkey Breast'),
    Category.create(name: 'Ground Turkey')
  ]),
  Category.create(name: 'Pork', children:[
    Category.create(name: 'Pork Chops'),
    Category.create(name: 'Pork Roast'),
    Category.create(name: 'Ground Pork')
  ]),
  Category.create(name: 'Buffalo', children:[
    Category.create(name: 'Buffalo Steak'),
    Category.create(name: 'Buffalo Roast'),
    Category.create(name: 'Ground Buffalo')
  ]),
  Category.create(name: 'Lamb', children:[
    Category.create(name: 'Lamb Steak'),
    Category.create(name: 'Lamb Roast'),
    Category.create(name: 'Ground Lamb')
  ]),
  Category.create(name: 'Fish', children:[
    Category.create(name: 'Salmon', children:[
      Category.create(name: 'Whole Salmon'),
      Category.create(name: 'Salmon Fillet'),
      Category.create(name: 'Salmon Steaks')
    ]),
    Category.create(name: 'White fish', children:[
      Category.create(name: 'Whole Whitefish'),
      Category.create(name: 'Whitefish Fillet')
    ])
  ]),
  Category.create(name: 'Shellfish', children:[
    Category.create(name: 'Shrimp'),
    Category.create(name: 'Clams'),
    Category.create(name: 'Mussels')
  ])
])

Category.create(name: 'Raw Fruits & Veggies', children:[
  Category.create(name: 'Potatoes', children:[
    Category.create(name: 'Russet'),
    Category.create(name: 'Red'),
    Category.create(name: 'Yukon'),
    Category.create(name: 'Sweet/Yams')
  ]),
  Category.create(name: 'Roots', children:[
    Category.create(name: 'Carrots'),
    Category.create(name: 'Radishes'),
    Category.create(name: 'Beets'),
    Category.create(name: 'Parsnips')
  ]),
  Category.create(name: 'Green Veg', children:[
    Category.create(name: 'Celery'),
    Category.create(name: 'Cucumber'),
    Category.create(name: 'Spinach'),
    Category.create(name: 'Lettuce')
  ]),
  Category.create(name: 'Mushrooms', children:[
    Category.create(name: 'White'),
    Category.create(name: 'Portabello'),
    Category.create(name: 'Crimini')
  ]),
  Category.create(name: 'Squashes', children:[
    Category.create(name: 'Pumpkins'),
    Category.create(name: 'Acorn Sq.'),
    Category.create(name: 'Butternut Sq.'),
    Category.create(name: 'Spaghetti Sq.')
  ]),
  Category.create(name: 'Onions+Garlic', children:[
    Category.create(name: 'Yellow On.'),
    Category.create(name: 'White On.'),
    Category.create(name: 'Garlic'),
    Category.create(name: 'Green On.'),
    Category.create(name: 'Leeks'),
    Category.create(name: 'Shallots')
  ])
])

Category.create(name: 'Grains+Beans', children:[
  Category.create(name: 'Flour'),
  Category.create(name: 'Whole Grains'),
  Category.create(name: 'Beans')
])

Category.create(name: 'Baked Goods+Sweets', children:[
  Category.create(name: 'Bread'),
  Category.create(name: 'Cake'),
  Category.create(name: 'Candy'),
  Category.create(name: 'Pastries')
])

Category.create(name: 'Seasonings', children:[
  Category.create(name: 'Herbs', children:[
    Category.create(name: 'Rosemary'),
    Category.create(name: 'Parsley'),
    Category.create(name: 'Sage'),
    Category.create(name: 'Thyme')
  ]),
  Category.create(name: 'Spices', children:[
    Category.create(name: 'Cumin'),
    Category.create(name: 'Paprika'),
    Category.create(name: 'Coriander'),
    Category.create(name: 'China 5 Spice')
  ]),
  Category.create(name: 'Salt')
])

Category.create(name: 'Bottles+Cans+Jars+Bags', children:[
  Category.create(name: 'Bottles', children:[
    Category.create(name: 'Vinegar'),
    Category.create(name: 'Oil'),
    Category.create(name: 'Condiment'),
    Category.create(name: 'Beverage')
  ]),
  Category.create(name: 'Cans'),
  Category.create(name: 'Jars'),
  Category.create(name: 'Bags')
])

Category.create(name: 'Dairy+Eggs', children:[
  Category.create(name: 'Milk'),
  Category.create(name: 'Eggs'),
  Category.create(name: 'Butter'),
  Category.create(name: 'Cream')
])

# location seeds
# ------------------------------------------------

l1 = Location.create(name: 'Kitchen')
  l1.children.create(name: 'Under Counter')
    l2 = l1.children.create(name: 'Spice Area')
      l2.children.create(name: 'Spice Top Shelves')
      l2.children.create(name: 'Spice Middle Shelves')
      l2.children.create(name: 'Spice Bottom Shelves')

l3 = Location.create(name: 'Dishwasher Room')
  l3.children.create(name: 'Deli Fridge #2')
    l4 = l3.children.create(name: 'Deli Left Door')
      l4.children.create(name: 'Left Door Top')
      l4.children.create(name: 'Left Door Middle')
      l4.children.create(name: 'Left Door Bottom')
    l5 = l3.children.create(name: 'Deli Left Door')
      l5.children.create(name: 'Middle Door Top')
      l5.children.create(name: 'Middle Door Middle')
      l5.children.create(name: 'Middle Door Bottom')
    l6 = l3.children.create(name: 'Deli Left Door')
      l6.children.create(name: 'Right Door Top')
      l6.children.create(name: 'Right Door Middle')
      l6.children.create(name: 'Right Door Bottom')

  l7 = Location.create(name: 'Dishwasher Room')
    l7.children.create(name: 'Deli Fridge #2')
      l8 = l7.children.create(name: 'Deli Left Door')
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

  l11 = Location.create(name: 'Black Hall')
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

  l16 = Location.create(name: 'Freezer #4')
    l17 = l16.children.create(name: 'Top')
      l17.children.create(name: 'Middle')
      l17.children.create(name: 'Bottom')

  l17 = Location.create(name: 'Freezer #5')
    l18 = l17.children.create(name: 'Top')
      l18.children.create(name: 'Middle')
      l18.children.create(name: 'Bottom')

  l19 = Location.create(name: 'Freezer #6')
    l20 = l19.children.create(name: 'Top')
      l20.children.create(name: 'Middle')
      l20.children.create(name: 'Bottom')

  l21 = Location.create(name: 'Shelves')
    l21.children.create(name: 'Cove/Closet')
    l21.children.create(name: 'Metal Racks')

  l22 = Location.create(name: 'Table')
    l22.children.create(name: 'Top')
    l22.children.create(name: 'Lower Shelf')

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

    l30 = Location.create(name: 'Right')
      l31 = l30.children.create(name: 'Top')
        l31.children.create(name: 'Middle')
        l31.children.create(name: 'Bottom')

    l32 = Location.create(name: 'Alleyway')
      l33 = l32.children.create(name: 'Building Side')
        l33.children.create(name: 'Top')
        l33.children.create(name: 'Middle')
        l33.children.create(name: 'Bottom')
      l34 = l32.children.create(name: 'Opposite Side')
        l34.children.create(name: 'Top')
        l34.children.create(name: 'Middle')
        l34.children.create(name: 'Bottom')

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
                                   "Spice Top Shelves",
                                   "Spice Middle Shelves",
                                   "Spice Bottom Shelves",
                                   "Shelves"]} )

max_category_id = Category.maximum(:id)

1000.times do
  Ingredient.create(category_id: r.rand(max_category_id),
                    location_id: locations.sample.id,
                    expiring_at: Date.today + r.rand(-5..90))
end

# cart seeds
# ------------------------------------------------

cart = Cart.create

40.times do
  cart.ingredients << Ingredient.find(r.rand(1..10))
end
