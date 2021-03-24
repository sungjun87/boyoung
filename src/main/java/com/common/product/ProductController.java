package com.common.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
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
		Map<String, Object> result = new HashMap<String, Object>();
		int check = Service.KindDel(params);
		result.put("result", check);
		return result;
	}
	
	@RequestMapping(value="/AccountBoard", method = RequestMethod.GET)
	public ModelAndView AccountBoard() throws Exception{
		ModelAndView mav = new ModelAndView();
		List<Map<String, Object>> Account = Service.getAccount();
		mav.setViewName("product/AccountBoard");
		mav.addObject("Account", Account);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/AccountReg", method = RequestMethod.POST)
	public Map<String, Object> AccountReg(@RequestParam Map<String, Object> params) throws Exception{
		Map<String, Object> result = new HashMap<String, Object>();
		int check = Service.AccountReg(params);
		result.put("result", check);
		return result;
	}
	@RequestMapping(value="/AccountRegPopup", method = RequestMethod.GET)
	public ModelAndView AccountRegPopup() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("popUp/AccountReg");
		return mav;
	}
	@ResponseBody
	@RequestMapping(value="/AccountDel" , method = RequestMethod.POST)
	public Map<String, Object> AccountDel(@RequestParam Map<String, Object>params) throws Exception{
		Map<String, Object> result = new HashMap<String, Object>();
		int check = Service.AccountDel(params);
		result.put("result", check);
		return result;
	}
	
	@RequestMapping(value="/orderDraft" , method = RequestMethod.GET)
	public ModelAndView orderDraft() throws Exception{
		ModelAndView mav = new ModelAndView();
		Map<String, Object> result = new HashMap<String, Object>();
		mav.setViewName("product/OrderDraftBoard");
		return mav;
	}
}
