require "test/unit"
require_relative "../hasher_module"
require "digest"
include Hasher

class CustomTest < Test::Unit::TestCase
    def test_gethostname
      assert_match("HASHER running on", Hasher.gethostname, 'Assertion was true.')
    end
    def test_hash_with_random
      assert_match("96802f5ca01da34534c5bed4b4134d4fd7a58b05e4ed2a382107bec24d77928c", Hasher.hash('djslkjdsqksqm'), 'Assertion was true.')
    end  
end

#Test::Unit::AutoRunner.default_runner = "gtk2"