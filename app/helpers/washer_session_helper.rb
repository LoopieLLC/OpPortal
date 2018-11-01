module WasherSessionHelper
  def log_in(washer)
    session[:washer] = washer.id
  end

  def current_washer
    if session[:washer_id]
      @current_washer ||= Washer.find_by(id: session[:washer_id])
    end
  end

  def log_out
    session.delete(:washer_id)
    @current_washer = nil
  end

  def logged_in?
    !current_user.nil?
  end
end
