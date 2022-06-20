class StoreController < ApplicationController
  def index
    products = File.open("db/products.json", "r+")
    products.write("[")
    begin
      api_call = JSON.parse(HTTParty.get("https://fakestoreapi.com/products").body)
    rescue
      @error = "ERROR"
    end
    unless @error
      api_call.each do |product|
        JSON.dump({
          :id => product["id"],
          :title => product["title"],
          :price => product["price"],
          :image => product["image"],
          :category => product["category"],
          :description => product["description"],
        }, products)
        products.write(",") unless product["id"] == 20
      end
      products.write("]")
      products.close
    end
    if @error
      @data = @error
    else
      @data = JSON.load(File.open("db/products.json", "r"))
    end
  end

  def show
    @id = params[:id]
    @product = JSON.load(File.open("db/products.json", "r"))[@id.to_i - 1]
  end
end
