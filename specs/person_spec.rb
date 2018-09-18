require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")


class PersonTest < MiniTest::Test

def setup()
@person = Person.new("Jacob", "34")

end


end
