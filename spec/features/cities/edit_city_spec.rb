describe 'Edit City', type: :feature do
  let(:city) { FactoryGirl.build(:city) }
  let(:user) { FactoryGirl.create(:user) }

  context 'sign in as user' do
    before do
      visit "/users/sign_in"
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_button 'Sign in'
      click_link 'Add City'
      fill_in "Name", with: city.name
      fill_in "Short name", with: city.short_name
      click_button "Save"
    end

    context 'edit city' do
      before do
        click_button "Edit"
        fill_in 'Name', with: "newCityName"
        fill_in 'Short name', with: city.short_name
        click_button 'Save'
      end

      it 'should redirect to edit page' do
        expect(current_path).to eq cities_path
      end

      it 'should have content' do
        expect(page).to have_content "newCityName"
      end
    end
  end
end
