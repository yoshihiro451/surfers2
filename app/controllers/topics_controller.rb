class TopicsController < ApplicationController
	before_action :authenticate_user!, only: [:show, :new, :edit]

	def new
		@topic = Topic.new
	end
	def create
		@topic = Topic.new(topic_params)
		@topic.user_id = current_user.id
		if @topic.save
			redirect_to "/topics/"
		else
			render :new
		end
	end
	def index
		# これいらんかも↓
		#@topics = Topic.all
		#@topic = Topic.find_by_id(params[:id])
		@topics = Topic.page(params[:page]).reverse_order
	end
	def edit
		@topic = Topic.find_by_id(params[:id])
	end
	def update
		@topic = Topic.find(params[:id])
        @topic.update(topic_params)
        redirect_to "/topics/"
	end
	def show
		 @topic = Topic.find_by_id(params[:id])
	end
	def ensure_correct_user
    @topic = Topic.find_by(id:params[:id])
	    if @topic.user_id != @current_user.id
	      flash[:notice] = "権限がありません"
	      redirect_to("/topics/")
	  	end
	end

	private

	def topic_params
		params.require(:topic).permit(:title, :comment, :user_id, :area)
	end
end
