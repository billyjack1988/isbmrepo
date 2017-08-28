require "minitest/autorun"
require_relative "isbn_num.rb"

class Ismb_Numbers < Minitest::Test

    def test_for_empty
        assert_equal([], empty)
    end

    def test_for_length_10
        assert_equal(true, len("1234567890"))
    end

    def test_for_length_13
        assert_equal(true, len("1234567890123"))\
    end
    
    def test_for_length_10_with_dashes
        assert_equal(true, len("0-321-14653-0"))
    end
    
    def test_for_length_13_with_dashes
        assert_equal(true, len_13("978-0-13-149505-0"))
    end

    def test_for_removing_dashes_10_numbers
        assert_equal("0321146530", dash_remover("0-321-14653-0"))
    end

    def test_for_removing_dashes_13_numbers
        assert_equal("9780131495050", dash_remover("978-0-13-149505-0"))
    end
     
    

end
