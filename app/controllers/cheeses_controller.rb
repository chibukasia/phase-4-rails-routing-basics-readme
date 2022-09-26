class CheesesController < ApplicationController

    def index
        cheeses = Cheese.all 
        render json: cheeses
    end

    def highest
        cheeses = Cheese.order("price DESC").limit(1) 
        render json: cheeses
    end
end
