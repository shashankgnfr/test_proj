class EventsController < ApplicationController

	# before_action :owner?, only: %i[edit destroy]



	# def set_user
	# 	#unless @events.user.id == current_user
 #     user_signed_in? && (current_user.id == @event.user_id)
	# 	# end	
	# end







  def index
  	@events = Event.all.order("created_at DESC")
  end


	def new
    @event = Event.new
  end


  def create 
    @event = Event.new(post_params)
    if @event.save
        redirect_to @event
    else
        render 'new'
    end
  end

  def show
  	@event = Event.find(params[:id])
  end



  def update
    @event = Event.find(params[:id])
    if @event.update(post_params)
      redirect_to @event
    else
      render 'edit'
    end
  end



  def edit
    @event = Event.find(params[:id])
  end 	


  def destroy
  	@event = Event.find(params[:id])
 		@event.destroy
  	redirect_to events_path
  end
  



  private


  def post_params
    params.require(:event).permit(:name, :start_date, :end_date, :number)
  end

  # def owner?
	 #  unless current_user == @event.user
	 #    redirect_back fallback_location: root_path, notice: 'User is not owner'
	 #  end
  # end



end
