package com.common.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {

	
	
	@RequestMapping(value="/productboard",method = RequestMethod.GET)
	public String productview ()throws Exception {
		System.out.println("여기 타는건 맞지?");
		return "prdouct/ProKindReg";
		
	}
}
