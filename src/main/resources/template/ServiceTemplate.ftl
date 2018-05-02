package ${servicepackage};

import java.util.List;

import other.pojo.Page;

public interface ${firstUpModelName}Service{
    /**
     * 删除一条记录
     */
    int deleteByPrimaryKey(String id);

    /**
     * 插入一条记录
     */
    int insertSelective( ${firstUpModelName} record);
    
    /**
     * 按条件查询所有记录
     */
    List< ${firstUpModelName}> selectByExample( ${firstUpModelName} record,Page page);

    /**
     * 查询特定一条记录
     */
     ${firstUpModelName} selectByPrimaryKey(String id);

     /**
      * 修改特定一条记录
      */
     int updateByPrimaryKeySelective( ${firstUpModelName} record);

     /**
      * 保存特定一条记录
      */
     int saveSelective( ${firstUpModelName} record);
    
     /**
      * 查询的时候过滤条件
      */
     void selectFilter(${firstUpModelName}Example.Criteria criteria, ${firstUpModelName}  record);
    
     /**
      * 按条件查询所有记录
      */
     int countByExample( ${firstUpModelName}  record);
}