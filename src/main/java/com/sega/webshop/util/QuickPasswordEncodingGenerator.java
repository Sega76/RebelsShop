package com.sega.webshop.util;

import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class QuickPasswordEncodingGenerator {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
			String password = "Sega76";
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			System.out.println(passwordEncoder.encode(password));
		System.out.println('\u20bd');
	}

}
