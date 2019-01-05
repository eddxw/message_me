# frozen_string_literal: true

class ChatroomController < ApplicationController
  before_action :require_user
  def index
    @messages = Message.order(:created_at).includes(:user)
  end
end
