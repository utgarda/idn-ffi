require 'minitest/unit'
require 'minitest/pride'
require 'minitest/autorun'

require 'idn-ffi'

class TestStringprep < MiniTest::Unit::TestCase
  describe 'nameprep' do

    it 'blows up with an invalid require' do
      assert_equal IDN::nameprep("\xC5\x83\xCD\xBA"), "\xC5\x84 \xCE\xB9"
    end
  end

end
