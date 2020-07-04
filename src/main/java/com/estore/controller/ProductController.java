package com.estore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.estore.dao.CategoryDAO;
import com.estore.dao.ProductDAO;
import com.estore.entity.Category;
import com.estore.entity.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;

	@RequestMapping("/product/list-by-category/{cid}")
	public String listByCategory(Model model, @PathVariable("cid") Integer categoryId) {
		// Category cate = dao.findById(categoryId);
		// List<Product> list = cate.getProducts();
		List<Product> list = dao.findByCategoryId(categoryId); // dung thuc thể ket hop để lấy tat ca san pham theo loai
		model.addAttribute("list", list);
		return "product/list";
	}

	@RequestMapping("/product/list-by-keywords")
	public String listByCategory(Model model, @RequestParam("keywords") String keywords) {

		List<Product> list = dao.findByKeywords(keywords);
		// List<Product> list = dao.findByCategoryId(categoryId); // dung thuc thể ket
		// hop để lấy tat ca san pham theo loai
		model.addAttribute("list", list);
		return "product/list";
	}

	@RequestMapping("/product/detail/{id}")
	public String deTail(Model model, @PathVariable("id") Integer id) {
		Product product = dao.findById(id);
		model.addAttribute("prod", product);
		return "product/detail";
	}

}
