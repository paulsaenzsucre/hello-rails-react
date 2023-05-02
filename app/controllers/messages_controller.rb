class MessagesController < ApplicationController
  @last_msg_id = 0
  before_action :set_message, only: %i[show edit update destroy]

  # GET /messages or /messages.json
  def index; end

  def random
    begin
      @random_msg = Message.all.sample
    end until @last_msg_id != @random_msg.id

    @last_msg_id = @random_msg.id
    
    respond_to do |format|
      format.json { render json: @random_msg }
    end
  end
end
