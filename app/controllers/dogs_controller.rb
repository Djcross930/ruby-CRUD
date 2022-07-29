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

  def update
    dog = Dog.find_by(id: params[:id])
    dog.name = params[:name] || dog.name
    dog.breed = params[:breed] || dog.breed
    dog.age = params[:age] || dog.age
    dog.save
    render json: dog.as_json
  end

  def destroy
    dog = Dog.find_by(id: params[:id])
    dog.destroy
    render json: {message: "Deleted"}
  end


end