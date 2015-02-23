describe 'Add new city', type: :feature do
  let(:city) { FactoryGirl.create(:city) }
  let(:user) { FactoryGirl.create(:user) }

  context 'sign in as user' do
    before do
      visit "/users/sign_in"
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_button 'Sign in'
      click_link 'Add City'
    end

    context 'add new city' do
      before do
        fill_in "Name", with: city.name
        fill_in "Short name", with: city.short_name
        click_button "Save"
      end

      it 'should redirect to city_path' do
        expect(current_path).to eq cities_path
      end

      it 'should have content' do
        expect(page).to have_content city.name
        expect(page).to have_content city.short_name
      end
    end
  end


end
