require "sinatra"
require "csv"
require_relative "isbn_num.rb"
enable :sessions
require 'rubygems'
require 'aws/s3'
require 'csv'
 load "./local_env.rb" 
def send_data_to_s3_bucket
    AWS::S3::Base.establish_connection!(
    :access_key_id => ENV['S3_KEY'],
     :secret_access_key => ENV['S3_SECRET']  
    )
    file = "myresults.csv" 
    bucket = 'isbnbucket'
    csv = AWS::S3::S3Object.value(file, bucket)
    csv << "some code here to show something being added to the bucket."+ "\n"
    AWS::S3::S3Object.store(File.basename(file), 
        csv, 
        bucket, 
        :access => :public_read)
end

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
erb :csv_num1, locals: {pick: pick}
end

send_data_to_s3_bucket










    
