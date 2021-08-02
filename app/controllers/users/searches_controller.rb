class Users::SearchesController < ApplicationController
  def index
    respond_to do |format| 
      format.turbo_stream do 
        @users = User.where("name LIKE :name", name: "%#{ params[:search_term] }%")
      
        render turbo_stream: turbo_stream.replace( 
          :userListing,
          partial: "users/listing"
        ) 
      end
    end
  end
end
