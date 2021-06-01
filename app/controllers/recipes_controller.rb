class RecipesController < ApplicationController
  def index
    @recipes = Recipe.first.recipes
  end

  def show
    @recipe = Recipe.find_recipe(params[:id])
    @chef = @recipe.chef
    @tags = @recipe.tags.map(&:name).join(', ')
  end
end
