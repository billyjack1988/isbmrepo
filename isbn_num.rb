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

# def isbn_array(isbn_code)
#     new_isbn = isbn_code.gsub(/[^0-9a-z]/, '')
#         new_array = new_isbn.split("").map(&:to_i)
#     isbn_num_sum(new_array)
# end

# def isbn_num_sum(new_array)
#     sum = new_array[0] * 1 + new_array[1] * 2 + new_array[2] * 3+ new_array[3] * 4+ new_array[4] * 5+ new_array[5] * 6 + new_array[6] * 7 + new_array[7] * 8 + new_array[8] * 9
#     checksum = sum%11
#         if checksum == 10
#             checksum = "x"
#         end
#         if checksum == new_array[new_array.length - 1]
#             true
#         elsif checksum == "x"
#             true
#         else
#             false
#         end    

# end

def isbn_array_with_13(isbn_code)
    13_isbn = isbn_code.gsub(/[^0-9]/, '')
        new_array = 13_isbn.split("").map(&:to_i)
    isbn_num_sum_with_13(13_array)
end

def isbn_num_sum_with_13(13_array)
    sum_13 = 13_array[0] * 1 + 13_array[1] * 3 + 13_array[2] * 1 + 13_array[3] * 3 + 13_array[4] * 1 + 13_array[5] * 3 + 13_array[6] * 1 + 13_array[7] * 3 + 13_array[8] * 1 + 13_array[9] * 3 + 13_array[10] * 1 + 13_array[11] * 3
    checksum = sum_13 % 10
    x = 10 - checksum
    final_sum = x % 10
    p final_sum
end

























