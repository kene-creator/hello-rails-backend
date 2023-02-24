class Api::V1::MessagesController < ApplicationController
    def index
        @greetings = Message.all
        render json: @greetings
      end
end
