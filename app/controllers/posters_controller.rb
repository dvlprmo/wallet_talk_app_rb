class PostersController < ApplicationController
  def index
    @posters = Poster.all
  end


  def new
    @poster = Poster.new()
  end

  def create 
    Poster.create(params.require(:poster).permit(:name, :imgprofile, :overview))
    redirect_to posters_path
  end 

  def edit
    @poster = Poster.find(params[:id])
  end

  def update
    poster = Poster.find(params[:id])
    poster.update(params.require(:poster).permit(:name, :imgprofile, :overview))

  end

  def delete 

    Poster.find(params[:id]).destroy
    redirect_to poster_path

  end


 
end
