require "sinatra"
require_relative "isbn_num.rb"
enable :sessions

get "/" do 
    erb :isbn_choice
end

post "/isbn_numbers" do
    isbn_ten = params[:ten]
    isbn_thr = params[:thr]
    # p "#{isbn_ten}this is ten isbn #{isbn_thr}this is thr isbn"
   redirect'/result?ten='+ isbn_ten + '&thr=' + isbn_thr
end

get '/result' do
    isbn_ten = params[:ten]
    isbn_thr = params[:thr]  
    isbn_fuck = isbn_array(isbn_ten)
    p "#{isbn_fuck}this is after calling on func"
    # erb :results, locals:{ten: isbn_ten, thr: isbn_thr}
    # p "#{isbn_ten}this is ten isbn #{isbn_thr}this is thr isbn"
end










    
