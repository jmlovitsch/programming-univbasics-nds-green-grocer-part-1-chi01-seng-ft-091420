# let(:items) do
#     [
#       {:item => "AVOCADO", :price => 3.00, :clearance => true},
#       {:item => "KALE", :price => 3.00, :clearance => false},
#       {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
#       {:item => "ALMONDS", :price => 9.00, :clearance => false},
#       {:item => "TEMPEH", :price => 3.00, :clearance => true},
#       {:item => "CHEESE", :price => 6.50, :clearance => false},
#       {:item => "BEER", :price => 13.00, :clearance => false},
#       {:item => "PEANUTBUTTER", :price => 3.00, :clearance => true},
#       {:item => "BEETS", :price => 2.50, :clearance => false},
#       {:item => "SOY MILK", :price => 4.50, :clearance => true}
#     ]
#   end

def find_item_by_name_in_collection(name, collection)
  index = 0

  collection.each do |grocery_item|
    return grocery_item if grocery_item[:item] == name 
    index += 1
  end

  nil
end
  # Implement me first!
  #
  # Consult README for inputs and outputs

  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

def consolidate_cart(cart)
  index = 0
  new_cart = []
  
  cart.each do |grocery_item|
    current_item = find_item_by_name_in_collection(grocery_item[:item], new_cart)
    if current_item
      new_cart_index = 0
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] == current_item[:item]
          new_cart_item[:count] += 1
        end
        new_cart_index += 1
      end
    else
      grocery_item[:count] = 1
      new_cart << grocery_item
    end
    index += 1
  end
  new_cart
end


  