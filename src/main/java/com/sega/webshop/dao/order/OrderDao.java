package com.sega.webshop.dao.order;

import com.sega.webshop.model.order.Order;
import com.sega.webshop.model.user.User;

import java.util.List;

public interface OrderDao {

    void save(Order order);

    Order findById(int orderId);

    List<Order> listOfOrders();
    List<Order> findByUser(User user);
}
