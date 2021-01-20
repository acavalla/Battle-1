feature 'Adding & displaying player names' do
  scenario 'Personalising new games' do
    sign_in_and_play
    expect(page).to have_content 'Welcome, Anna and Reeshul!'
  end
end
