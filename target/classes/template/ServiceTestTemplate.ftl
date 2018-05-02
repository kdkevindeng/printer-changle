package ${servicepackage};

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.junit.Test;
import base.TestBase;

import other.pojo.Page;
import com.lizhi.utils.StringUtils;

import ${servicepackage}.${firstUpModelName}Service;

public class ${firstUpModelName}ServiceTest extends TestBase {

	@Resource(name="${firstLowModelName}Service")
	${firstUpModelName}Service ${firstLowModelName}Service;

	@Test
	public void saveSelective(){
		${firstUpModelName} record=null;
		int result= this.${firstLowModelName}Service.saveSelective(record);
		
		logger.info("增删改结果："+result);
	}
	
	@Test
	public void insertSelective(){
		${firstUpModelName} record=null;
		int result= this.${firstLowModelName}Service.insertSelective(record);
		
		logger.info("增删改结果："+result);
	}
	
	@Test
	public void deleteByPrimaryKey(){
		String id="";
		int result= this.${firstLowModelName}Service.deleteByPrimaryKey(id);
		logger.info("增删改结果："+result);
	}
	
	@Test
	public void updateByPrimaryKeySelective(){
		${firstUpModelName} record=null;
		int result= this.${firstLowModelName}Service.updateByPrimaryKeySelective(record);
		logger.info("增删改结果："+result);
	}
	
	@Test
	public void selectAll(){
		List<${firstUpModelName}> result= this.${firstLowModelName}Service.selectByExample(null, null);
		
		for(${firstUpModelName} item:result){
			logger.info("查询结果："+item.toString());
		}
	}
	
	@Test
	public void selectByExample(){
		${firstUpModelName} record=null;
		Page page=null;
		List<${firstUpModelName}> result= this.${firstLowModelName}Service.selectByExample(record, page);
		for(${firstUpModelName} item:result){
			logger.info("查询结果："+item.toString());
		}
	}
	
	@Test
	public void countByExample(){
		${firstUpModelName} record=null;
		int result= this.${firstLowModelName}Service.countByExample(record);
		logger.info("个数统计结果："+result);
	}
}