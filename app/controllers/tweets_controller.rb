class TweetsController < ApplicationController

    get '/tweets' do
    #   binding.pry
        if logged_in?    
            @tweets = Tweet.all 
            @user = current_user
            erb :"tweets/tweets"
        else
            redirect to "/login"
        end
    end

    get '/tweets/new' do
        
        if logged_in?
            @user = current_user
            erb :"tweets/new"
        else 
            redirect to "/login"
        end
    end

    post '/tweets' do
        
    end


end
