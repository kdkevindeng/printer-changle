package ${servicepackage};

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import other.pojo.Page;
import org.springframework.stereotype.Service;

import com.lizhi.utils.StringUtils;

import ${servicepackage}.${firstUpModelName}Service;

@Service("${firstLowModelName}Service")
public class ${firstUpModelName}ServiceImpDefault implements ${firstUpModelName}Service {

	@Resource(name = "${firstLowModelName}Mapper")
	private ${firstUpModelName}Mapper ${firstLowModelName}Mapper;

	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		int result=0;
		if(!StringUtils.isNull(id)){
			result=this.${firstLowModelName}Mapper.deleteByPrimaryKey(id);
		}
		return result;
	}

	public int insertSelective(${firstUpModelName} record) {
		// TODO Auto-generated method stub
		int result=0;
		if(record!=null&&!StringUtils.isNull(record.getId())){
			result=this.${firstLowModelName}Mapper.insertSelective(record);
		}
		return result;
	}



    public List< ${firstUpModelName}> selectByExample( ${firstUpModelName} record,Page page) {
		// TODO Auto-generated method stub
		List<${firstUpModelName}> result=null;
		${firstUpModelName}Example example=new ${firstUpModelName}Example();
		${firstUpModelName}Example.Criteria criteria = example.createCriteria();
		if(page!=null){
			if(page.getStartLimit()>=0&&page.getEndLimit()>0){
				example.setLimitStart(page.getStartLimit());
				example.setLimitEnd(page.getEndLimit());
			}
		}
		this.selectFilter(criteria,record);
		result=this.${firstLowModelName}Mapper.selectByExample(example);
		return result;
	
	}
	
	public ${firstUpModelName} selectByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		${firstUpModelName} result=null;
		if(!StringUtils.isNull(id)){
			result=this.${firstLowModelName}Mapper.selectByPrimaryKey(id);
		}
		return result;
	}

	public int updateByPrimaryKeySelective(${firstUpModelName} record) {
		// TODO Auto-generated method stub
		int result=0;
		if(record!=null&&!StringUtils.isNull(record.getId())){
			result=this.${firstLowModelName}Mapper.updateByPrimaryKeySelective(record);
		}
		return result;
	}

	public int saveSelective(${firstUpModelName} record) {
		// TODO Auto-generated method stub
		int result=0;
		if(record!=null){
			if(!StringUtils.isNull(record.getId())){
				result=this.${firstLowModelName}Mapper.updateByPrimaryKeySelective(record);
			}else{
				record.setId(UUID.randomUUID().toString());
				result=this.${firstLowModelName}Mapper.insertSelective(record);
			}
		}
		return result;
	}
	
	public void selectFilter(${firstUpModelName}Example.Criteria criteria, ${firstUpModelName}  record){
		//具体实现可以让子类重写该方法，默认无过滤
	}
	
	public int countByExample(${firstUpModelName} record) {
		// TODO Auto-generated method stub
		${firstUpModelName}Example example=new ${firstUpModelName}Example();
		${firstUpModelName}Example.Criteria criteria = example.createCriteria();
		this.selectFilter(criteria,record);
		return this.${firstLowModelName}Mapper.countByExample(example);
	}
}