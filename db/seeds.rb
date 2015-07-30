category1 = Category.create(name: 'Raw Protein',
                            has_children: true);
category2 = Category.create(name: 'Vegetables',
                            has_children: true);

category3 = Category.create(name: 'Meats',
                            parent_id: category1.id,
                            has_children: true);
category4 = Category.create(name: 'Seafood',
                            parent_id: category1.id,
                            has_children: true);

category5 = Category.create(name: 'Chicken',
                            parent_id: category3.id,
                            has_children: true);
Category.create(name: 'Beef',
                parent_id: category3.id,
                has_children: true);
Category.create(name: 'Turkey',
                parent_id: category3.id,
                has_children: true);
Category.create(name: 'Pork',
                parent_id: category3.id,
                has_children: true);
Category.create(name: 'Buffalo',
                parent_id: category3.id,
                has_children: true);
Category.create(name: 'Lamb',
                parent_id: category3.id,
                has_children: true);

Category.create(name: 'Whole Chicken',
                parent_id: category5.id,
                has_children: false);
Category.create(name: 'Chicken Breast',
                parent_id: category5.id,
                has_children: false);
Category.create(name: 'Chicken Legs',
                parent_id: category5.id,
                has_children: false);
Category.create(name: 'Chicken Drumsticks',
                parent_id: category5.id,
                has_children: false);
Category.create(name: 'Ground Chicken',
                parent_id: category5.id,
                has_children: false);


# Category.create(name: 'Raw Protein', children:[
#   Category.create(name: 'Meats', children:[
#     Category.create(name: 'Chicken', children:[
#       Category.create(name: 'Whole Chicken', lifespan:30),
#       Category.create(name: 'Chicken Breast', lifespan:30),
#       Category.create(name: 'Chicken Legs', lifespan:30),
#       Category.create(name: 'Chicken Drumstick', lifespan:30),
#       Category.create(name: 'Ground Chicken', lifespan:30)
#       ]),
#     Category.create(name: 'Beef', children:[
#       Category.create(name: 'Beef Steak', lifespan:30),
#       Category.create(name: 'Beef Roast', lifespan:30),
#       Category.create(name: 'Ground Beef', lifespan:30)
#       ]),
#     Category.create(name: 'Turkey', children:[
#       Category.create(name: 'Whole Turkey', lifespan:30),
#       Category.create(name: 'Turkey Breast', lifespan:30),
#       Category.create(name: 'Ground Turkey', lifespan:30)
#       ]),
#     Category.create(name: 'Pork', children:[
#       Category.create(name: 'Pork Chops', lifespan:30),
#       Category.create(name: 'Pork Roast', lifespan:30),
#       Category.create(name: 'Ground Pork', lifespan:30)
#       ]),
#     Category.create(name: 'Buffalo', children:[
#       Category.create(name: 'Buffalo Steak', lifespan:30),
#       Category.create(name: 'Buffalo Roast', lifespan:30),
#       Category.create(name: 'Ground Buffalo', lifespan:30)
#       ]),
#     Category.create(name: 'Lamb', children:[
#       Category.create(name: 'Lamb Steak', lifespan:30),
#       Category.create(name: 'Lamb Roast', lifespan:30),
#       Category.create(name: 'Ground Lamb', lifespan:30)
#       ])
#     ]),
#
#   Category.create(name: 'Seafood', children:[
#     Category.create(name: 'Fish', children:[
#       Category.create(name: 'Salmon', children:[
#         Category.create(name: 'Whole Salmon', lifespan:30),
#         Category.create(name: 'Salmon Fillet', lifespan:30),
#         Category.create(name: 'Salmon Steaks', lifespan:30)
#         ]),
#       Category.create(name: 'White fish', children:[
#         Category.create(name: 'Whole Whitefish', lifespan:30),
#         Category.create(name: 'Whitefish Fillet', lifespan:30)
#         ])
#       ]),
#     Category.create(name: 'Shellfish', children:[
#       Category.create(name: 'Shrimp', lifespan:30),
#       Category.create(name: 'Clams', lifespan:30),
#       Category.create(name: 'Mussels', lifespan:30)
#     ])
#   ])
# ])
#
# Category.create(name: 'Raw Fruits/Veggies', children:[
#   Category.create(name: 'Potatoes', children:[
#     Category.create(name: 'Russet', lifespan:14),
#     Category.create(name: 'Red', lifespan:14),
#     Category.create(name: 'Yukon', lifespan:14),
#     Category.create(name: 'Sweet/Yams', lifespan:14)
#     ]),
#   Category.create(name: 'Roots', children:[
#     Category.create(name: 'Carrots', lifespan:14),
#     Category.create(name: 'Radishes', lifespan:14),
#     Category.create(name: 'Beets', lifespan:14),
#     Category.create(name: 'Parsnips', lifespan:14)
#     ]),
#   Category.create(name: 'Green Veg', children:[
#     Category.create(name: 'Celery', lifespan:14),
#     Category.create(name: 'Cucumber', lifespan:14),
#     Category.create(name: 'Spinach', lifespan:14),
#     Category.create(name: 'Lettuce', lifespan:14)
#     ]),
#   Category.create(name: 'Mushrooms', children:[
#     Category.create(name: 'White', lifespan:14),
#     Category.create(name: 'Portabello', lifespan:14),
#     Category.create(name: 'Crimini', lifespan:14)
#     ]),
#   Category.create(name: 'Squashes', children:[
#     Category.create(name: 'Pumpkins', lifespan:14),
#     Category.create(name: 'Acorn Sq.', lifespan:14),
#     Category.create(name: 'Butternut Sq.', lifespan:14),
#     Category.create(name: 'Spaghetti Sq.', lifespan:14)
#     ]),
#   Category.create(name: 'Onions/Garlic', children:[
#     Category.create(name: 'Yellow On.', lifespan:60),
#     Category.create(name: 'White On.', lifespan:60),
#     Category.create(name: 'Garlic', lifespan:60),
#     Category.create(name: 'Green On.', lifespan:60),
#     Category.create(name: 'Leeks', lifespan:60),
#     Category.create(name: 'Shallots', lifespan:60)
#   ])
# ])
#
# Category.create(name: 'Grains/Beans', children:[
#   Category.create(name: 'Flour', lifespan:21),
#   Category.create(name: 'Whole Grains', lifespan:30),
#   Category.create(name: 'Beans', lifespan:21)
# ])
#
# Category.create(name: 'Baked Goods/Sweets', lifespan:365, children:[
#   Category.create(name: 'Bread', lifespan:21),
#   Category.create(name: 'Cake', lifespan:30),
#   Category.create(name: 'Candy', lifespan:21),
#   Category.create(name: 'Pastries', lifespan:21)
# ])
#
# Category.create(name: 'Seasonings', children:[
#   Category.create(name: 'Herbs', children:[
#     Category.create(name: 'Rosemary', lifespan:21),
#     Category.create(name: 'Parsley', lifespan:30),
#     Category.create(name: 'Sage', lifespan:21),
#     Category.create(name: 'Thyme', lifespan:21)
#   ]),
#   Category.create(name: 'Spices', children:[
#     Category.create(name: 'Cumin', lifespan:21),
#     Category.create(name: 'Paprika', lifespan:30),
#     Category.create(name: 'Coriander', lifespan:21),
#     Category.create(name: 'China 5 Spice', lifespan:21)
#   ]),
#   Category.create(name: 'Salt', lifespan:21)
# ])
#
# Category.create(name: 'Bottles/Cans/Jars/Bags', children:[
#   Category.create(name: 'Bottles', children:[
#     Category.create(name: 'Vinegar', lifespan:21),
#     Category.create(name: 'Oil', lifespan:30),
#     Category.create(name: 'Condiment', lifespan:21),
#     Category.create(name: 'Beverage', lifespan:21)
#   ]),
#   Category.create(name: 'Cans', lifespan:30),
#   Category.create(name: 'Jars', lifespan:21),
#   Category.create(name: 'Bags', lifespan:21)
# ])
#
# Category.create(name: 'Dairy/Eggs', children:[
#   Category.create(name: 'Milk', lifespan:21),
#   Category.create(name: 'Eggs', lifespan:30),
#   Category.create(name: 'Butter', lifespan:21),
#   Category.create(name: 'Cream', lifespan:21)
# ])
