class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    ingredient_id = params['dose']['ingredient']
    @dose = Dose.new(description: params["dose"]["description"], cocktail_id: params['cocktail_id'], ingredient_id: params["dose"]["ingredient_id"])
  end
end
