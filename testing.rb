require "minitest/autorun"
require_relative "isbn_num.rb"

class Ismb_Numbers < Minitest::Test

    def test_for_empty
        assert_equal([], empty)
    end

    def test_for_length
        assert_equal(true, len("1234567890"))
    end
    
end
