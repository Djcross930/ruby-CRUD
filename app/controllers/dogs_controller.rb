class DogsController < ApplicationController
  
  def index
    dog = Dog.all
    render json: Dog.all
  end

  def show
    dog = Dog.find_by(id: params[:id])
    render json: dog.as_json
  end

  def create
    dog =Dog.new(
      name: params[:name],
      breed: params[:breed],
      age: params[:age]
    )
    dog.save
    render json: dog.as_json
  end

end