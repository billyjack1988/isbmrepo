require "sinatra"
require_relative "isbn_num.rb"

get "/" do 
    erb :isbn_choice
end

post