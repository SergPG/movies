class MoviesController < ApplicationController
  def index

    # render :index, locals: {categories:, movies: movies }
    respond_to do |format|
      format.html do
        render :index, locals: {categories:, movies: movies }
      end
       format.js { render :index, locals: { movies: movies } }
    end
  end

  def show
    render :show, locals: { movie: }
  end


  private

    def filter_params
      params.permit(:category_id)
    end
   
   def movies
    @movies ||= Movie.where(filter_params)
                     .order(id: :desc)
                     .page(params[:page])
                     
   end

   def movie
    @movie ||= Movie.find(params[:id])
   end

   def categories
    @categories ||= Category.all
   end


end
