class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path, success: '会員登録が完了しました'
        else
            flash.now[:danger] = '会員登録に失敗しました'
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :name)
    end
end
