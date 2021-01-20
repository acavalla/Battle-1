feature 'seeing hit points' do
  scenario 'during gameplay' do
    visit('/')
    fill_in('name', with: 'Anna')
    fill_in('name2', with: 'Reeshul')
    click_button('Submit')
    expect(page).to have_content "Reeshul: 100 HP"
  end
end
