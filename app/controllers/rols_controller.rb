class RolsController < ApplicationController
  layout "admin" 

  def index
  	@rols = Rol.all
  end 
end
