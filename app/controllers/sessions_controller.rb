class SessionsController < ApplicationController
   def create
      if ["",nil].include?(params[:name])
         redirect_to '/login'
      else
         session[:name] = params[:name]
         redirect_to '/'
      end
   end

   def destroy
      session.delete :name
   end
end
