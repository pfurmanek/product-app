package com.example.productapp.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class ProductService {
	public List<String> getProducts() {
		return Arrays.asList("iPad", "iPod", "iPhone");
	}
}
