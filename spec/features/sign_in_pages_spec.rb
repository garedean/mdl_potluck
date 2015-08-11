require 'rails_helper'

describe "the sign in workflow" do
  it "signs in a user" do
    sign_in
    expect(page).to have_content("SIGNED IN")
  end
end
