require "sinatra"
require "csv"
require_relative "isbn_num.rb"
enable :sessions
require 'rubygems'
require 'Aws-sdk'
require_relative "push_to_bucket.rb"



get "/" do 
    erb :isbn_choice
end

post "/isbn_numbers" do
    session[:isbn_ten] = params[:ten]
    session[:isbn_thr] = params[:thr]
    # p "#{isbn_ten}this is ten isbn #{isbn_thr}this is thr isbn"
   redirect'/result'
end

get '/result' do
    if session[:isbn_ten] == "" 

        else 
            isbn_small = isbn_array(session[:isbn_ten])
        end
        if session[:isbn_thr] == ""

        else
            isbn_big = isbn_array_with_13(session[:isbn_thr])
        end
    # p "#{isbn_small}this is after calling on func"
    erb :results, locals:{ isbn_num: isbn_small, isbn_teen: isbn_big}
    # p "#{isbn_ten}this is ten isbn #{isbn_thr}this is thr isbn"
end

post '/csv_num' do
    array = []
    SOB = CSV.read("input_isbn_file.csv")
        SOB.each do |s|
            ass = size_check(s[1])
            array << ass
             end
        count = 0
        array.each do |x|
            SOB[count] << x
            count += 1
        end
        SOB.delete(SOB[0]) 
        # p "#{SOB} yoooooooooooooo"
isbn_csv = []
    CSV.open("myresults.csv", "wb") do |row|
        row << ["item", "isbn", "true or false"]
        SOB.each do |damn|
            row << damn
        end
    end
    pick = CSV.read("myresults.csv")
    connect_to_s3()
erb :csv_num1, locals: {pick: pick}
end












    
