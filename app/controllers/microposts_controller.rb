class MicropostsController < ApplicationController

  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user, only: :destroy

  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_path
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    if @micropost.destroy
      flash[:success] = "Post deleted (bye bye !)"
      redirect_to root_path
    else
      flash[:error] = "Wooops... A problem occured!"
    end
  end

  private
    def correct_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_path if @micropost.nil?
    end

end