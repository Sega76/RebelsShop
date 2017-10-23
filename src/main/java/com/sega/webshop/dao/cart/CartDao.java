package com.sega.webshop.dao.cart;

import com.sega.webshop.model.cart.Cart;

public interface CartDao {

    Cart create(Cart cart);
    Cart read(String cartId);
    void update(Cart cart, String cartId);
    void delete(String cartId);
}
