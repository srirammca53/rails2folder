class UpdatesController < ApplicationController
def create
    @register = Register.find(params[:register_id])
    @update = @register.updates.create(params[:update])
    redirect_to register_path(@register)
  end
end
