class ContactsController < ApplicationController

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        ContactMailer.contact_email(@contact).deliver_later
        format.html { redirect_to new_contact_path, notice: 'Thanks for the message!' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end
end
