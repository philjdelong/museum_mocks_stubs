require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'

class PatronTest <Minitest::Test

  def test_it_exists
    bob = Patron.new("Bob", 20)
    assert_instance_of Patron, bob
  end

  def test_it_has_attributes
    bob = Patron.new("Bob", 20)

    assert_equal "Bob", bob.name
    assert_equal 20, bob.spending_money
    assert_equal [], bob.interests
  end

  def test_it_can_add_interest
    bob = Patron.new("Bob", 20)
    bob.add_interest("Gems and Minerals")
    bob.add_interest("Dead Sea Scrolls")

    assert_equal ["Gems and Minerals","Dead Sea Scrolls"], bob.interests
  end
end
