package com.sega.webshop.validator;

import com.sega.webshop.model.user.User;
import com.sega.webshop.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class UserSsoIdValidator implements ConstraintValidator<UserSsoId, String> {

    @Autowired
    private UserService userService;

    public void initialize(UserSsoId constraintAnnotation) {

    }

    public boolean isValid(String sso, ConstraintValidatorContext context) {

        User user;
        try {
            user = userService.findBySso(sso);
        } catch (Exception e) {
            //It is true because no user with specified username/sso has been found.
            return true;
        }
        if (user != null) {
            return false;
        }
        return true;
    }
}
