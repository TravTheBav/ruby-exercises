require './lib/caesar_cipher.rb'

describe 'caesar_cipher' do
  context 'when string is length 0' do
    it 'returns an empty string' do
      str = ''
      expect(caesar_cipher(str, 2)).to eql('')
    end
  end
  
  context 'when string contains spaces' do
    it 'shifts string while maintaining spaces' do
      str = 'what a string'
      expect(caesar_cipher(str, 5)).to eql('bmfy f xywnsl')
    end
  end

  context 'when string contains symbols' do
    it 'shifts string while maintaining symbols' do
      str = 'bull$#@!'
      expect(caesar_cipher(str, 1)).to eql('cvmm$#@!')
    end
  end

  context 'when string contains upper case letters' do
    it 'shifts letter while maintaining its case' do
      str = 'Cat'
      expect(caesar_cipher(str, 1)).to eql('Dbu')
    end
  end

  context 'when a char shifts past the end of the alphabet' do
    it 'char wraps back around to the beginning of the alphabet' do
      str = 'yz'
      expect(caesar_cipher(str, 2)).to eql('ab')
    end
  end

  context 'when given a negative shift factor' do
    it 'shifts string to the left of the alphabet' do
      str = 'cat'
      expect(caesar_cipher(str, -1)).to eql('bzs')
    end
  end
end
