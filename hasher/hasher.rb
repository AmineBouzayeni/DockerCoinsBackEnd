require 'digest'
require 'sinatra'
require 'socket'
require_relative "hasher_module"
include Hasher


set :bind, '0.0.0.0'
set :port, 80

post '/' do
    content_type 'text/plain'
    Hasher.hash(request.body.read)
end

get '/' do
    Hasher.gethostname
end