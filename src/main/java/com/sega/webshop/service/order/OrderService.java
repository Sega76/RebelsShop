package com.sega.webshop.service.order;

import com.sega.webshop.model.order.Order;
import com.sega.webshop.model.user.User;

import java.util.List;

public interface OrderService {
//    void processOrder(String productId, long quantity);
//
//    int saveOrder(Order order);

    void save(Order order);

    Order findById(int orderId);

    List<Order> listOfOrders();
    List<Order> findByUser(User user);
}
