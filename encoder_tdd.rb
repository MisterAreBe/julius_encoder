require "minitest/autorun"
require_relative "encoder.rb"

class TestEncoder < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_for_string_class
        assert_equal(String, encoder("").class)
    end

    def test_for_encoded_message
        assert_equal("mjqqt!", encoder("hello!"))
    end

    def test_for_encoded_large_message
        assert_equal("it sty jslflj", encoder("do not engage"))
    end

    def test_for_upercase_gets_encoded
        assert_equal("Mjqqt!", encoder("Hello!"))
    end

    def test_for_decoder_class_string
        assert_equal(String, decoder("").class)
    end

end