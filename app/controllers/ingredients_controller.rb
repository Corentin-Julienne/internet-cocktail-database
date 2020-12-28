class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(strong_params)
    @ingredient.save

    redirect_to ingredient_path(@ingredient)
  end

  private

  def strong_params
    params.require(:ingredient).permit(:name)
  end
end
