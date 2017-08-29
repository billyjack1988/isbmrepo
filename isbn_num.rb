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

# def test_for_new_array(isbn_code)
#     new_array = []



         








