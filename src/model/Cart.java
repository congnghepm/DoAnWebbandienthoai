package model;

import java.util.HashMap;
import java.util.Map;

public class Cart {

    private HashMap<Integer, Item> cartItems;

    public Cart() {

        cartItems = new HashMap<>();
    }

    public Cart(HashMap<Integer, Item> cartItems) {
        this.cartItems = cartItems;
    }

    public HashMap<Integer, Item> getCartItems() {
        return cartItems;
    }

    public void setCartItems(HashMap<Integer, Item> cartItems) {
        this.cartItems = cartItems;
    }

    //insert to cart
    public  void plusToCart (Integer key, Item item)
    {
        boolean check = cartItems.containsKey(key);
        if(check)
        {
            int quantity_old = item.getQuantity();
            item.setQuantity(quantity_old + 1);
            cartItems.put(key, item);
        }
        else {
            cartItems.put(key, item);
        }
    }
    //sub to cart
    public void subToCart (Integer key, Item item)
    {
        boolean check = cartItems.containsKey(key);
        if(check)
        {
            int quantity_old = item.getQuantity();
            if(quantity_old <=1)
            {
                cartItems.remove(key);
            }
            else {
                item.setQuantity(quantity_old - 1);
                cartItems.put(key, item);
            }
        }
    }
    // remove to cart
    public void removeToCart(Integer key)
    {
        boolean check = cartItems.containsKey(key);
        if(check)
        {
            cartItems.remove(key);
        }
    }
    //count item
    public int countItem()
    {
        return cartItems.size();
    }

    //sum total

    public double totalCart()
    {
        double count = 0;

        for(Map.Entry<Integer, Item> list: cartItems.entrySet())
        {
            count +=list.getValue().getSanPham().getGiaBan() * list.getValue().getQuantity();

        }

        return count;

    }
}
