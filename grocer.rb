def consolidate_cart(cart)
  full_cart = Hash.new
    keycount = "blank"
  cart.map() do |item|
  item.reduce(full_cart) do |memo, (key,value)|
  
    num = 1 
    if (key == keycount)
      full_cart[key][:count] = num + 1 
      num += 1
    else
      num = 1
      full_cart[key] = value
      full_cart[key][:count] = num
      keycount = key
      
    end
    end
    
  end
  puts full_cart
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

cart =     [
      {"AVOCADO" => {:price => 3.00, :clearance => true }},
      {"AVOCADO" => {:price => 3.00, :clearance => true }},
      {"KALE"    => {:price => 3.00, :clearance => false}}
    ]
consolidate_cart(cart)