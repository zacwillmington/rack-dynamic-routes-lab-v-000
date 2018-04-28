require "pry"

class Application

    def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    #binding.pry
    if req.path.match(/items/)
        #binding.pry
    else
        resp.write "Item not found"
        # resp.write "Route not found"
        # rep.status = 404
    end
    resp.finish
    end
end
