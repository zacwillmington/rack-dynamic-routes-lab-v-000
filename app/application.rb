require "pry"

class Application
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    binding.pry
end
