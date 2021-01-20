def sign_in_and_play
  visit('/')
  fill_in('name', with: 'Anna')
  fill_in('name2', with: 'Reeshul')
  click_button('Submit')
end