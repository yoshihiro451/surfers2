class TopicsController < ApplicationController
	def new
		@topic = Topic.new
	end
	def create
		@topic = Topic.new(topic_params)
		#binding.pry
		@topic.user_id = current_user.id
		if @topic.save
			redirect_to "/topics/"
		else
			render :new
		end
	end
	def index
		@topics = Topic.all
	end
	def edit
	end
	def show
		 @topic = Topic.find(params[:id])
	end

	private

	def topic_params
		params.require(:topic).permit(:title, :comment, :user_id)
	end
end
