require 'minitest/autorun'
# require './lib/deep_freezable'
require './lib/bank'
require './lib/team'

class DeepFreezableTest < Minitest::Test
  
  def test_deep_freeze_to_array
    assert_equal ['Japan','US','India'], Team::COUNTRIES
    
    assert Team::COUNTRIES.frozen?
    
    assert Team::COUNTRIES.all?{ |country| country.frozen? }
    
  end
  
  def test_deep_freeze_to_hash
    assert_equal(
      { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'},
      Bank::CURRENIES
    )
    
    assert Bank::CURRENIES.frozen?
    assert Bank::CURRENIES.all?{ |key, value| key.frozen? && value.frozen?}
  end
  
end