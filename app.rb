require_relative 'config/environment'


class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        new_translation = PigLatinizer.new
        @user_phrase = new_translation.piglatinize(params[:user_phrase])
        erb :piglatinize
    end
end