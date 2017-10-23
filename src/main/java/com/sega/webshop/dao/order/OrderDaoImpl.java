package com.sega.webshop.dao.order;

import com.sega.webshop.dao.AbstractDao;
import com.sega.webshop.model.order.Order;
import com.sega.webshop.model.user.User;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("orderDao")
public class OrderDaoImpl extends AbstractDao<Integer,Order> implements OrderDao {

    public void save(Order order) {
        persist(order);
    }

    private int getOrderId(){
        List<Order> orders = findAll();
        int highestId = 0;
        for (Order order : orders) {
            highestId = order.getId();
        }
        return highestId;
    }

    public Order findById(int orderId) {
        return getByKey(orderId);
    }

    public List<Order> listOfOrders() {
        return findAll();
    }


    @SuppressWarnings("unchecked")
    public List<Order> findByUser(User user){
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("user", user));
        return (List<Order>) criteria.list();
    }


}
