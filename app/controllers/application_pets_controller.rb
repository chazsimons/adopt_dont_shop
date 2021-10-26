class ApplicationPetsController < ApplicationController

  def create
    application = Application.find(params[:id])
    application.pets << Pet.find(params[:pet_id])
    redirect_to "/applications/#{application.id}"
  end
end
