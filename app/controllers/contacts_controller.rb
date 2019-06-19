class ContactsController < ApplicationController
	before_action :authenticate_user!
	def new
		@contact = Contact.new
		if current_user.admin
			contacts = Contact.all
		else
			contacts = Contact.where(user_id: current_user.id)
		end
		@contacts = contacts.page(params[:page]).reverse_order
		#@contactshow = Contact.find(params[:id])
	end
	def create
		@contact = Contact.new(contact_params)
		@contact.user_id = current_user.id
		if @contact.save
			redirect_to new_contact_path
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
	def destroy
		@contact = Contact.find(params[:id])
		@contact.destroy
		redirect_to new_contact_path
	end

	private

	def contact_params
		params.require(:contact).permit(:title, :coment, :user_id)
	end
end
