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