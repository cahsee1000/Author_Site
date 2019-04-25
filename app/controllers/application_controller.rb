class ApplicationController < ActionController::Base
  before_action :set_blogs, :set_books, :set_events

  helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def set_blogs
    @blogs = Blog.all
  end

  def set_books
    @books = Book.all
  end

  def set_events
    @events = Event.all
  end


end
