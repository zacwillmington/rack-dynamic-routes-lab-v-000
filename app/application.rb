require "pry"

class Application

    def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
        item_add = req.path.gsub("/items/", "")
        it = @@items.find do |item|
                item_add == item.name
            end
        binding.pry
        res.status = 200
    elsif !req.path.include?("items")
         resp.write "Route not found"
         rep.status = 404
    else
        resp.write "Item not found"
    end
    resp.finish
    end
end
