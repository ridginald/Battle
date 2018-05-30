feature 'Player 1 can see Player 2 hit points' do
  scenario 'shows hit points' do
    visit('/')
    fill_in :player_1_name, with: "Dan"
    fill_in :player_2_name, with: "Mick"
    click_button 'Submit'
    expect(page).to have_content 'Mick: 60hp'
  end
end
