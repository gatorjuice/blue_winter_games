class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @playtest = Playtest.new
  end

  def create
    @contact = Contact.new(
      firstname: params[:firstname],
      lastname: params[:lastname],
      email: params[:email],
      twitter: params[:twitter],
      birth_year: params[:birth_year],
    )
    @playtest = Playtest.new()
    if @contact.save
      if params[:played_parallel]
        @playtest.contact_id = @contact.id
        @playtest.game_id = Game.find_by(name: 'Parallel').id
        @playtest.feedback = params[:feedback]
        @playtest.save
      end
    end
    redirect_to '/'
  end
end
