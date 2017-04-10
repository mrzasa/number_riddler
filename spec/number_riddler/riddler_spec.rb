require 'spec_helper'

RSpec.describe NumberRiddler::Riddler do
  subject { described_class.new(encoder: encoder) }

  let(:encoder) do
    NumberRiddler::Encoders::Test.new
  end

  let(:input) { '1234' }

  it 'returns string per number' do
    expect(subject.encode(input).size).to eq(input.size)
  end

  it 'uses given encoder' do
    expect(subject.encode(input)).to eq(['b', 'c', 'd', 'e'])
  end
end
