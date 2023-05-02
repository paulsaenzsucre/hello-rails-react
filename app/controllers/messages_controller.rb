class MessagesController < ApplicationController
  before_action :set_message, only: %i[show edit update destroy]

  # GET /messages or /messages.json
  def index; end

  def random
    @random_msg = Message.all.sample

    respond_to do |format|
      format.json { render json: @random_msg }
    end
  end
end
