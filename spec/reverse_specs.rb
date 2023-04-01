# unit tests for method reverse in class Sover that returns a string in reverse

require 'rspec'
require_relative '../solver'

describe Solver do
  describe '#reverse' do
    context 'when string is empty' do
      it 'returns empty string' do
        expect(Solver.reverse('')).to eq('')
      end
    end

    context 'when string is not empty' do
      it 'returns string in reverse' do
        expect(Solver.reverse('hello')).to eq('olleh')
      end
    end

    context 'when input is not a string' do
      it 'should raise an error' do
        expect { Solver.reverse(1) }.to raise_error(ArgumentError)
      end

      it 'should raise an error' do
        expect { Solver.reverse(nil) }.to raise_error(ArgumentError)
      end
    end
  end
end
