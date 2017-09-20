package com.example.productapp.controller;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.productapp.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productService;

	@RequestMapping(path = "/products")
	public String getProducts(Model model) {
		model.addAttribute("products", productService.getProducts());
		return "product";
	}

	@RequestMapping(path = "/logout")
	public String logout(HttpServletRequest request) throws ServletException {
		request.logout();
		return "/";
	}

}
