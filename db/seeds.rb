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
