class ChatsController < ApplicationController
	before_action :authenticate_user!

	# def new
	# 	# @topic = Topic.find(params[:topic_id])
	#  	@chat = Chat.new
	# end
	def create
		# @chat = Chat.new
		@chat = Chat.new(chat_params)
		@chat.topic_id = params[:topic_id]
		@chat.user_id = current_user.id
		@chat.save!
		# binding.pry
		# @chats = Chat.all
		# @topic = Topic.find(params[:topic_id])
		redirect_to topic_path(params[:topic_id])
	end

	def index
		# @chat = Chat.new
		# @chats = Chat.all
		# # @chat.save
		#  # redirect_to topic_chats_path
		# # @chat = Chat.create(chat_params)
		# #@chat= Chat.new(chat_params)
		# #redirect_to topic_chats_path
		# #@chat = Chat.page(params[:page]).reverse_order
		# @topic = Topic.find(params[:topic_id])
	end

	def show
	end

	private

	def chat_params
		# params.require(:chat).permit(:comment, :user_id).merge(topic_id: params[:topic_id])
		params.require(:chat).permit(:comment, :user_id,:topic_id)
	end
end
