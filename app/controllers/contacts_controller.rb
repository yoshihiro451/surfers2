class ContactsController < ApplicationController
	before_action :authenticate_user!
	def new
		@contact = Contact.new
		@contacts = Contact.all
		#@contactshow = Contact.find(params[:id])
	end
	def create
		@contact = Contact.new(contact_params)
		@contact.user_id = current_user.id
		if @contact.save
			redirect_to "/topics/"
		else
			render :new
		end
	end
	#def index
		#@contact = Contact.all
	#end
	def show
		@contact = Contact.find(params[:id])
	end
	def edit
		@contact = Contact.find(params[:id])
	end
	def update
		@contact = Contact.find(params[:id])
		@contact.update(contact_params)
		redirect_to "/topics/"
	end

	private

	def contact_params
		params.require(:contact).permit(:title, :coment, :user_id)
	end
end
