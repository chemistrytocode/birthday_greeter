require 'sinatra/base'
require './lib/birthday_check'

class Birthday < Sinatra::Base
  enable :sessions

  before do
    @birthday_check = BirthdayCheck.instance
  end

  get '/' do
    erb :form
  end

  post '/birthday' do
    # Form variables
    @name = params[:name]
    day = params[:day]
    month = params[:month]
    @bday = Date.parse("#{day}-#{Date::MONTHNAMES.index(month)}-#{Date.today.year}")
    @birthday_check = BirthdayCheck.create(@bday)
    @between = @birthday_check.days_between
    erb :birthday
  end
end
