class AnnouncementsController < ApplicationController
  unloadable

  def edit
    if request.post?
      $ANNOUNCEMENT = params[:announcement_content]
      flash[:notice] = l(:notice_successful_create)
      redirect_to :back
    else
      
    end
  end
end
