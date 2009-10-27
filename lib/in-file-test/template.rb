require 'ruby-debug'

if $0 == __FILE__
  require 'test/unit'
  class InfileTest < Test::Unit::TestCase

    def test_flunking
      assert false
    end
  end
end
