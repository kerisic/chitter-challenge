feature 'Peep can be posted' do
  scenario 'User can post a peep to Chitter' do
    User.create(email: 'test@example.com', password: 'password123', name: 'Chrissy', username: 'chrisc')

    visit '/peeps'
    click_button 'Sign in'
    fill_in(:username, with: 'chrisc')
    fill_in(:password, with: 'password123')
    click_button 'Sign in'
    fill_in 'peep', with: 'Hello world!'
    click_button 'Add a peep'

    expect(current_path).to eq '/peeps'
    expect(page).to have_content 'Hello world!'
  end
end
