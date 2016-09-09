class OrdersController < ApplicationController
  def new
    @contact = Contact.new
    @order = Order.new
    contact_id = params[:contact]
    @playtest
  end

  def create
    @contact = Contact.create(
      firstname: params[:firstname],
      lastname: params[:lastname],
      email: params[:email],
      twitter: params[:twitter],
      birth_year: params[:birth_year],
    )
    @order = Order.create(
      contact_id: @contact.id,
      game_id: Game.find_by(name: 'Parallel').id,
      quantity: params[:quantity],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zipcode: params[:zipcode],
      phone: params[:phone],
    )
    redirect_to '/'
  end
end
