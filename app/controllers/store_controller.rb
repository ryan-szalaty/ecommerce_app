class StoreController < ApplicationController
    def index
        products = File.open("db/products.json", "r+")
        products.write("[")
        JSON.parse(HTTParty.get('https://fakestoreapi.com/products').body).each do |product|
            JSON.dump({
                :id => product["id"],
                :title => product["title"],
                :price => product["price"],
                :image => product["image"],
                :category => product["category"],
                :description => product["description"]
            }, products)
            products.write(",") unless product["id"] == 20
        end
        products.write("]")
        products.close
        @data = JSON.load(File.open("db/products.json", "r"))
    end
    def show
        @id = params[:id]
        @product = JSON.load(File.open("db/products.json", "r"))[@id.to_i - 1]
    end
end
