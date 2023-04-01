# write only unit tests for method fizzbuzz in class Solver

require 'rspec'
require_relative '../solver'

describe Solver do
  describe '#fizzbuzz' do
    context 'when number is divisible by 3' do
      it 'returns fizz' do
        expect(Solver.fizzbuzz(3)).to eq('fizz')
      end
    end

    context 'when number is divisible by 5' do
      it 'returns buzz' do
        expect(Solver.fizzbuzz(5)).to eq('buzz')
      end
    end

    context 'when number is divisible by 3 and 5' do
      it 'returns fizzbuzz' do
        expect(Solver.fizzbuzz(15)).to eq('fizzbuzz')
      end
    end

    context 'when number is not divisible by 3 or 5' do
      it 'returns the number' do
        expect(Solver.fizzbuzz(1)).to eq('1')
      end
    end
  end
end
