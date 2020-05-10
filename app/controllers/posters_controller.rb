class PostersController < ApplicationController
  before_action :authenticate_user!
  
  before_action :set_poster, only: [:show]
  def index
   
  # @posters = Poster.where(id: current_user.id)
   @posters = Poster.all
  end

  
  def new
    @poster = Poster.new()
  end

  def create 
    Poster.create(poster_params)
    redirect_to posters_index_path
  end 

  def edit
    @poster = Poster.find(params[:id])
  end

  def update
    poster = Poster.find(params[:id])
    poster.update(params.require(:poster).permit(:name, :imgprofile, :overview))
    redirect_to posters_path
  end

  def delete 
    Poster.find(params[:id]).destroy
    redirect_to posters_index_path
  end

  private 

  def set_poster
    @poster = Poster.find(params[:id])
  end
  def poster_params
    params.require(:poster).permit(:id, :name, :imgprofile, :overview)
  end 
 
end
