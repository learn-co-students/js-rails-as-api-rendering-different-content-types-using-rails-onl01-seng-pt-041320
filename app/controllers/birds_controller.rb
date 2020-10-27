class BirdsController < ApplicationController
  def index
    birds = Bird.all
    # render 'birds/index.html.erb'
    # render json: birds
    render json: {birds: birds, messages: ["Hello Birds", "Goodbye Birds"]}.to_json

    # renders plain text
    # render plain: "Hello #{@birds[3].name}"

    # redners strings json
    # render json: "Remember that JSON is just object notation converted to string data, so strings also work here"

    # can pass hashes, arrays and data types
    # render json: {message: "Hashes of data will get converted to JSON"}
    # render json: ["As", "well", "as", "arrays"]
  end
end
