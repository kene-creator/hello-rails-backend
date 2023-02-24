module Api
  module V1
    class MessagesController < ApplicationController
      def index
        @greetings = Message.all
        render json: @greetings
      end
    end
  end
end
