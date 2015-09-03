require 'rails_helper'

describe "the store pages" do
  describe "add item without location workflow" do
    it "adds an item without a location" do
      sign_in
      find("a[href='/store/categories']").click
      click_on "Meats"
      click_on "Chicken"
      click_on "Whole Chicken"
      find('#add-item').click
      expect(page).to have_content "You just stored a new item: 'Whole Chicken'"
    end
  end

  describe "'add another item' (quick re-add) without location workflow" do
    it "adds one more unlocated item" do
      sign_in
      find("a[href='/store/categories']").click
      click_on "Meats"
      click_on "Chicken"
      click_on "Whole Chicken"
      find('#add-item').click
      descendants_count = find("#item-count").text.to_i
      click_on("Without Location")
      expect(find("#item-count").text).to eq (descendants_count + 1).to_s
    end
  end
end
