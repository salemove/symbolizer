require 'symbolizer'

describe Symbolizer do
  describe '.symbolize' do
    subject { described_class.symbolize(input) }

    context 'when one level hash' do
      let(:input) { {'a' => 'b'} }

      it 'symbolizes keys' do
        should eq(a: 'b')
      end
    end

    context 'when nested hash' do
      let(:input) { {'a' => {'b' => 'c'}} }

      it 'symbolizes keys recursively' do
        should eq(a: {b: 'c'})
      end
    end

    context 'when hash in an array' do
      let(:input) { {'a' => [{'b' => 'c'}]} }

      it 'symbolizes keys recursively' do
        should eq(a: [{b: 'c'}])
      end
    end

    context 'when array' do
      let(:input) { {'a' => [[1, 2], [3, 4]]} }

      it 'symbolizes keys recursively' do
        should eq(a: [[1, 2], [3, 4]])
      end
    end
  end
end
