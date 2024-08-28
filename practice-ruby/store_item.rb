# C. Use hashes with symbols to represent the following scenario:
# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).
# Bonus: Read more about Ruby array and hash methods. Explore using different methods in your code.


# food1 = {name: "Apple", color: "red", price: 5, in_stock: false}
# pp food1
# food2 = {name: "Pizza", color: "Multi", price: 9, in_stock: true}
# pp food2
# food3 = {name: "Ice Cream", color: "white", price: 7, in_stock:true }
# pp food3
# food4 = {:name => "Champange", :color => "peach", :price => 12, :in_stock => true}
# pp food4



# Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.
# c) Use the attr_writer method to change a value
# Bonus: Read more about Ruby classes: https://ruby-doc.com/core/Class.html

class Item 
  attr_reader :name
  attr_writer :price

  def initialize(name, color, price, in_stock)
    @name = name 
    @color = color 
    @price = price 
    @in_stock = in_stock
  end
end

food1 = Item.new("Apple", "Red", 5, false)

pp food1.name