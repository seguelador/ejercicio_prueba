class PagesController < ApplicationController
  def inicio
  end

  def save_user
  	@name = params[:name]
  	@email = params[:email]
  	@age = params[:age]
  	@user = User.new(name: @name, email: @email, age: @age)
  	if @user.save
  		@response = "Se ha guardado los datos correctamente"
  	else
  		@response = "Ocurrió un error al intentar guardar"  		
  	end
  end

  def landing
  	render layout: "layout2"
  end
end