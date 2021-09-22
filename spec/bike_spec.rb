# frozen_string_literal: true

require 'bike'

RSpec.describe Bike do
    it 'reponse to release working? method' do
        bike = Bike.new

        expect(bike).to respond_to(:working?)
      end
end
