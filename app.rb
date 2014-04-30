require 'sinatra'
require 'sinatra/base'

module Rpack
  class App < Sinatra::Base


    helpers do
      def title
        if @title
          "#{@title}"
        else
          "Welcome."
        end
      end
    end

    # get "/stylesheets/home/index.css" do
    #     scss :styles
    # end

    get "/" do
      # @posts = Post.order("created_at DESC")
      @title = "Welcome."
      erb :"home/index", :format => :html5
    end

    get '/signup' do
      erb :"sign/signup", :format => :html5
    end

    get '/signin' do
      erb :"sign/signin", :format => :html5
    end
end
end