module Api
  module V1
    class MessagesController < ApplicationController
      def index
        @greetings = Message.order('RANDOM()').first
        render json: @greetings
      end
    end
  end
end
