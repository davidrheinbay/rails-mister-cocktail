class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show edit update delete]

  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
  end

  def newdesign
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
  end

  def show
    @doses = Dose.all
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit; end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktails_path
  end

  def delete
    @cocktail.delete
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :image_url)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

end
