class ChatroomController < ApplicationController
  def index
    @messages = Message.order(:created_at).includes(:user)
    @messages2 = Message
                        .select('messages.body, users.username, messages.user_id')
                        .joins(:user)
  end
end
