require "test/unit"
require "digest"
require "net/http"

class CustomTest < Test::Unit::TestCase

    def test_gethostname
      res = Net::HTTP.get_response(URI(__URI__))
      assert_equal("200", res.code, 'Get hostname endpoint is working.')
    end
    def test_hash_with_random
      res = Net::HTTP.post(URI(__URI__), "random")
      assert_equal("200", res.code, 'Post hash endpoint is working.')
    end  
end