describe 'Website' do

feature 'Enter Information' do
  scenario 'Fill form with name' do
    fill_in_form_countdown
    expect(page).to have_content ("Paul")
  end
end

feature 'Loads corresponding screens depending on infromation entetered' do
  scenario 'Loads birthday screen if birthday is today' do
    fill_in_form_birthday
    expect(page).to have_content ("Happy Birthday Paul!")
  end

  scenario 'Loads countdown if birthday is not today' do
    fill_in_form_countdown
    expect(page).to have_content ("Your birthday will be in 60 days, Paul")
  end
end
end
