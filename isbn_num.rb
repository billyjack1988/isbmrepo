def empty
    []
end

def len(isbn_num)
    if isbn_num.length == 10
        true
    elsif isbn_num.length == 13
        true
    else
        false
    end
end

def len_13(isbn_num)
       if isbn_num.length == 13
        true
    elsif isbn_num.length == 17
        true
    else
        false
    end
end

def dash_remover(isbn_code)
    p isbn_code.gsub(/[^0-9a-z]/, '')
end

def dash_len_10(isbn_code)
new_isbn = isbn_code.gsub(/[^0-9a-z]/, '')
    if new_isbn.length == 10
        true
    else
        false
    end
end

def dash_len_13_and_10(isbn_code)
new_isbn = isbn_code.gsub(/[^0-9a-z]/, '')
    if new_isbn.length == 13
        true
    elsif new_isbn.length == 10
        true
    else
        false
    end
end

def size_check(x)
    size_isbn = x.gsub(/[^0-9x]/, '')
    # p "#{size_isbn}size befor test for lenght"
        if size_isbn.length == 10
            isbn_array(x)
        elsif size_isbn.length == 13
            isbn_array_with_13(x)
        else 
            "invaild" 
        end
end


def key_checker_ten(isbn_code)
	arr = isbn_code.split(//)
	true_arr = []
	valid_keys = ["0","1","2","3","4","5","6","7","8","9","x","X","-"," "]
	arr.each do |x|
		if valid_keys.include?(x)
			true_arr << true
		else
			true_arr << false
		end
	end
    if true_arr.include?(false)
		false
	else
		true
	end

end

def key_checker_thr(isbn_code)
    arr = isbn_code.split(//)
    true_arr = []	
	valid_keys = ["0","1","2","3","4","5","6","7","8","9","-"," "]
	arr.each do |x|
		if valid_keys.include?(x)
			true_arr << true
		else
			true_arr << false
		end
	end
	if true_arr.include?(false)
		false
	else
		true
	end
end

def isbn_array(isbn_code)
    if key_checker_ten(isbn_code) == true
       new_isbn = isbn_code.gsub(/[^0-9a-z]/, '') 
    #    p "#{new_isbn.class} this is new isbn"
       new_array = new_isbn.split("")
       last = new_array.slice!(-1)
       if new_array.include?("x")
           false 
        elsif new_array.include?("X")
            false
        else 
            new_array << last
        end
            isbn_num_sum(new_array)
        else 
            "invaild"
    end
end

def isbn_num_sum(new_array)
    sum = new_array[0].to_i * 1 + new_array[1].to_i * 2 + new_array[2].to_i * 3 + new_array[3].to_i * 4 + new_array[4].to_i * 5 + new_array[5].to_i * 6 + new_array[6].to_i * 7 + new_array[7].to_i * 8 + new_array[8].to_i * 9
    checksum = sum%11
        if checksum == 10
            checksum = "x"
        end
        # p "#{new_array} this is the new array before turn to checksum"
        if checksum.to_s == new_array[new_array.length - 1]
            # p "#{checksum} yooo loooooook er"
            true
        elsif checksum == "x"
            true
        else
            false
        end    

end

def isbn_array_with_13(isbn_code)
    if key_checker_thr(isbn_code) == true
        yep_isbn = isbn_code.gsub(/[^0-9]/, '')
        new_array = yep_isbn.split("").map(&:to_i)
        isbn_num_sum_with_13(new_array)
    else
        "invaild"
    end

end

def isbn_num_sum_with_13(thr_array)
    sum_13 = thr_array[0] * 1 + thr_array[1] * 3 + thr_array[2] * 1 + thr_array[3] * 3 + thr_array[4] * 1 + thr_array[5] * 3 + thr_array[6] * 1 + thr_array[7] * 3 + thr_array[8] * 1 + thr_array[9] * 3 + thr_array[10] * 1 + thr_array[11] * 3
    checksum = sum_13 % 10
    x = 10 - checksum
    final_sum = x % 10
    #p final_sum
    if final_sum == thr_array[thr_array.length - 1]
        true
    else
        false
    end   
end

























