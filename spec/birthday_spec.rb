require 'birthday_check'

describe BirthdayCheck do
  subject(:match) { described_class.new(Date.today) }
  subject(:sixty) { described_class.new(Date.today + 60) }

  describe '#birthday?' do
    it 'Returns true if birthday is equal to today' do
      expect(match.birthday?).to eq true
    end
    it 'Returns false if birthday is not equal to today' do
      expect(sixty.birthday?).to eq false
    end
  end

  describe '#days_between' do
    it 'Returns 60 if birthday is 60 days away from today' do
      expect(sixty.days_between).to eq 60
    end
  end

end






#   class BirthdayCheck
#
#     def initialize(birthday)
#       @birthday = birthday
#       @today = Date.new
#     end
#
#     def days_between
#       (@today - @birthday).to_i
#     end
#   end
# end
