feature 'attack player 1' do
  scenario 'see confirmation' do
    sign_in_and_play
    click_button('Attack!!')
    expect(page).to have_content "Anna attacked Reeshul!"
  end
end
