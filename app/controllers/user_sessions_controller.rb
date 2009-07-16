class UserSessionsController < ApplicationController
  
  def new
    session['referer'] = request.env['HTTP_REFERER'] if request.env['HTTP_REFERER'] && request.env['HTTP_REFERER'].match(home_url)
  end


  def create
    return redirect_to(sign_url) unless params[:login] && params[:pass]
    
    logger.info(params[:login])
    
    @user = User.find_by_user_login_and_user_pass(params[:login], Digest::MD5.hexdigest(params[:pass]))
    
    logger.info(@user.inspect)
    
    if @user
      logger.info(@user.inspect)
      flash[:notice] = "Sign in successful"
      redirect_to session['referer']
    else
      render :action => :new
    end
    
  end


  def destroy
    current_user_session.destroy
    flash[:notice] = "Sign out successful!"
    redirect_back_or_default home_url
  end

end