require 'socket'
module Hasher
    
    module_function

    def self.hash(hash_str)
        sleep 0.1
        "#{Digest::SHA2.new().update("#{hash_str}")}"
    end
    def self.gethostname
        "HASHER running on #{Socket.gethostname}\n"
    end
end