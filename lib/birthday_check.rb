require 'date'

class BirthdayCheck
  attr_reader :birthday, :today

  def self.create(birthday)
    @birthday_check = BirthdayCheck.new(birthday)
  end

  def self.instance
    @birthday_check
  end

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
