require "minitest/autorun"
require_relative "ismb_num.rb"

class Ismb_Numbers < Minitest::Test

    def test_for_empty
        assert_equal([], empty)
    end
end
