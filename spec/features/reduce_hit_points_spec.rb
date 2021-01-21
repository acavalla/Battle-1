feature 'reduce hit points' do
  scenario 'when attacked players HP is reduced by 10' do
    sign_in_and_play
    click_button "Attack!!"
    expect(page).not_to have_content 'Reeshul HP: 100'
    expect(page).to have_content 'Reeshul HP: 90'
  end
end
