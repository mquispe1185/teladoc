require 'rails_helper'

RSpec.describe Exercise, type: :model do
  it 'should filter and group array of strings' do
    strings = [ 'abc', 'defg', 'hi' ,'a', 'b', 'ze', 'ae' ]
    i = 4
    output = { 1=> 2, 2=> 3, 3=> 1 }
    expect(Exercise.filter_and_group(strings, i)).to eq(output) 
  end
end
