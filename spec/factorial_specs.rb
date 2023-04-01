require 'rspec'
require_relative '../solver'

describe Solver do
  describe '#factorial' do
    context 'when number is 0' do
      it 'returns 1' do
        expect(Solver.factorial(0)).to eq(1)
      end
    end

    context 'when number is 1' do
      it 'returns 1' do
        expect(Solver.factorial(1)).to eq(1)
      end
    end

    context 'when number is valid' do
      it 'returns 2' do
        expect(Solver.factorial(2)).to eq(2)
      end

      it 'returns 6' do
        expect(Solver.factorial(3)).to eq(6)
      end

      it 'returns 24' do
        expect(Solver.factorial(4)).to eq(24)
      end

      it 'returns 120' do
        expect(Solver.factorial(5)).to eq(120)
      end

      it 'returns 720' do
        expect(Solver.factorial(6)).to eq(720)
      end
    end

    context 'when number is invalid' do
      it 'should raise an error' do
        expect { Solver.factorial(-1) }.to raise_error(ArgumentError, 'n must be non-negative')
      end

      it 'should raise an error' do
        expect { Solver.factorial('a') }.to raise_error(ArgumentError, 'n must be non-negative')
      end
    end
  end
end
