class Users::SearchController < ApplicationController
  def index
    respond_to do |format| 
      format.turbo_stream do 
        @users = UserService.find_users(params[:search_term])
      
        render turbo_stream: turbo_stream.replace( 
          :users,
          partial: "users"
        ) 
      end
    end
  end
end
