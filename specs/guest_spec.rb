require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")

class GuestTest < Minitest::Test

  def setup
    @guest = Guest.new("David", 20)
  end

  def test_get_name
    assert_equal("David", @guest.name)
  end

  def test_get_money
    assert_equal(20, @guest.money)
  end

end
