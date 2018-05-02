package ${controllerpackage};

import java.util.List;

import javax.annotation.Resource;

import other.pojo.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ${servicepackage}.${firstUpModelName}Service;

@Controller
public class ${firstUpModelName}JspController {
	@Resource(name="${firstLowModelName}Service")
	${firstUpModelName}Service ${firstLowModelName}Service;
	
	@RequestMapping(value = "/jsp/${allLowModelName}/save")
	public ModelAndView save(${firstUpModelName} record){
		int result= this.${firstLowModelName}Service.saveSelective(record);
		return this.query();
	}
	
	@RequestMapping(value = "/jsp/${allLowModelName}/add")
	public ModelAndView add(${firstUpModelName} record){
		int result= this.${firstLowModelName}Service.insertSelective(record);
		return this.query();
	}
	@RequestMapping(value = "/jsp/${allLowModelName}/delete")
	public ModelAndView delete(String id){
		int result=this.${firstLowModelName}Service.deleteByPrimaryKey(id);
		return this.query();
	}
	@RequestMapping(value = "/jsp/${allLowModelName}/update")
	public ModelAndView update(${firstUpModelName} record){
		ModelAndView mv=new ModelAndView();
		int result=this.${firstLowModelName}Service.updateByPrimaryKeySelective(record);
		return this.query();
	}
	@RequestMapping(value = "/jsp/${allLowModelName}/query/all")
	public ModelAndView query(){
		ModelAndView mv=new ModelAndView("show");
		List<${firstUpModelName}> result =  this.${firstLowModelName}Service.selectByExample(null, null);
		mv.addObject("result", result);
		return mv; 
	}
	@RequestMapping(value = "/jsp/${allLowModelName}/query")
	public ModelAndView query(${firstUpModelName} record,Page page){
		ModelAndView mv=new ModelAndView("show");
		List<${firstUpModelName}> result = this.${firstLowModelName}Service.selectByExample(record, page);
		mv.addObject("result", result);
		return mv; 
	}
	
}