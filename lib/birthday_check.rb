require 'date'

class BirthdayCheck
  attr_reader :birthday, :today

  def initialize(birthday)
    @birthday = birthday
    @today = Date.today
  end

  def birthday?
    @birthday == @today
  end

  def days_between
    (@birthday - @today).to_i
  end
end
