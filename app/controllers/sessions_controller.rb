class SessionsController < ApplicationController

    def signin
        user = User.where(username: params[:username])
        if !user.nil?
            render :json => { reply: 'exists', user, status: 200, location: user }
        else
            render :json => { reply: 'noexists', user.errors, status: :unprocessable_entity }
        end
    end

    def error 
        render :json =>  { reply: 'denied' }
    end

end
