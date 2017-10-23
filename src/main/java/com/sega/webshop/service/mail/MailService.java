package com.sega.webshop.service.mail;

import com.sega.webshop.model.order.Order;

public interface MailService {

    void sendConfirmationEmail(final Order order);
}
