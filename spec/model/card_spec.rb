require 'rails_helper'

describe Card do

  context 'initialize with invalid parameters' do

    it 'expects an 2 parameters' do
      expect{ Card.new() }.to raise_error(ArgumentError)
    end

    it 'expects a valid suit' do
      expect{ Card.new('invalid suit', 'queen') }.to raise_error(ArgumentError)
    end

    it 'expects a valid rank' do
      expect{ Card.new('clubs', '17') }.to raise_error(ArgumentError)
    end
  end

end