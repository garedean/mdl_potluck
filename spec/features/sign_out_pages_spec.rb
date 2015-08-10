require 'rails_helper'

describe "the sign out workflow" do
  it "signs out a user" do
    sign_in
    sign_out
    expect(page).to have_content "Sign In"
  end
end
