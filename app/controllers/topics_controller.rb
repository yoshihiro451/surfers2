class TopicsController < ApplicationController
	before_action :authenticate_user!, only: [:show, :new, :edit]
	 # before_action :correct_user,   only: [:edit, :update, :destroy]

	def new
		@topic = Topic.new
	end

	#数値かどうかを判定してtrue,falseを返すメソッド
	def integer_string?(str)
        Integer(str)
        true
      rescue ArgumentError
        false
    end

	def create
		@topic = Topic.new(params_int(topic_params))
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
		# @topics = Topic.where
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

	def destroy
		@topic = Topic.find(params[:id])
		@topic.destroy
		redirect_to topics_path
    end

   #  def search
   #  #Viewのformで取得したパラメータをモデルに渡す
   #  @topics = Topic.search(params[:area])
  	# end

  	# def self.search(search)
   #    if search
   #      Topic.where(['content LIKE ?', "%#{search}%"])
   #    else
   #      Topic.all
   #    end
   #  end

	private

	def topic_params
		params.require(:topic).permit(:title, :comment, :user_id, :area)
	end

	def params_int(topic_params)
	    topic_params.each do |key,value|
	      if integer_string?(value)
	        topic_params[key]=value.to_i
	      end
	    end
    end
end
