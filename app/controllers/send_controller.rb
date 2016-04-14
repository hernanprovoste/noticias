class SendController < ApplicationController
  def new
    @send = Send.new
  end

  def create
    @send = Send.new(params[:send])
    @send.request = request
    if @send.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
