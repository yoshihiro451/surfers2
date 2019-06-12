class UsersController < ApplicationController
	def show
		 @user = User.find(params[:id])
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = '会員情報が更新されました。'
      redirect_to user_path(@user.id)
    else
        flash[:danger] = '必要項目を入力してください。'
        render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    #if current_user.admin?
      #redirect_to users_path
    #else
      flash[:notice] = '退会しました。ご利用ありがとうございました。'
      #redirect_to root_path
    #end
  end
end
