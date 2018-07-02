require "minitest/autorun"
require_relative "encoder.rb"

class TestEncoder < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_for_hash_class
        assert_equal(Hash, encoder().class)
    end

    def test_for_encoded_message
        assert_equal("Mjqqt!", encoder("Hello!"))
    end
end