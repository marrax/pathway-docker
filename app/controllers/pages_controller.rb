class PagesController < ApplicationController

  def new
    @message = Message.new
  end

  def home
    @message = Message.new
  end
  
  def create
    @message = Message.new(params[:message])
  
    if @message.valid?
      EnquiryMailer.new_message(@message).deliver
      redirect_to("/home#contact", :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      redirect_to("/home#contact", :alert => "Please complete all fields correctly.")
      #render :new
    end
  end

  def rooms
  end

  def booking
  end

  def breakfast
  end

  def directions
  end

  def home
  end

  def sitemap 
  end

  def terms 
  end


end
