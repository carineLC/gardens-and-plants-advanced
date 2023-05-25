class PlantTagsController < ApplicationController
  def new
    @plant_tag = PlantTag.new
    @plant = Plant.find(params[:plant_id])
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new(plant_tags_params)
    @plant_tag.plant_id = @plant.id
    # @plant_tag.plant = @plant
    @plant_tag.save
  end

  private

  def plant_tags_params
    params.require(:plant_tag).permit(:tag_id)
  end
end
