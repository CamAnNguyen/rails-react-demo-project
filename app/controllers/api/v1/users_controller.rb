# frozen_string_literal: true

module Api
  module V1
    # User controller/API
    class UsersController < BaseController
      def index
        render json: User.all
      end

      def create
        user = User.create(user_params)
        render json: user
      end

      def destroy
        User.destroy(params[:id])
      end

      def update
        user = User.find(params[:id])
        user.update_attributes(fruit_params)
        render json: user
      end

      private

      def user_params
        params.require(:user).permit(:id, :name, :email, :encrypted_password)
      end
    end
  end
end