class Exercise < ApplicationRecord

  #strings = [ 'abc', 'defg', 'hi' ,'a', 'b', 'ze', 'ae' ]
  # i = 4
  #
  # output = { 1: 2, 2: 3, 3: 1 }
  def self.filter_and_group(strings, i)
    strings.select{|w| w.length < i}.group_by{|w| w.length}.transform_values(&:length).sort.to_h
  end
end
