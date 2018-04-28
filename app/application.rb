require "pry"

class Application

    def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
        item_add = req.path.gsub("/items/", "")
        item_availiable = @@items.find do |item|
                    item_add == item.name
                end
        if item_availiable == nil
            resp.write "Item not found"
            res.status = 400
        else
        item_availiable.price
        res.status = 200
        end
    elsif !req.path.include?("items")
         resp.write "Route not found"
         rep.status = 404
    end
    resp.finish
    end
end
