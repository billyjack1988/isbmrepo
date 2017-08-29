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

def isbn_array(isbn_code)
    new_isbn = isbn_code.gsub(/[^0-9a-z]/, '')
        new_array = new_isbn.split("").map(&:to_i)
    isbn_num_sum(new_array)
end

def isbn_num_sum(sum_array)
    sum = sum_array[0] * 1 + sum_array[1] * 2 + sum_array[2] * 3+ sum_array[3] * 4+ sum_array[4] * 5+ sum_array[5] * 6 + sum_array[6] * 7 + sum_array[7] * 8 + sum_array[8] * 9
    checksum = sum%11
        if checksum == isbn_array(sum_array.length - 1).to_i
            true
        elsif checksum == isbn_array(sum_array.length)
            true
        else
            false
        end    
    p checksum
end





















