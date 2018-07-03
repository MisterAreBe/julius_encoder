require "minitest/autorun"
require_relative "encoder.rb"

class TestEncoder < Minitest::Test
    
    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_for_string_class
        shift = Time.now
        assert_equal(String, encoder("", "", shift.day).class)
    end

    def test_for_encoded_message
        shift = Time.now
        assert_equal("khoor!", encoder("hello!", "encode", shift.day))
    end

    def test_for_encoded_large_message
        shift = Time.now
        assert_equal("gr qrw hqjdjh", encoder("do not engage", "encode", shift.day))
    end

    def test_for_upercase_gets_encoded
        shift = Time.now
        assert_equal("Khoor!", encoder("Hello!", "encode", shift.day))
    end

    def test_for_decoder_class_string
        assert_equal(String, decoder("").class)
    end

    def test_decoder_message
        assert_equal("Hello there!", decoder("Mjqqt ymjwj!"))
    end

    def test_encoder_function_for_ability_to_decode
        shift = Time.now
        assert_equal("Hello there!", encoder("Khoor wkhuh!", "decode", shift.day))
    end
end