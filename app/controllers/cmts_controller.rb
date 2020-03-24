class CmtsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @cmt = @event.cmts.create(comment_params)
    redirect_to event_path(@event)
  end
 
  private
    def comment_params
      params.require(:cmt).permit(:commenter, :body)
    end

end
