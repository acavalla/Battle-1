feature 'Adding & displaying player names' do
  scenario 'Personalising new games' do
    visit('/')
    fill_in('name', with: 'Anna')
    fill_in('name2', with: 'Reeshul')
    click_button('Submit')
    expect(page).to have_content 'Welcome, Anna and Reeshul!'
  end
end
