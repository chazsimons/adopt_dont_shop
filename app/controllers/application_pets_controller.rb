class ApplicationPetsController < ApplicationController

  def create
    application = Application.find(params[:id])
    application.pets << Pet.find(params[:pets_id])
    redirect_to "/applications/#{application.id}"
  end
end
