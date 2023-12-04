describe 'StateByZip' do
  describe 'find' do
    it 'correctly finds the state using a 3-digit match' do
      expect(StateByZip.find('99123')).to eq('WA')
    end

    it 'correctly finds the state using a 5-digit match' do
      expect(StateByZip.find('06390')).to eq('NY')
    end

    it 'correctly finds the state for an integer' do
      expect(StateByZip.find(99123)).to eq('WA')
    end

    it 'correctly finds the state for a short integer by supplying the leading zeroes' do
      expect(StateByZip.find(401)).to eq('NY')
    end

    it 'returns nil if no match is found' do
      expect(StateByZip.find('00100')).to be_nil
    end
  end
end
