feature 'Player 1 can see Player 2 hit points' do
  scenario 'shows hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mick: 60hp'
  end
end
