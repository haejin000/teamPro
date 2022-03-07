package com.team.controller;

import java.time.LocalDate;

import javax.inject.Inject;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestAttributes;

import com.team.domain.AEventDTO;
import com.team.service.AEventService;

@Controller
public class AEventController {

	@Inject
	private AEventService AEventService;
	
	@RequestMapping(value = "/aEvent/coupon", method = RequestMethod.GET)
	public String List() {
		
		return "aEvent/coupon";
	}
	
	@RequestMapping(value = "/aEvent/newCoupon", method = RequestMethod.GET)
	public String insert() {
		
		return "aEvent/newCoupon";
	}
	
	@RequestMapping(value = "/aEvent/newCouponPro", method = RequestMethod.GET)
	public String insertPro(AEventDTO aDTO) {
		
		String type = aDTO.getType();
		if (type.equals("1")) {
			aDTO.setDiscountPer(Integer.parseInt(aDTO.getBenefit()));
		}else if(type.equals("2")) {
			aDTO.setDiscountNum(Integer.parseInt(aDTO.getBenefit()));
		}else if(type.equals("3")) {
			aDTO.setGift(Integer.parseInt(aDTO.getBenefit()));
		}
		
		AEventService.insertCoupon(aDTO);
		return "redirect:/aEvent/coupon";
	}
	
	
}
