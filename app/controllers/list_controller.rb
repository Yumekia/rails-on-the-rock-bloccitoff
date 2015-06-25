class ListController < ApplicationController
 def index
     @lists = List.visible_to(current_user).where("posts.created_at > ?", 7.days.ago)
 end
end
