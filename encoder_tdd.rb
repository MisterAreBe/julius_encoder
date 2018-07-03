require "minitest/autorun"
require_relative "encoder.rb"

class TestEncoder < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_for_string_class
        assert_equal(String, encoder("", "").class)
    end

    def test_for_encoded_message
        assert_equal("khoor!", encoder("hello!", "encode"))
    end

    def test_for_encoded_large_message
        assert_equal("gr qrw hqjdjh", encoder("do not engage", "encode"))
    end

    def test_for_upercase_gets_encoded
        assert_equal("Khoor!", encoder("Hello!", "encode"))
    end

    def test_for_decoder_class_string
        assert_equal(String, decoder("").class)
    end

    def test_decoder_message
        assert_equal("Hello there!", decoder("Mjqqt ymjwj!"))
    end

    def test_encoder_function_for_ability_to_decode
        assert_equal("Jgnnq vjgtg!", encoder("Mjqqt ymjwj!", "decode"))
    end
end