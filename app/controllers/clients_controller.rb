class ClientsController < ApplicationController
  layout "admin" 

  def index
  	@clients = Client.all
  end 
end
