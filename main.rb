# encoding: utf-8

# Программа "Ищем в строке хэштеги".
# Вывод версии программы.
VERSION = 2.0
puts  "Программа \"Ищем в строке хэштеги\". Версия #{VERSION}."

require_relative "lib/hashtag"

puts "Введите строку с хэштегами:"
user_input = STDIN.gets.encode("UTF-8").chomp

hashtags = Hashtag.find_hashtag(user_input)

puts "\nНашли вот такие хэштеги: #{hashtags.join(" ,")}"
