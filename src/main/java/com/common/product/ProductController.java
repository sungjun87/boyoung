package com.common.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.common.product.service.dbproduct_Service;

@Controller
public class ProductController {

	@Inject
	dbproduct_Service Service;
	
	@RequestMapping(value="/proKindReg",method = RequestMethod.GET)
	public String productview ()throws Exception {
		System.out.println("여기 타는건 맞지?");
		return "popUp/ProKindReg";
		
	}
	
	@ResponseBody
	@RequestMapping(value="/productKind" , method = RequestMethod.GET)
	public ModelAndView productKind()throws Exception{
		ModelAndView mav = new ModelAndView();
		List<Map<String, Object>> ProKind = Service.getKind();
		mav.setViewName("product/ProKindBoard");
		mav.addObject("ProKind", ProKind);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/KindReg" , method = RequestMethod.POST)
	public Map<String, Object> KindReg(@RequestParam Map<String, Object> params)throws Exception{
		Map<String, Object> result = new HashMap<String, Object>();
		int check = Service.KindReg(params);
		result.put("result", check);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/KindDel", method = RequestMethod.POST)
	public Map<String, Object> KindDel(@RequestParam Map<String, Object> params)throws Exception{
		System.out.println("호출되는겨?");
		Map<String, Object> result = new HashMap<String, Object>();
		int check = Service.KindDel(params);
		result.put("result", check);
		return result;
	}
	
}
