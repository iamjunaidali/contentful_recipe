require './lib/contentful_client'

class Recipe < ApplicationRecord
  def recipes
    ContentfulClient.recipes content_type
  end

  def self.find_recipe(content_id)
    ContentfulClient.recipe content_id
  end
end
