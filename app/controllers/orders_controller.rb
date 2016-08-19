class OrdersController < ApplicationController
  def new
    @contact = Contact.new
    @playtest
  end
end
