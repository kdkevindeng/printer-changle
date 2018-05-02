package ${controllerpackage};

import java.util.List;

import javax.annotation.Resource;

import other.pojo.Page;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import ${servicepackage}.${firstUpModelName}Service;

@RestController
public class ${firstUpModelName}RestController{
	@Resource(name="${firstLowModelName}Service")
	${firstUpModelName}Service ${firstLowModelName}Service;
	
	@RequestMapping(value = "/rest/${allLowModelName}/save", produces = "application/json")
	@ResponseBody
	public int save(${firstUpModelName} record){
		return this.${firstLowModelName}Service.saveSelective(record);
	}
	
	@RequestMapping(value = "/rest/${allLowModelName}/add", produces = "application/json")
	@ResponseBody
	public int add(${firstUpModelName} record){
		return this.${firstLowModelName}Service.insertSelective(record);
	}
	
	@RequestMapping(value = "/rest/${allLowModelName}/delete", produces = "application/json")
	@ResponseBody
	public int delete(String id){
		return this.${firstLowModelName}Service.deleteByPrimaryKey(id);
	}
	
	@RequestMapping(value = "/rest/${allLowModelName}/update", produces = "application/json")
	@ResponseBody
	public int update(${firstUpModelName} record){
		return this.${firstLowModelName}Service.updateByPrimaryKeySelective(record);
	}
	
	@RequestMapping(value = "/rest/${allLowModelName}/query/all", produces = "application/json")
	@ResponseBody
	public List<${firstUpModelName}> query(){
		return this.${firstLowModelName}Service.selectByExample(null, null);
	}
	
	@RequestMapping(value = "/rest/${allLowModelName}/query", produces = "application/json")
	@ResponseBody
	public List<${firstUpModelName}> query(${firstUpModelName} record,Page page){
		return this.${firstLowModelName}Service.selectByExample(record, page);
	}
	
}