module Destructable
  def destroy(anyobject)
    puts "I will destroy the object"
  end
end

class User
  include Destructable
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end

  def run
    puts "I'm rinning"
  end

  def self.identify_yourself
    puts "Hey I am a class method"
  end

end

class Buyer < User
  def run
    puts "Hey I'm not running and I'm in buyer class"
  end
end

class Seller < User

end

class Admin < User

end

user = User.new("Vladi", "vladi@example.com")
puts "My user's name is #{user.name} and his email is #{user.email}"
user.destroy("myname")
user.name = "John"
user.email = "john@example.com"
puts "My user's new name is #{user.name} and his email is #{user.email}"

buyer = Buyer.new("John Doe", "johndoe@example.com")
buyer.run
seller = Seller.new("John Doe1", "johndoe1@example.com")
seller.run
admin = Admin.new("John Doe2", "johndoe2@example.com")
admin.run

User.identify_yourself
