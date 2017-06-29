# frozen_string_literal: true

require_relative '../lib/fizzbuzz.rb'

def transform_keys_to_symbols(hash)
  key_value_arr = hash.map do |k, v|
    [k.to_sym, v]
  end
  Hash[key_value_arr]
end

RSpec.describe 'fizzbuzz method' do
  it 'puts values to stdout' do
    expect { fizzbuzz(1) }.to output.to_stdout
  end

  it "puts 'fizz' when number is divisible by 3" do
    expected_output = "1\n2\nfizz\n"
    expect { fizzbuzz(3) }.to output(expected_output).to_stdout
  end

  it "puts 'buzz' when number is divisible by 5" do
    expected_output = "1\n2\nfizz\n4\nbuzz\n"
    expect { fizzbuzz(5) }.to output(expected_output).to_stdout
  end

  it "puts 'fizzbuzz' when number is divisible by 3 and 5" do
    expected_output = "1\n2\nfizz\n4\nbuzz\nfizz\n7\n8\nfizz\nbuzz\
\n11\nfizz\n13\n14\nfizzbuzz\n"
    expect { fizzbuzz(15) }.to output(expected_output).to_stdout
  end
end

RSpec.describe 'fizzbuzz_hash method' do
  it 'returns a hash' do
    result = fizzbuzz_hash(1)
    expect(result).to be_kind_of(Hash)
  end
  it "should add values divisible by 3 to 'fizz' array on hash" do
    result = fizzbuzz_hash(3)
    symbol_key_hash = transform_keys_to_symbols(result)
    expect(symbol_key_hash).to include(fizz: [3])
  end

  it "should add values divisible by 5 to 'buzz' array on hash" do
    result = fizzbuzz_hash(5)
    symbol_key_hash = transform_keys_to_symbols(result)
    expect(symbol_key_hash).to include(buzz: [5])
  end

  it "should add values divisible by 3 and 5 to 'fizzbuzz' array on hash" do
    result = fizzbuzz_hash(15)
    symbol_key_hash = transform_keys_to_symbols(result)
    expect(symbol_key_hash).to include(fizzbuzz: [15])
  end

  it "should add values not divisble by 3 or 5 to 'other' array on hash" do
    result = fizzbuzz_hash(3)
    symbol_key_hash = transform_keys_to_symbols(result)
    expect(symbol_key_hash).to include(other: [1, 2])
  end
end
