def user_sign_up
    visit '/users/sign_up'
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "123456"
    fill_in "Password confirmation", with: "123456"
    click_link "Sign Up"
end    