class DogsController < ApplicationController
  def index
    dog = Dog.all
    render json: Dog.all
  end
  def show
    dog = Dog.find_by(id: params[:id])
    render json: dog.as_json
  end

end