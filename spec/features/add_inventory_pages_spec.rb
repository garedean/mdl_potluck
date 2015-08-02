require 'rails_helper'

describe "the log an inventory item workflow" do
  it "logs a new food item into inventory" do
    top_level_category = FactoryGirl.create(:top_level_category)
    mid_level_category = FactoryGirl.create(
      :mid_level_category,
      parent_id: top_level_category.id)
    bottom_level_category = FactoryGirl.create(
      :bottom_level_category,
      parent_id: mid_level_category.id)

    visit root_path
    click_link "log-food-item"
    click_link top_level_category.name
    click_link mid_level_category.name
    click_link bottom_level_category.name
    expect(page).to have_content 'Log new food item page' 
  end
end
