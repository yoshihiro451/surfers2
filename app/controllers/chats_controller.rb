class ChatsController < ApplicationController
	before_action :authenticate_user!

	# def new
	# 	# @topic = Topic.find(params[:topic_id])
	#  	@chat = Chat.new
	# end
	def create
		# @chat = Chat.new
		@topic = Topic.find(params[:topic_id])
		@chat = Chat.new(chat_params)
		@chat.topic_id = @topic.id
		@chat.user_id = current_user.id
		# @topic = Topic.find_by_id(params[:id]
		# @topics = Topic.all.order(created_at: :desc)
		if @chat.save
			redirect_to topic_path(params[:topic_id])
		else
			@chats = Chat.all
			render template: "topics/show"
		end
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
