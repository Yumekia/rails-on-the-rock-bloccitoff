class ListsController < ApplicationController
 def index
   @lists = List.visible_to(current_user).where("posts.created_at > ?", 7.days.ago)
 end
 
 def show
   @list = List.find params[:id]
   
 end
end
