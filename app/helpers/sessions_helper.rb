module SessionsHelper

  def login(member)
    remember_token = Member.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    member.update_attribute(:remember_token, Member.digest(remember_token))
    self.current_member = member
  end

  def logged_in?
    !current_member.nil?
  end

  def current_member=(member)
    @current_member = member
  end
  
  def selected_member
       selected_member=current_member
  end

  def current_member
    remember_token = Member.digest(cookies[:remember_token])
    @current_member ||= Member.find_by(remember_token: remember_token)
  end
  def current_member?(member)
    member== current_member
  end

  def logout
	    current_member.update_attribute(:remember_token,Member.digest(Member.new_remember_token))
	    cookies.delete(:remember_token)
	    self.current_member = nil
  end
    def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.url if request.get?
  end
end
