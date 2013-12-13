require 'bundler'
Bundler.require

module IrishEnglish
  class App < Sinatra::Application

    get '/' do
      erb :index
    end

    get '/quiz' do
      erb :quiz
    end

    # get '/:form_type' do
    #   erb params[:form_type].to_sym
    # end 

    # post '/:form_type' do
    #   erb :results
    # end
  end
end



#     #helpers
#     helpers do
#       def partial(file_name)
#         erb file_name, :layout => false
#       end

