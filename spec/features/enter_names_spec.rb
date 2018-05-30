feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Dan'
    fill_in :player_2_name, with: 'Mick'
    click_button 'Submit'
    expect(page).to have_content 'Dan vs. Mick'
  end
end
