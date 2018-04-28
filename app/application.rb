require "pry"

class Application

    def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    binding.pry

    if req.path.match(/items/)
        #binding.pry
    elsif !req.path.include?("items")
        # resp.write "Route not found"
        # rep.status = 404
    else
        resp.write "Item not found"
    end
    resp.finish
    end
end
