class ChatsController < ApplicationController
	def new
		@topic = Topic.find(params[:topic_id])
		@chat= Chat.new
	end
	def create
		Chat.create(chat_params)
		redirect_to topic_chats_path
	end

	def index
		@topic = Topic.find(params[:topic_id])
		@chat = Chat.page(params[:page]).reverse_order
	end
	def show
	end

	private

	def chat_params
		params.require(:chat).permit(:comment, :user_id).merge(topic_id: params[:topic_id])
	end
end
