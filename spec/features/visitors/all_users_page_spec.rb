describe 'Redirection to all users page', type: :feature do
  let(:user) { FactoryGirl.create(:user) }

  context 'check Users link' do
    before do
      visit "/users/sign_in"
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_button 'Sign in'
      click_link "Users"
    end

    it 'should redirect to all_users_path' do
      expect(current_path).to eq all_users_path
    end

    it 'should have content' do
      expect(page).to have_content 'Users'
      expect(page).to have_content user.email
    end
  end
end
