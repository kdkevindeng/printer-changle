package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/printer")
public class IndexController {

	
	@RequestMapping(value = "/print", produces = "application/json")
	@ResponseBody
	public ModelAndView print(FormData record, HttpSession session){
		ModelAndView mv=new ModelAndView("print/print");
		String quanbanzongliang=record.getQuanbanzongliang();
        String[] quanbanzongliang_list=quanbanzongliang.split("\\.");
		mv.addObject("quanbanzongliang_list",quanbanzongliang_list);
		record.setFenshu(quanbanzongliang_list.length+"");
        int quanbanzongliang_sum=0;
        for(String item:quanbanzongliang_list){
            int intitem = Integer.parseInt(item);
            quanbanzongliang_sum=quanbanzongliang_sum+intitem;
        }
        record.setQuanbanzongliang(""+quanbanzongliang_sum);
		mv.addObject("record",record);
		return mv;
	}
	@RequestMapping(value = "/preview", produces = "application/json")
	@ResponseBody
	public ModelAndView preview(FormData record, HttpSession session){
		ModelAndView mv=new ModelAndView("print/preview");
		String quanbanzongliang=record.getQuanbanzongliang();
		String[] quanbanzongliang_list=quanbanzongliang.split("\\.");
		mv.addObject("quanbanzongliang_list",quanbanzongliang_list);
		record.setFenshu(quanbanzongliang_list.length+"");
        int quanbanzongliang_sum=0;
        for(String item:quanbanzongliang_list){
            int intitem = Integer.parseInt(item);
            quanbanzongliang_sum=quanbanzongliang_sum+intitem;
        }
        record.setQuanbanzongliang(""+quanbanzongliang_sum);
		mv.addObject("record",record);
		return mv;
	}

}