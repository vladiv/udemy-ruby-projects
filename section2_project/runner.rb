require 'pp'
require_relative 'user'

user = User.new 'joe@example.com', 'Joe'

pp user

user.save
