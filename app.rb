require "sinatra"
require "csv"
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
        if isbn_ten == "" 

        else 
             isbn_fuck = isbn_array(isbn_ten)
        end
        if isbn_thr == ""

        else
            isbn_shit = isbn_array_with_13(isbn_thr)
        end
    # p "#{isbn_fuck}this is after calling on func"
    erb :results, locals:{ isbn_num: isbn_fuck, isbn_teen: isbn_shit}
    # p "#{isbn_ten}this is ten isbn #{isbn_thr}this is thr isbn"
end

post '/csv_num' do
    CSV.foreach("input_isbn_file.csv") do |row|
        isbn_csv = size_check(row[1])
        p isbn_csv
    end
erb :csv_num1, locals: {}

  
end










    
