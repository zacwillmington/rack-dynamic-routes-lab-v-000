require "pry"

class Application
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.match(/items/)
        binding.pry
    end
end
