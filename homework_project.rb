dial_book = {
  "blagoevgrad" => "2700",
  "sofia" => "123",
  "varna" => "1234",
  "burgas" => "1235",
  "plovdiv" => "123456",
  "stara zagora" => "1231",
  "ruse" => "111",
  "sandanski" => "1222",
  "vidin" => "12333",
  "vraca" => "1444"
}

def get_city_names(somehas)
  somehas.each { |k, v| puts k }
end

def get_area_code(somehash, key)
  somehash[key]
end

loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)"

  answer = gets.chomp
  if answer != "Y"
    break
  end

  puts "Which city do you want the are code for?"
  get_city_names(dial_book)
  puts "Enter your selection"
  prompt = gets.chomp

  if dial_book.include?(prompt)
    puts "The are code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "You entered a city name not in the dictionary"
  end
end
