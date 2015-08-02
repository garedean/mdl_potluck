require 'date'

# category seeds
# ------------------------------------------------

Category.create(name: 'Raw Protein', children:[
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
    ])
  ]),
  Category.create(name: 'Seafood', children:[
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
])

Category.create(name: 'Raw Fruits/Veggies', children:[
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
  Category.create(name: 'Onions/Garlic', children:[
    Category.create(name: 'Yellow On.'),
    Category.create(name: 'White On.'),
    Category.create(name: 'Garlic'),
    Category.create(name: 'Green On.'),
    Category.create(name: 'Leeks'),
    Category.create(name: 'Shallots')
  ])
])

Category.create(name: 'Grains/Beans', children:[
  Category.create(name: 'Flour'),
  Category.create(name: 'Whole Grains'),
  Category.create(name: 'Beans')
])

Category.create(name: 'Baked Goods/Sweets', children:[
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

Category.create(name: 'Bottles/Cans/Jars/Bags', children:[
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

Category.create(name: 'Dairy/Eggs', children:[
  Category.create(name: 'Milk'),
  Category.create(name: 'Eggs'),
  Category.create(name: 'Butter'),
  Category.create(name: 'Cream')
])

# location seeds
# ------------------------------------------------

Location.create(name: 'Kitchen', children:[
  Location.create(name: 'Under Counter'),
  Location.create(name: 'Spice Area', children:[
    Location.create(name: 'Spice Top Shelves'),
    Location.create(name: 'Spice Middle Shelves'),
    Location.create(name: 'Spice Bottom Shelves')
  ])
])

Location.create(name: 'Dishwasher Room', children:[
  Location.create(name: 'Deli Fridge #2', children:[
    Location.create(name: 'Deli Left Door', children:[
      Location.create(name: 'Left Door Top'),
      Location.create(name: 'Left Door Middle'),
      Location.create(name: 'Left Door Bottom')
    ]),
    Location.create(name: 'Deli Middle Door', children:[
      Location.create(name: 'Middle Door Top'),
      Location.create(name: 'Middle Door Middle'),
      Location.create(name: 'Middle Door Bottom')
    ]),
    Location.create(name: 'Deli Right Door', children:[
      Location.create(name: 'Right Door Top'),
      Location.create(name: 'Right Door Middle'),
      Location.create(name: 'Right Door Bottom')
    ])
  ]),
  Location.create(name: 'Fridge #1', children:[
    Location.create(name: 'Freezer (Left)', children:[
      Location.create(name: 'Door'),
      Location.create(name: 'Top Shelves'),
      Location.create(name: 'Middle Shelves'),
      Location.create(name: 'Bottom Shelves')
    ]),
    Location.create(name: 'Fridge (Right)', children:[
      Location.create(name: 'Door'),
      Location.create(name: 'Top Shelves'),
      Location.create(name: 'Middle Shelves'),
      Location.create(name: 'Bottom Shelves')
    ])
  ])
])

Location.create(name: 'Loading Dock', children:[
  Location.create(name: 'Floor'),
  Location.create(name: 'Shelves')
])

Location.create(name: 'Back Hall', children:[
  Location.create(name: 'Shelves'),
  Location.create(name: 'Floor'),
  Location.create(name: 'Fridge #8', children:[
    Location.create(name: 'Top'),
    Location.create(name: 'Middle'),
    Location.create(name: 'Bottom')
  ]),
  Location.create(name: 'Freezer #7', children:[
    Location.create(name: 'Top'),
    Location.create(name: 'Middle'),
    Location.create(name: 'Bottom')
  ])
])

Location.create(name: 'Back Room', children:[
  Location.create(name: 'Freezer #3', children:[
    Location.create(name: 'Top'),
    Location.create(name: 'Middle'),
    Location.create(name: 'Bottom')
  ]),
  Location.create(name: 'Freezer #4', children:[
    Location.create(name: 'Top'),
    Location.create(name: 'Middle'),
    Location.create(name: 'Bottom')
  ]),
  Location.create(name: 'Freezer #5', children:[
    Location.create(name: 'Top'),
    Location.create(name: 'Middle'),
    Location.create(name: 'Bottom')
  ]),
  Location.create(name: 'Freezer #6', children:[
    Location.create(name: 'Top'),
    Location.create(name: 'Middle'),
    Location.create(name: 'Bottom')
  ]),
  Location.create(name: 'Shelves', children:[
    Location.create(name: 'Cove/Closet'),
    Location.create(name: 'Metal Racks')
  ]),
  Location.create(name: 'Table', children:[
    Location.create(name: 'Top'),
    Location.create(name: 'Lower Shelf')
  ]),
  Location.create(name: 'Floor')
])

Location.create(name: 'Walk-In Fridge', children:[
  Location.create(name: 'Front', children:[
    Location.create(name: 'Left', children: [
      Location.create(name: 'Top'),
      Location.create(name: 'Middle'),
      Location.create(name: 'Bottom')
    ]),
    Location.create(name: 'Right', children:[
      Location.create(name: 'Top'),
      Location.create(name: 'Middle'),
      Location.create(name: 'Bottom')
    ])
  ]),
  Location.create(name: 'Back', children:[
    Location.create(name: 'Left', children: [
      Location.create(name: 'Top'),
      Location.create(name: 'Middle'),
      Location.create(name: 'Bottom')
    ]),
    Location.create(name: 'Right', children:[
      Location.create(name: 'Top'),
      Location.create(name: 'Middle'),
      Location.create(name: 'Bottom')
    ])
  ])
])

Location.create(name: 'Alleyway', children:[
  Location.create(name: 'Building Side', children: [
    Location.create(name: 'Top'),
    Location.create(name: 'Middle'),
    Location.create(name: 'Bottom')
  ]),
  Location.create(name: 'Opposite Side', children:[
    Location.create(name: 'Top'),
    Location.create(name: 'Middle'),
    Location.create(name: 'Bottom')
  ])
])

Location.create(name: 'Basement', children:[
  Location.create(name: 'Shelves'),
  Location.create(name: 'Table'),
  Location.create(name: 'Floor')
])

# ingredient seeds
# ------------------------------------------------

r = Random.new
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

2000.times do
  Ingredient.create(category_id: r.rand(max_category_id),
                    location_id: locations.sample.id,
                    expiring_at: Date.today + r.rand(-5..90))
end
