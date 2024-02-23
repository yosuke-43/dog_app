class DogsController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  def index
    @dogs = Dog.all.includes(:dog_size_type).order(dog_size_type_id: :asc)
  end

  def show
    @dog = Dog.includes(:dog_size_type, :dog_country).find(params[:id])
  end
end
