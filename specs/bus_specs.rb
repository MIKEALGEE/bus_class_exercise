require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")

class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new("22","Ocean Terminal", [])
    @person1  = Person.new("Steve", "23")
    @person2 = Person.new("Big Weirdo", "28")
    @person3 = Person.new("Iona", "25")

  end

  def test_drive()
    assert_equal("Brum Brum", @bus.drive("Brum Brum"))
  end

  def test_passengers
    assert_equal([],@bus.passengers())

  end
  def test_pick_up
    @bus.pick_up(@person1)
    assert_equal(1,@bus.passengers.length())

  end
    def test_pick_up_more
      @bus.pick_up(@person2, @person3)
      assert_equal(3,@bus.passengers.length())

    end

  # def test_drop_off
  #   @bus.drop_off(@person2)
  #   assert_equal( )
  # end

end
