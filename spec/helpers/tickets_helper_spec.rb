require 'rails_helper'

RSpec.describe TicketsHelper, type: :helper do

  describe 'format_phone_number' do

    it 'returns a normalized phone number' do
      number = "5034226553"
      expect(format_phone_number(number)).to eq("+1"+number)
    end
  
  end

end