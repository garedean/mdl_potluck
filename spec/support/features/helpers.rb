module Helpers
  def sign_in
    visit new_user_session_path
    fill_in "user_email", with: "user@test.com"
    fill_in "user_password", with: "123abc!!"
    click_on "Log in"
  end

  def sign_out
    find("a[href='/users/sign_out']").click
  end
end
