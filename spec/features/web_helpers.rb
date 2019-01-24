require 'date'

# Fill's in form with a date set 60 days from today
def fill_in_form_countdown
  @today = Date.today + 60
  visit '/'
  fill_in 'name', with: 'Paul'
  fill_in 'day', with: @today.mday.to_s
  select(Date::MONTHNAMES[@today.month].to_s, :from => 'month')
  click_button 'Go!'
end

# Fills in form with today's date
def fill_in_form_birthday
  @today = Date.today
  visit '/'
  fill_in 'name', with: 'Paul'
  fill_in 'day', with: @today.mday.to_s
  select(Date::MONTHNAMES[@today.month].to_s, :from => 'month')
  click_button 'Go!'
end
