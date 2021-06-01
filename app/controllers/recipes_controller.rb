class RecipesController < ApplicationController
  def index
    @pagy, @recipes = pagy_array(Recipe.first.recipes, items: 2)
  end

  def show
    @recipe = Recipe.find_recipe(params[:id])
    @chef = @recipe.chef
    @tags = @recipe.tags.map(&:name).join(', ')
  end
end
