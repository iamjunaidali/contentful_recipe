class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show]

  def index
    @pagy, @recipes = pagy_array(Recipe.first.recipes, items: 2)
  end

  def show
    set_chef
    set_tags
  end

  private

  def set_chef
    begin
      @chef = @recipe.chef
    rescue Contentful::EmptyFieldError => e
      @chef = nil
    end
  end

  def set_tags
    begin
      @tags = @recipe.tags.map(&:name).join(', ')
    rescue Contentful::EmptyFieldError => e
      @tags = nil
    end
  end

  def set_recipe
    @recipe = Recipe.find_recipe(params[:id])
  end
end
