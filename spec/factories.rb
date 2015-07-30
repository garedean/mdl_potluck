FactoryGirl.define do
  factory :top_level_category, class: Category do
    name 'Raw Protein'
    parent_id nil
    has_children true
  end

  factory :mid_level_category, class: Category do
    name('Chicken')
    parent_id nil
    has_children true
  end

  factory :bottom_level_category, class: Category do
    name('Whole Chicken')
    parent_id nil
    has_children false
  end
end
